package common;

import javax.persistence.Column;

/**
 * Created by zhengjun on 5/10/14.
 */
public class Tag {

    @Column(name = "name")
    private String name;
    @Column(name = "pinyin")
    private String pinyin;
    @Column(name = "count")

    private Integer count;

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
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
}
