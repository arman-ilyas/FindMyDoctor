package ai.edu.rare.doctor.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import ai.edu.rare.doctor.dao.DoctorDao;
import ai.edu.rare.doctor.dao.PatientDao;
import ai.edu.rare.doctor.dao.UserDao;
import ai.edu.rare.doctor.model.Doctor;
import ai.edu.rare.doctor.model.Patient;
import ai.edu.rare.doctor.model.User;

/**
 * Created by Tim Arman on 15/9/18.
 */
@Service
public class UserService {
  // TODO: convert to constructor injection later
  @Autowired public UserDao userDao;
  @Autowired public PatientDao patientDao;
  @Autowired public DoctorDao doctorDao;

  public List<User> findAllUsers() {
    return userDao.findAllUsers();
  }

  public List<Patient> findAllPatients() {
    return patientDao.findAllPatients();
  }

  public List<Doctor> findAllDoctors() {
    return doctorDao.findAllDoctors();
  }
}
