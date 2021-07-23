package az.techstore.service;

public interface PasswordManagementService {

    String hashPassword(String clearPassword);
    boolean checkPasswordMatch(String plainText, String hashedPassword);

}
