package common;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.*;
import java.util.List;

/**
 * Created by zhengjun on 5/10/14.
 */
@Entity
@Table(name = "common.prescription")

public class prescription {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private Integer reUseCount;

    private Integer singlePrice;

    private Integer fushu;

    @Temporal(TemporalType.TIMESTAMP)
    private Date date;

    @ManyToOne(fetch = FetchType.EAGER, targetEntity = Person.class)
    @JoinColumn(name = "personid")
    private Person person;

    @ManyToOne(fetch = FetchType.EAGER, targetEntity = Doctor.class)
    @JoinColumn(name = "doctorid")
    private Doctor doctor;

    @ManyToMany(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST})
//    @ElementCollection
    @JoinTable(
            name = "script_symptom",
            joinColumns = @JoinColumn(name = "script_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "symptom_id", referencedColumnName = "id")
    )
    private List<Symptom>  symptomArrayList = new ArrayList<Symptom>();

//
    @ManyToMany(fetch = FetchType.EAGER, cascade = {CascadeType.PERSIST})
    @JoinTable(name = "script_costomtags",
            joinColumns = @JoinColumn(name = "script_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "costomtags_id", referencedColumnName = "id")
    )
    private List<CostomTag> costomTagArrayList = new ArrayList<CostomTag>();
////


    @ElementCollection
    @CollectionTable(name = "script_medicine",
            joinColumns = @JoinColumn(name = "script_id", referencedColumnName = "id"))
    @Column(name = "weight")
    @MapKeyJoinColumn(name = "Medicine_id", referencedColumnName = "id")
    private Map<Medicine, Integer> medicineIntegerHashMap = new HashMap<Medicine, Integer>();

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getReUseCount() {
        return reUseCount;
    }

    public void setReUseCount(Integer reUseCount) {
        this.reUseCount = reUseCount;
    }

    public Integer getSinglePrice() {
        return singlePrice;
    }

    public void setSinglePrice(Integer singlePrice) {
        this.singlePrice = singlePrice;
    }

    public Integer getFushu() {
        return fushu;
    }

    public void setFushu(Integer fushu) {
        this.fushu = fushu;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public List<Symptom> getSymptomArrayList() {
        return symptomArrayList;
    }

    public void setSymptomArrayList(ArrayList<Symptom> symptomArrayList) {
        this.symptomArrayList = symptomArrayList;
    }

    public List<CostomTag> getCostomTagArrayList() {
        return costomTagArrayList;
    }

    public void setCostomTagArrayList(ArrayList<CostomTag> costomTagArrayList) {
        this.costomTagArrayList = costomTagArrayList;
    }

    public Map<Medicine, Integer> getMedicineIntegerHashMap() {
        return medicineIntegerHashMap;
    }

    public void setMedicineIntegerHashMap(HashMap<Medicine, Integer> medicineIntegerHashMap) {
        this.medicineIntegerHashMap = medicineIntegerHashMap;
    }
}
