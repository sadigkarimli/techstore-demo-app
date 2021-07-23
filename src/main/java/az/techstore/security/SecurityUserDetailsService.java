package az.techstore.security;

import az.techstore.domain.User;
import az.techstore.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class SecurityUserDetailsService implements UserDetailsService {
    Logger logger = Logger.getLogger(SecurityUserDetailsService.class);

    @Autowired
    UserService userService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        SecurityUserDetail userDetail;
        Optional<User> optionalUser = userService.getUserByEmail(username);
        if (optionalUser.isPresent()) {
            User user = optionalUser.get();
            user.setRoleList(userService.getUserRoles(user.getId()));
            userDetail = new SecurityUserDetail(user);
        } else {
            logger.info("User " + username + " not founded.");
            throw new UsernameNotFoundException("User " + username + "not founded.");
        }
        return userDetail;
    }
}
