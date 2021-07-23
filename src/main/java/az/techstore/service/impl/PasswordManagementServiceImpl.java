package az.techstore.service.impl;

import az.techstore.service.PasswordManagementService;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;

@Service
public class PasswordManagementServiceImpl implements PasswordManagementService {
    @Override
    public String hashPassword(String clearPassword) {
        return BCrypt.hashpw(clearPassword, BCrypt.gensalt());
    }

    @Override
    public boolean checkPasswordMatch(String plainText, String hashedPassword) {
        return BCrypt.checkpw(plainText, hashedPassword);
    }
}
