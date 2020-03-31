package ai.edu.rare.doctor.controller.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import ai.edu.rare.doctor.model.Patient;
import ai.edu.rare.doctor.services.UserService;

/**
 * Created by Tim Arman on 15/9/18.
 */
@RestController
@RequestMapping("/patient")
public class PatientApiController {
  // TODO: convert to constructor injection later
  @Autowired private UserService userService;

  @GetMapping("/list")
  public List<Patient> getAllPatients() {
    return null;
  }
}
