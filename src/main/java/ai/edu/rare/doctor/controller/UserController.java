package ai.edu.rare.doctor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import ai.edu.rare.doctor.model.User;
import ai.edu.rare.doctor.services.UserService;

/**
 * Created by Tim Arman on 15/9/18.
 */
@RestController
public class UserController {
  @Autowired
  private UserService userService;

  @RequestMapping("/greeting")
  public List<User> greeting() {
    List<User> allUsers = userService.findAllUsers();
    return allUsers;
  }
}
