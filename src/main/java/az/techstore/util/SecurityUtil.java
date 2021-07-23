package az.techstore.util;


import org.apache.commons.codec.digest.DigestUtils;

import java.util.UUID;

public class SecurityUtil {
    public static String generateHash(String value) {
        return DigestUtils.sha256Hex(value);
    }

    public static String generateToken() {
        return generateHash(UUID.randomUUID().toString());
    }
}
