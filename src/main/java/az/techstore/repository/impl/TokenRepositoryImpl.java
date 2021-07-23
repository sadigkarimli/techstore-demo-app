package az.techstore.repository.impl;

import az.techstore.domain.Token;
import az.techstore.domain.TokenType;
import az.techstore.exception.TokenNotAddedException;
import az.techstore.repository.TokenRepository;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.sql.*;

import static az.techstore.repository.SqlQuery.ADD_TOKEN;

@Repository
public class TokenRepositoryImpl implements TokenRepository {

    private final Logger logger = Logger.getLogger(TokenRepositoryImpl.class);

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public Token addToken(Token token) {
        KeyHolder keyHolder = new GeneratedKeyHolder();
        int count = jdbcTemplate.update(con -> {
            PreparedStatement ps = con.prepareStatement(ADD_TOKEN, Statement.RETURN_GENERATED_KEYS);

            ps.setString(1, token.getValue());
            ps.setLong(2, token.getUser().getId());
            ps.setInt(3, TokenType.ACTIVATION.getValue());
            ps.setTimestamp(4, Timestamp.valueOf(token.getGenerationDate()));
            ps.setTimestamp(5, Timestamp.valueOf(token.getExpireDate()));
            return ps;
        }, keyHolder);

        token.setId(keyHolder.getKey().longValue());

        if (count > 0) {
            logger.debug(String.format("token %s inserted", token));
        } else {
            throw new TokenNotAddedException(token, "Error adding token: " + token);
        }
        return token;
    }
}
