package common;

import javax.persistence.*;

/**
 * Created by zhengjun on 5/10/14.
 */
@Entity
@Table(name = "common.Medicine")
public class Medicine {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @Column(name = "name")
    private String name;
    private String pinyin;
//    @Basic(optional = true, fetch = FetchType.LAZY)
    private Float inPrice;
    private Float outPrice;
    private Float salesVolumn;

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

    public String getPinyin() {
        return pinyin;
    }

    public void setPinyin(String pinyin) {
        this.pinyin = pinyin;
    }

    public Float getInPrice() {
        return inPrice;
    }

    public void setInPrice(Float inPrice) {
        this.inPrice = inPrice;
    }

    public Float getOutPrice() {
        return outPrice;
    }

    public void setOutPrice(Float outPrice) {
        this.outPrice = outPrice;
    }
}
