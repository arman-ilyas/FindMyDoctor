package ai.edu.rare.doctor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class FindMyDoctorApplication {

  private static final Logger log = LoggerFactory.getLogger(FindMyDoctorApplication.class);

  public static void main(String[] args) {
    SpringApplication.run(FindMyDoctorApplication.class, args);
  }
}

  

