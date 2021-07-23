package az.techstore.repository;

import az.techstore.domain.User;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringRunner.class)
@SpringBootTest
public class UserRepositoryTest {

    @Autowired
    UserRepository userRepository;

    @Before
    public void setup() {
        System.out.println("user repository test started");
    }

    @Test
    public void testGetUserList() {
        List<User> userList = userRepository.getUserList();
        System.out.println(userList);
        assertNotNull(userList);
        assertTrue(userList.size() > 0);

        userList.forEach(user -> {
            assertTrue(user.getId() > 0);
            assertTrue(user.getEmail() != null && !user.getEmail().isEmpty());
            assertTrue(user.getPassword() != null && !user.getPassword().isEmpty());
        });
    }



    @After
    public void terminate() {
        System.out.println("user repository test terminated");
    }
}
