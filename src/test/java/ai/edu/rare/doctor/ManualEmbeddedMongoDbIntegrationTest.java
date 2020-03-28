package ai.edu.rare.doctor;

import com.mongodb.BasicDBObjectBuilder;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import de.flapdoodle.embed.mongo.MongodExecutable;
import de.flapdoodle.embed.mongo.MongodStarter;
import de.flapdoodle.embed.mongo.config.IMongodConfig;
import de.flapdoodle.embed.mongo.config.MongodConfigBuilder;
import de.flapdoodle.embed.mongo.config.Net;
import de.flapdoodle.embed.mongo.distribution.Version;
import de.flapdoodle.embed.process.runtime.Network;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.data.mongodb.core.MongoTemplate;

import static org.assertj.core.api.Assertions.assertThat;

class ManualEmbeddedMongoDbIntegrationTest {
  private MongodExecutable mongodExecutable;
  private MongoTemplate mongoTemplate;

  @AfterEach
  void clean() {
    mongodExecutable.stop();
  }

  @BeforeEach
  void setup() throws Exception {
    String ip = "localhost";
    int port = 27017;

    IMongodConfig mongodConfig = new MongodConfigBuilder().version(Version.Main.PRODUCTION)
        .net(new Net(ip, port, Network.localhostIsIPv6()))
        .build();

    MongodStarter starter = MongodStarter.getDefaultInstance();
    mongodExecutable = starter.prepare(mongodConfig);
    mongodExecutable.start();
    mongoTemplate = new MongoTemplate(new MongoClient(ip, port), "test");
  }

  @DisplayName("given object to save"
      + " when save object using MongoDB template"
      + " then object is saved")
  @Test
  void test() throws Exception {
    // given
    DBObject objectToSave = BasicDBObjectBuilder.start()
        .add("key", "value")
        .get();

    // when
    mongoTemplate.save(objectToSave, "collection");

    // then
    assertThat(mongoTemplate.findAll(DBObject.class, "collection")).extracting("key")
        .containsOnly("value");
  }
}