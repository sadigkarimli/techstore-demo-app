package az.techstore.repository.impl;

import az.techstore.domain.Country;
import az.techstore.repository.CountryRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import static az.techstore.repository.SqlQuery.GET_COUNTRY_LIST;

@Repository
public class CountryRepositoryImpl implements CountryRepository {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    private CountryRowMapper countryRowMapper = new CountryRowMapper();

    @Override
    public List<Country> getCountryList() {
        return jdbcTemplate.query(GET_COUNTRY_LIST, countryRowMapper);
    }


    public class CountryRowMapper implements RowMapper<Country> {

        @Override
        public Country mapRow(ResultSet rs, int rowNum) throws SQLException {
            Country country = new Country();
            country.setId(rs.getInt("id"));
            country.setName(rs.getString("name"));
            country.setInsertDate(rs.getTimestamp("idate").toLocalDateTime());

            if (rs.getTimestamp("udate") != null) {
                country.setLastUpdate(rs.getTimestamp("udate").toLocalDateTime());
            }

            country.setStatus(rs.getInt("status"));
            return country;
        }
    }
}
