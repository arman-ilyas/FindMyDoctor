package ai.edu.rare.doctor.dao;

import org.springframework.stereotype.Repository;

import java.util.List;

import ai.edu.rare.doctor.model.Patient;

/**
 * Created by Tim Arman on 15/9/18.
 */
@Repository
public interface PatientDao {
  List<Patient> getAllPatients();
}