package Domain;

import javax.persistence.*;

/**
 * Created by zhengjun on 10/30/14.
 */
@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @Column(name = "name")
    private String name;

    @Column(name = "gender")
    private Integer gender;


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

    public Integer isGender() {
        return gender;
    }

    public void setGender(boolean Integer) {
        this.gender = gender;
    }
}
