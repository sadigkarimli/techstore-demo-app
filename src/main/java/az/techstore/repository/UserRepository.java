package az.techstore.repository;

import az.techstore.domain.Role;
import az.techstore.domain.User;

import java.util.List;
import java.util.Optional;

public interface UserRepository {
    int getUserCount();
    int getUserFilteredCount(String filter);
    User addUser(User user);
    boolean deleteUser(long userId);
    void addUserRole(long userId, Role role);
    User updateUser(User user);
    Optional<User> getUserById(long userId);
    List<User> getUserList();
    List<User> searchUser(String filter, int limit, int offset, String sql);
    Optional<User> getUserByEmail(String email);
    List<Role> getUserRoles(long userId);
}
