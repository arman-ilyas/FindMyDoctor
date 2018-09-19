package ai.edu.rare.doctor.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

import ai.edu.rare.doctor.model.User;

/**
 * Created by Tim Arman on 15/9/18.
 */
@Repository
public interface UserDao extends JpaRepository<User, Long> {

  @Query(value = "select * from User", nativeQuery = true)
  List<User> getAllUsers();

}
