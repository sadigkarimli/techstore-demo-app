package az.techstore.exception;

import az.techstore.domain.Token;
import az.techstore.domain.User;

public class TokenNotAddedException extends BaseException{
    private Token token;

    public TokenNotAddedException(Token token, String message, Throwable throwable) {
        super(message, throwable);
        this.token = token;
    }

    public TokenNotAddedException(Token token, String message) {
        super(message);
        this.token = token;
    }

    public Token getToken() {
        return token;
    }

    public void setToken(Token token) {
        this.token = token;
    }
}
