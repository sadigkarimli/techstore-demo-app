package az.techstore.service.impl;

import az.techstore.domain.Token;
import az.techstore.repository.TokenRepository;
import az.techstore.service.TokenService;
import az.techstore.util.SecurityUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.time.temporal.TemporalAmount;

@Service
public class TokenServiceImpl implements TokenService {

    @Autowired
    private TokenRepository tokenRepository;

    @Value("${default.token.second}")
    private long defaultTokenSeconds;

    @Override
    public Token generateToken() {
        return buildToken(LocalDateTime.now().plusSeconds(defaultTokenSeconds));
    }

    @Override
    public Token generateToken(long expireSeconds) {
        return buildToken(LocalDateTime.now().plusSeconds(expireSeconds));
    }

    @Override
    public Token generateToken(LocalDateTime expireDate) {
        return buildToken(expireDate);
    }

    @Override
    public Token generateToken(TemporalAmount temporalAmount) {

        return buildToken(LocalDateTime.now().plus(temporalAmount));
    }

    @Override
    public Token saveToken(Token token) {
         return tokenRepository.addToken(token);
    }

    private Token buildToken(LocalDateTime expireDate) {
        Token token = new Token();
        token.setGenerationDate(LocalDateTime.now());
        token.setExpireDate(expireDate);
        token.setValue(getGeneratedToken());
        return token;
    }

    private String getGeneratedToken() {
        return SecurityUtil.generateToken();
    }


}
