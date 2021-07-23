package az.techstore.repository.impl;

import az.techstore.domain.Notification;
import az.techstore.domain.NotificationStatus;
import az.techstore.domain.NotificationType;
import az.techstore.repository.NotificationRepository;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.sql.*;
import java.util.List;
import java.util.Optional;

import static az.techstore.repository.SqlQuery.*;

@Repository
public class NotificationRepositoryImpl implements NotificationRepository {

    private static final Logger logger  = Logger.getLogger(NotificationRepositoryImpl.class);

    @Autowired
    private JdbcTemplate jdbcTemplate;
    private NotificationRowMapper notificationRowMapper = new NotificationRowMapper();

    @Transactional
    @Override
    public Notification addNotification(Notification notification) {
        KeyHolder keyHolder = new GeneratedKeyHolder();
        jdbcTemplate.update( new PreparedStatementCreator(){
            @Override
            public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
                PreparedStatement ps = con.prepareStatement(ADD_NOTIFICATION, Statement.RETURN_GENERATED_KEYS);
                ps.setString(1, notification.getFrom());
                ps.setString(2, notification.getTo());
                ps.setInt(3, notification.getType().getType());
                ps.setString(4, notification.getContent());
                if (notification.getType() == NotificationType.EMAIL) {
                    ps.setString(5, notification.getSubject());
                } else {
                    ps.setNull(5, Types.VARCHAR);
                }
                ps.setString(6, notification.getSource());
                return ps;
            }
        }, keyHolder);

        notification.setId(keyHolder.getKey().longValue());
        return notification;
    }

    @Override
    public List<Notification> getPendingNotifications(NotificationType notificationType, int limit) {
        Object[] params = new Object[] {notificationType.getType(), limit};
        List<Notification> pendingNotifications = jdbcTemplate.query(GET_PENDING_NOTIFICATIONS, params, notificationRowMapper);
        return pendingNotifications;
    }

    @Override
    public Notification updateNotification(Notification notification) {
        Object[] params = new Object[] {notification.getNotificationStatus().getStatus(),
                notification.getLogData(), notification.getId()};
        int count = jdbcTemplate.update(UPDATE_NOTIFICATION, params);
        logger.info("updated notification count = " + count);
        return notification;
    }

    @Override
    public Optional<Notification> getNotificationById(long id) {
        Optional<Notification> optionalNotification = Optional.empty();
        Object[] params = new Object[] {id};
        List<Notification> notificationList = jdbcTemplate.query(GET_PENDING_NOTIFICATIONS, params, notificationRowMapper);
        if (!notificationList.isEmpty()) {
            optionalNotification = Optional.of(notificationList.get(0));
        }
        return optionalNotification;
    }

    private class NotificationRowMapper implements RowMapper<Notification> {
        @Override
        public Notification mapRow(ResultSet rs, int rowNum) throws SQLException {
            Notification notification = new Notification();

            notification.setId(rs.getLong("id"));
            notification.setFrom(rs.getString("from"));
            notification.setTo(rs.getString("to"));
            notification.setSubject(rs.getString("subject"));
            notification.setContent(rs.getString("content"));
            notification.setNotificationStatus(NotificationStatus.from(rs.getInt("process_status")));
            notification.setType(NotificationType.from(rs.getInt("type")));
            notification.setLogData(rs.getString("log_data"));
            notification.setSource(rs.getString("source_system"));
            notification.setInsertDate(rs.getTimestamp("idate").toLocalDateTime());
            if (rs.getTimestamp("udate") != null) {
                notification.setLastUpdate(rs.getTimestamp("udate").toLocalDateTime());
            }
            notification.setStatus(rs.getInt("status"));
            return notification;
        }
    }
}
