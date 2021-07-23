package az.techstore.service;

import az.techstore.domain.DataTable;
import az.techstore.domain.Role;
import az.techstore.domain.User;
import java.util.List;
import java.util.Optional;

public interface UserService {
    User addUser(User user);
    User updateUser(User user);
    List<User> getUserList();
    Optional<User> getUserById(long userId);
    Optional<User> getUserByEmail(String email);
    List<Role> getUserRoles(long userId);

    DataTable getUserList(DataTable dataTable);
}
