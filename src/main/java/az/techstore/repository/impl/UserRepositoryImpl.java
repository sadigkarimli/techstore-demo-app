package az.techstore.repository.impl;

import az.techstore.domain.Role;
import az.techstore.domain.User;
import az.techstore.exception.RoleNotAddedException;
import az.techstore.repository.NotificationRepository;
import az.techstore.repository.UserRepository;
import az.techstore.repository.impl.rowmapper.RoleRowMapper;
import az.techstore.repository.impl.rowmapper.UserRowMapper;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.sql.*;
import java.util.List;
import java.util.Optional;

import static az.techstore.repository.SqlQuery.*;
@Repository
public class  UserRepositoryImpl implements UserRepository {
    Logger logger = Logger.getLogger(UserRepositoryImpl.class);

    @Autowired
    UserRowMapper userRowMapper;

    @Autowired
    RoleRowMapper roleRowMapper;

    @Autowired
    private NotificationRepository notificationRepository;

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public User addUser(User user) {
        try {
            KeyHolder keyHolder = new GeneratedKeyHolder();
            jdbcTemplate.update(con -> {
                PreparedStatement ps = con.prepareStatement(ADD_USER, Statement.RETURN_GENERATED_KEYS);
                ps.setString(1, user.getFirstName());
                ps.setString(2, user.getLastName());
                ps.setString(3, user.getEmail());
                ps.setString(4, user.getPassword());
                if (user.getPhone() != null) {
                    ps.setString(5, user.getPhone());
                } else {
                    ps.setNull(5, Types.VARCHAR);
                }
                if (user.getCompanyName() != null) {
                    ps.setString(6, user.getCompanyName());
                } else {
                    ps.setNull(6, Types.VARCHAR);
                }
                if (user.getCountry().getId() != 0) {
                    ps.setLong(7, user.getCountry().getId());
                } else {
                    ps.setNull(7, Types.INTEGER);
                }
                if (user.getCity().getId() != 0) {
                    ps.setLong(8, user.getCity().getId());
                } else {
                    ps.setNull(8, Types.INTEGER);
                }
                if (user.getAddress1() != null) {
                    ps.setString(9, user.getAddress1());
                } else {
                    ps.setNull(9, Types.VARCHAR);
                }
                if (user.getAddress2() != null) {
                    ps.setString(10, user.getAddress2());
                } else {
                    ps.setNull(10, Types.VARCHAR);
                }
                if (user.getPostalCode() != null) {
                    ps.setString(11, user.getPostalCode());
                } else {
                    ps.setNull(11, Types.VARCHAR);
                }
                return ps;
            }, keyHolder);
            user.setId(keyHolder.getKey().longValue());

        } catch (Exception e) {
            logger.error("Error occurred registration for user = " + user, e);
            throw new RuntimeException("Error occurred registration for user = " + user, e);
        }
        return user;
    }

    @Override
    public boolean deleteUser(long userId) {
        int count = jdbcTemplate.update(DELETE_USER, new Object[]{userId});
        return count > 0;
    }

    @Override
    public void addUserRole(long userId, Role role) {
        Object[] params = new Object[] {userId, Role.USER.getRoleId()};
        int count = jdbcTemplate.update(ADD_USER_ROLE, params);
        if (count > 0) {
            logger.info(String.format("%s user role added to user %d", role, userId));
        } else {
            throw new RoleNotAddedException(userId, role);
        }
    }

    @Override
    public User updateUser(User user) {
        jdbcTemplate.update(new PreparedStatementCreator() {
            @Override
            public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
                PreparedStatement ps = con.prepareStatement(UPDATE_USER);
                return ps;
            }
        });
        return user;
    }

    @Override
    public Optional<User> getUserById(long userId) {
        Optional<User> optionalUser = Optional.empty();
        Object[] params = new Object[] {userId};
        List<User> userList = jdbcTemplate.query(GET_USER_BY_ID, params, userRowMapper);
        if (!userList.isEmpty()) {
            optionalUser = Optional.of(userList.get(0));
        }
        return optionalUser;
    }

    @Override
    public List<User> getUserList() {
        List<User> userList = jdbcTemplate.query(GET_USER_LIST, userRowMapper);
        return userList;
    }


    @Override
    public Optional<User> getUserByEmail(String email) {
        Optional<User> optionalUser = Optional.empty();
        List<User> userList = jdbcTemplate.query(GET_USER_BY_EMAIL,new Object[]{email}, userRowMapper);
        if (!userList.isEmpty()) {
            optionalUser = Optional.of(userList.get(0));
        }
        return optionalUser;
    }

    @Override
    public List<Role> getUserRoles(long userId) {
        Object[] params = new Object[] {userId};
        List<Role> roleList = jdbcTemplate.query(GET_USER_ROLES, params, roleRowMapper);
        return roleList;
    }

    @Override
    public int getUserCount() {
        return jdbcTemplate.queryForObject(GET_USER_COUNT, Integer.class);
    }

    @Override
    public int getUserFilteredCount(String filter) {
        Object[] params = new Object[]{"%" + filter + "%"};
        return jdbcTemplate.queryForObject(USER_SEARCH_COUNT, params, Integer.class);
    }

    @Override
    public List<User> searchUser(String filter, int limit, int offset, String sql) {
        Object[] params = new Object[]{"%" + filter + "%", limit, offset};
        return jdbcTemplate.query(sql, params, userRowMapper);

    }
}
