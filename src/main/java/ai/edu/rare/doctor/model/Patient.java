package ai.edu.rare.doctor.model;

import java.io.Serializable;
import org.springframework.data.mongodb.core.mapping.Document;

/**
 * Created by Tim Arman on 15/9/18.
 */
@Document(collection = "patients")
public class Patient implements Serializable {
  private static final long serialVersionUID = 3168690699573834923L;

  public Patient() {
    // empty constructor
  }

  private Long id;
  private Long userId;
  private String disease;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public Long getUserId() {
    return userId;
  }

  public void setUserId(Long userId) {
    this.userId = userId;
  }

  public String getDisease() {
    return disease;
  }

  public void setDisease(String disease) {
    this.disease = disease;
  }

  @Override
  public String toString() {
    return "Patient{" +
        "id=" + id +
        ", userId=" + userId +
        ", disease='" + disease + '\'' +
        '}';
  }
}
