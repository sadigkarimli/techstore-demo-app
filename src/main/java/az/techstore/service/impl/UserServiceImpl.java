package az.techstore.service.impl;

import az.techstore.domain.*;
import az.techstore.repository.SqlQuery;
import az.techstore.repository.UserRepository;
import az.techstore.service.NotificationService;
import az.techstore.service.PasswordManagementService;
import az.techstore.service.TokenService;
import az.techstore.service.UserService;
import az.techstore.util.EmailUtility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.jws.soap.SOAPBinding;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordManagementService passwordManagementService;

    @Autowired
    private TokenService tokenService;

    @Autowired
    private EmailUtility emailUtility;

    @Autowired
    private NotificationService notificationService;

    @Transactional
    @Override
    public User addUser(User user) {
        user.setPassword(passwordManagementService.hashPassword(user.getPassword()));
        user = userRepository.addUser(user);

        userRepository.addUserRole(user.getId(), Role.USER);

        Token token = tokenService.generateToken();
        token.setUser(user);
        token = tokenService.saveToken(token);

        String emailSubject = emailUtility.getRegistrationEmailSubject();
        String emailContent = emailUtility.getRegistrationEmailContent(token, user);

        Notification emailNotification = emailUtility.getEmailNotification(user.getEmail(),
                emailSubject, emailContent, "REGISTRATION");

        emailNotification = notificationService.addNotification(emailNotification);
        return user;

    }

    
    @Override
    public User updateUser(User user) {
        return userRepository.updateUser(user);
    }

    @Override
    public List<User> getUserList() {
        return userRepository.getUserList();
    }

    @Override
    public Optional<User> getUserById(long userId) {
        return userRepository.getUserById(userId);
    }

    @Override
    public Optional<User> getUserByEmail(String email) {
        return userRepository.getUserByEmail(email);
    }

    @Override
    public List<Role> getUserRoles(long userId) {
        return userRepository.getUserRoles(userId);
    }

    @Override
    public DataTable getUserList(DataTable dataTable) {
        dataTable.setRecordsTotal(userRepository.getUserCount());

        if (dataTable.getSearch() != null && !dataTable.getSearch().isEmpty()) {
            dataTable.setRecordsFiltered(userRepository.getUserFilteredCount(dataTable.getSearch()));
        } else {
            dataTable.setRecordsFiltered(dataTable.getRecordsTotal());
        }

        String sql = SqlQuery.SEARCH_USER;
        Map<Integer, String> columnMapping = new HashMap<>();
        columnMapping.put(0, "id");
        columnMapping.put(1, "first_name");
        columnMapping.put(2, "last_name");
        columnMapping.put(3, "email");
        columnMapping.put(4, "registration_date");
        columnMapping.put(5, "activation_date");
        columnMapping.put(6, "status");

        sql = sql.replace("{SORT_COLUMN}", columnMapping.getOrDefault(dataTable.getSortColumn(), "1"));
        sql = sql.replace("{SORT_DIRECTION}", dataTable.getSortDirection());
        List<User> userList = userRepository.searchUser(dataTable.getSearch(), dataTable.getStart(), dataTable.getLength(), sql);

        dataTable.setData(new Object[userList.size()][8]);

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
        for (int i = 0; i < userList.size(); i++) {
            dataTable.getData()[i][0] = userList.get(i).getId();
            dataTable.getData()[i][1] = userList.get(i).getFirstName();
            dataTable.getData()[i][2] = userList.get(i).getLastName();
            dataTable.getData()[i][3] = userList.get(i).getEmail();
            dataTable.getData()[i][4] = userList.get(i).getRegistrationDate().format(formatter);

            if (userList.get(i).getActivationDate() != null) {
                dataTable.getData()[i][5] = userList.get(i).getActivationDate().format(formatter);
            }

            dataTable.getData()[i][6] = userList.get(i).getUserStatus().name();
            dataTable.getData()[i][7] = "<button class=\"btn btn-sm btn-info\" onclick=\"view_user(" + userList.get(i).getId() + ")\" id=\"view-button\" \'><i class=\"fas fa-eye\"></i></button>\n" +
                    "<button class=\"btn btn-sm btn-light\"  onclick=\"edit_user(" + userList.get(i).getId() + ")\"><i class=\"far fa-edit\"></i></button>\n" +
                    "<button class=\"btn btn-sm btn-danger\" onclick=\"confirmDelete(" + userList.get(i).getId() + ")\"><i class=\"far fa-trash-alt\"></i></a>";
        }


        return dataTable;
    }
}
