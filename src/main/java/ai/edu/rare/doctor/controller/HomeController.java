package ai.edu.rare.doctor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * Created by Tim Arman on 16/9/18.
 */
@Controller
public class HomeController {

  private String message = "Hello World";

  @RequestMapping("/")
  public String welcome(Map<String, Object> model) {
    model.put("message", this.message);
    return "welcome";
  }

  @RequestMapping("/doctorpage")
  public String doctorPage(Map<String, Object> model) {
    return "doctorPage";
  }

  @RequestMapping("/underconstruction")
  public String underconstruction() {
    return "underconstruction";
  }
}
