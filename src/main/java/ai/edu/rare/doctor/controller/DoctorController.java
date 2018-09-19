package ai.edu.rare.doctor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Tim Arman on 19/9/18.
 */
@Controller
@RequestMapping("/doctor")
public class DoctorController {

  @RequestMapping("/login")
  public String doctorLogin() {
    return "doctorLogin";
  }

  @RequestMapping("/home")
  public String doctorHome() {
    return "doctorHome";
  }
}