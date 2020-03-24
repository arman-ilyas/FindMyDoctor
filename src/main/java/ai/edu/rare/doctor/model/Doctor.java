package ai.edu.rare.doctor.model;

import java.io.Serializable;

/**
 * Created by Tim Arman on 15/9/18.
 */
public class Doctor implements Serializable {
  private static final long serialVersionUID = -375300726202547046L;

  public Doctor() {
    // empty constructor
  }

  private Long id;
  private Long userId;
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
