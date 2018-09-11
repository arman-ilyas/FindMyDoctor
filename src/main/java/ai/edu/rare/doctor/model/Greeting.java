package ai.edu.rare.doctor.model;

/**
 * Created by Tim Arman on 10/9/18.
 */
public class Greeting {

  private final long id;
  private final String content;

  public Greeting(long id, String content) {
    this.id = id;
    this.content = content;
  }

  public long getId() {
    return id;
  }

  public String getContent() {
    return content;
  }
}