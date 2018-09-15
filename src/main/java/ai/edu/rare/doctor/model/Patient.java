package ai.edu.rare.doctor.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Tim Arman on 15/9/18.
 */
@Entity
@Table(name = "Patient")
public class Patient implements Serializable {
  private static final long serialVersionUID = 3168690699573834923L;

  public Patient() {
    // empty constructor
  }

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id;
  @Column(name = "userid")
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
