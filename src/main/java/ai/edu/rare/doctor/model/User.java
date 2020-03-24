package ai.edu.rare.doctor.model;

import java.io.Serializable;


/**
 * Created by Tim Arman on 15/9/18.
 */
//@Entity
//@Table(name = "User")
public class User implements Serializable {
  private static final long serialVersionUID = 7610239518520647723L;

  public User() {
    // empty constructor
  }

  private Long id;
  private String name;
  private String email;
  private String password;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  @Override
  public String toString() {
    return "User{" +
        "id=" + id +
        ", name='" + name + '\'' +
        ", email='" + email + '\'' +
        ", password='" + password + '\'' +
        '}';
  }
}
