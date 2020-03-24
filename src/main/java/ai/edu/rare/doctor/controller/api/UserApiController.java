package ai.edu.rare.doctor.controller.api;

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
@RequestMapping("/user")
public class UserApiController {
  // TODO: convert to constructor injection later
  @Autowired private UserService userService;

  @RequestMapping("/list")
  public List<User> getAllUsers() {
//    List<User> allUsers = userService.getAllUsers();
    return null;
  }
}
