package ai.edu.rare.doctor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Tim Arman on 16/9/18.
 */
@Controller
public class HomeController {
    @RequestMapping("/")
    public String welcome() {
        return "welcome";
    }

    @RequestMapping("/underconstruction")
    public String underConstruction() {
        return "underconstruction";
    }

    @RequestMapping("/aboutme")
    public String aboutMe() {
        return "aboutMe";
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }
}
