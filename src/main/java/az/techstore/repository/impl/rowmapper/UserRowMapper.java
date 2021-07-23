package az.techstore.repository.impl.rowmapper;

import az.techstore.domain.City;
import az.techstore.domain.Country;
import az.techstore.domain.User;
import az.techstore.domain.UserStatus;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class UserRowMapper implements RowMapper<User> {
    @Override
    public User mapRow(ResultSet rs, int rowNum) throws SQLException {
        User user = new User();
        user.setId(rs.getLong("id"));
        user.setFirstName(rs.getString("first_name"));
        user.setLastName(rs.getString("last_name"));
        user.setEmail(rs.getString("email"));
        user.setPassword(rs.getString("password"));
        if (rs.getString("phone") != null) {
            user.setPhone(rs.getString("phone"));
        }
        if (rs.getString("company_name") != null) {
            user.setCompanyName(rs.getString("company_name"));
        }

        if (rs.getString("company_name") != null) {
            user.setCompanyName(rs.getString("company_name"));
        }

        // try (null as country_id in sql queries)
        Country country = new Country();
        if (rs.getLong("country_id") != 0) {
            country.setId(rs.getLong("country_id"));
        }
        user.setCountry(country);

        City city = new City();
        if (rs.getLong("city_id") != 0) {
            city.setId(rs.getLong("city_id"));
        }
        user.setCity(city);

        if (rs.getString("address1") != null) {
            user.setAddress1(rs.getString("address1"));
        }
        if (rs.getString("address2") != null) {
            user.setAddress2(rs.getString("address2"));
        }
        if (rs.getString("postal_code") != null) {
            user.setPostalCode(rs.getString("postal_code"));
        }

        user.setRegistrationDate(rs.getTimestamp("registration_date").toLocalDateTime());

        if (rs.getTimestamp("activation_date") != null) {
            user.setActivationDate(rs.getTimestamp("activation_date").toLocalDateTime());
        }

        user.setInsertDate(rs.getTimestamp("idate").toLocalDateTime());

        if (rs.getTimestamp("udate") != null) {
            user.setLastUpdate(rs.getTimestamp("udate").toLocalDateTime());
        }

        user.setStatus(rs.getInt("status"));

        if (user.getStatus() != 0) {
            user.setUserStatus(UserStatus.fromStatus(rs.getInt("user_status")));
        } else {
            user.setUserStatus(UserStatus.DELETED);
        }



        return user;
    }
}
