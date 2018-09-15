package ai.edu.rare.doctor.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import ai.edu.rare.doctor.dao.UserDao;
import ai.edu.rare.doctor.model.User;

/**
 * Created by Tim Arman on 15/9/18.
 */
@Service
public class UserService {

  @Autowired
  public UserDao userDao;

  public List<User> findAllUsers() {
    return userDao.findAllUsers();
  }
}
