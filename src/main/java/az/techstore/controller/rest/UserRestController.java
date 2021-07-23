package az.techstore.controller.rest;

import az.techstore.domain.DataTable;
import az.techstore.domain.PaginationResult;
import az.techstore.domain.User;
import az.techstore.exception.UserNotAddedException;
import az.techstore.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/rest/user/")
public class UserRestController {

    @Autowired
    UserService userService;

    @GetMapping("/user-list-datatable")
    public DataTable getUserDataTable(
            @RequestParam(name = "draw") int draw,
            @RequestParam(name = "start", required = false, defaultValue = "0") int start,
            @RequestParam(name = "length", required = false, defaultValue = "10") int length,
            @RequestParam(name = "search[value]", required = false, defaultValue = "") String search,
            @RequestParam(name = "order[0][column]", required = false, defaultValue = "0") int sortColumn,
            @RequestParam(name = "order[0][dir]", required = false, defaultValue = "asc") String sortDirection
            ){
        DataTable dataTable = new DataTable();
        dataTable.setDraw(draw);
        dataTable.setStart(start);
        dataTable.setLength(length);
        dataTable.setSearch(search);
        dataTable.setSortColumn(sortColumn);
        dataTable.setSortDirection(sortDirection);
        dataTable = userService.getUserList(dataTable);
        return dataTable;
    }

    @GetMapping("/users")
    public PaginationResult<User> getUserList(
            @RequestParam(name = "limit", required = false, defaultValue = "10") int limit,
            @RequestParam(name = "offset", required = false, defaultValue = "0") int offset) {

        PaginationResult<User> paginationResult = new PaginationResult<>();
        try {
            List<User> userList = userService.getUserList();
            paginationResult.setList(userList);
            paginationResult.setLimit(limit);
            paginationResult.setOffset(offset);
            paginationResult.setTotal(userList.size());
            paginationResult.setFiltered(userList.size());

        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Error getting user list");
        }
        return paginationResult;
    }


    @ResponseStatus(HttpStatus.CREATED)
    @PostMapping("/users")
    public void createUser(@RequestBody User user) {
        System.out.println("user = " + user);
    }

    @ResponseStatus(HttpStatus.OK)
    @PutMapping("/users")
    public void updateUser(@RequestBody User user) {
        Optional<User> optionalUser = userService.getUserById(user.getId());
        if (optionalUser.isPresent()) {
            User foundedUser = optionalUser.get();
            userService.updateUser(foundedUser);
        } else {
            try {
                userService.addUser(user);
            } catch (UserNotAddedException e) {
                throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR,
                        "error occurred adding user");
            }

        }
    }

    @ResponseStatus(HttpStatus.OK)
    @DeleteMapping("/users/{id}")
    public void deleteUser(@PathVariable long id) {

    }


    @ResponseStatus(HttpStatus.OK)
    @GetMapping("/users/{id}")
    public User getUserById(@PathVariable long id) {
        User user = null;
        try {
            Optional<User> optionalUser = userService.getUserById(id);
            if (optionalUser.isPresent()) {
                user = optionalUser.get();
            }
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Error getting user with id " + id);
        }

        if (user == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "user with id " + id + " not found");
        }
        return user;
    }

}
