package ai.edu.rare.doctor.dao;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import ai.edu.rare.doctor.model.User;

/**
 * Created by Tim Arman on 15/9/18.
 */
@Repository
public interface UserDao extends MongoRepository<User, Long> {
}
