package az.techstore.service;

import az.techstore.domain.Token;

import java.time.LocalDateTime;
import java.time.temporal.TemporalAmount;

public interface TokenService {
    Token generateToken();
    Token generateToken(long expireSeconds);
    Token generateToken(LocalDateTime expireDate);
    Token generateToken(TemporalAmount temporalAmount);

    Token saveToken(Token token);
}
