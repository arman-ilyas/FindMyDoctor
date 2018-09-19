package ai.edu.rare.doctor.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

import ai.edu.rare.doctor.model.Patient;

/**
 * Created by Tim Arman on 15/9/18.
 */
@Repository
public interface PatientDao extends JpaRepository<Patient, Long> {

  @Query(value = "select * from Patient", nativeQuery = true)
  List<Patient> getAllPatients();

}