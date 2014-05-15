package common;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by zhengjun on 5/10/14.
 */
@Entity
@Table(name = "symptom")

public class Symptom extends Tag {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @ManyToMany(fetch = FetchType.EAGER, targetEntity = Medicine.class)
    @JoinTable(
            name = "symptom_medicine",
            joinColumns = @JoinColumn(name = "symptomid", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "medicine_id", referencedColumnName = "id")
    )
    private List<Integer> medicineList = new ArrayList<Integer>();

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public List<Integer> getMedicineList() {
        return medicineList;
    }

    public void setMedicineList(List<Integer> medicineList) {
        this.medicineList = medicineList;
    }
}
