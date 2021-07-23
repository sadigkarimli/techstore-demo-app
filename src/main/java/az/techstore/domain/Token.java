package az.techstore.domain;
import java.time.LocalDateTime;

public class Token  extends Base {

    private static final long serialVersionUID = -5452194451293694467L;
    private String value;
    private LocalDateTime generationDate;
    private LocalDateTime expireDate;
    private User user;
    private TokenType type;

    public Token() {

    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public LocalDateTime getGenerationDate() {
        return generationDate;
    }

    public void setGenerationDate(LocalDateTime generationDate) {
        this.generationDate = generationDate;
    }

    public LocalDateTime getExpireDate() {
        return expireDate;
    }

    public void setExpireDate(LocalDateTime expireDate) {
        this.expireDate = expireDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public TokenType getType() {
        return type;
    }

    public void setType(TokenType type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Token{" +
                "id=" + id + '\'' +
                ", value='" + value +
                ", generationDate=" + generationDate +
                ", expireDate=" + expireDate +
                ", user=" + user +
                ", type=" + type +
                ", id=" + id +
                ", insertDate=" + insertDate +
                ", lastUpdate=" + lastUpdate +
                ", status=" + status +
                '}';
    }
}
