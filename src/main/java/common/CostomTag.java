package common;

import javax.persistence.*;

/**
 * Created by zhengjun on 5/10/14.
 */

@Entity
@Table(name = "costomtag")
public class CostomTag extends Tag {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
}
