package az.techstore.repository.impl;

import az.techstore.domain.City;
import az.techstore.repository.CityRepository;
import az.techstore.repository.SqlQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

import static az.techstore.repository.SqlQuery.GET_CITY_BY_COUNTRY_ID;

@Repository
public class CityRepositoryImpl implements CityRepository {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    private CityRowMapper cityRowMapper = new CityRowMapper();
    @Override
    public List<City> getCityListByCountryId(long countyId) {
        Object[] params =  new Object[]{countyId};
        List<City> cityList = jdbcTemplate.query(GET_CITY_BY_COUNTRY_ID, params, cityRowMapper);
        return cityList;
    }

    private class CityRowMapper implements RowMapper<City> {

        @Override
        public City mapRow(ResultSet rs, int rowNum) throws SQLException {
            City city = new City();
            city.setId(rs.getInt("id"));
            city.setName(rs.getString("name"));
            city.setInsertDate(rs.getTimestamp("idate").toLocalDateTime());

            if (rs.getTimestamp("udate") != null) {
                city.setLastUpdate(rs.getTimestamp("udate").toLocalDateTime());
            }

            city.setStatus(rs.getInt("status"));
            return city;
        }
    }
}
