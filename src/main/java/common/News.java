package common;

import javax.persistence.*;

/**
 * Created by zhengjun on 5/9/14.
 */

@Entity
@Table(name = "news")
public class News {

    @Id
    @Column(name = "news")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  Integer id;

    @Column(name = "name")
    private  String name;
    @Column(name = "contents")
    private String contents;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }
}
