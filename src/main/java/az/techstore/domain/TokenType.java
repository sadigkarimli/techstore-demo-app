package az.techstore.domain;

import java.util.Arrays;

public enum TokenType {
    ACTIVATION(0),
    RESET_PASSWORD(1);

    private int value;

    public int getValue() {
        return value;
    }

    TokenType(int value) {
        this.value = value;
    }

    public static TokenType fromValue(int value) {
        return Arrays.stream(values())
                .filter(tokenType -> tokenType.value == value)
                .findFirst().orElseThrow(() -> new IllegalArgumentException("Invalid token type for value" + value));
    }


}
