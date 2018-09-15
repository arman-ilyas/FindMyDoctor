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
@Table(name = "Doctor")
public class Doctor implements Serializable {
  private static final long serialVersionUID = -375300726202547046L;

  public Doctor() {
    // empty constructor
  }

  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private Long id;
  @Column(name = "userid")
  private Long userId;
  @Column(name = "patientid")
  private Long patientId;

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

  public Long getPatientId() {
    return patientId;
  }

  public void setPatientId(Long patientId) {
    this.patientId = patientId;
  }

  @Override
  public String toString() {
    return "Doctor{" +
        "id=" + id +
        ", userId=" + userId +
        ", patientId=" + patientId +
        '}';
  }
}
