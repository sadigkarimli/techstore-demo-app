package az.techstore.repository.impl;

import az.techstore.repository.CommonRepository;
import az.techstore.repository.SqlQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import static az.techstore.repository.SqlQuery.*;

@Repository
public class CommonRepositoryImpl implements CommonRepository {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public boolean checkEmail(String email) {
        Object[] params = new Object[]{email};
        int count =  jdbcTemplate.queryForObject(CHECK_EMAIL, params, Integer.class);
        return  count > 0;
    }
}
