package ai.edu.rare.doctor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import ai.edu.rare.doctor.model.Doctor;
import ai.edu.rare.doctor.services.UserService;

/**
 * Created by Tim Arman on 15/9/18.
 */
@RestController
public class DoctorController {
  // TODO: convert to constructor injection later
  @Autowired private UserService userService;

  @RequestMapping("/getdoctors")
  public List<Doctor> greeting() {
    List<Doctor> allDoctors = userService.findAllDoctors();
    return allDoctors;
  }
}
