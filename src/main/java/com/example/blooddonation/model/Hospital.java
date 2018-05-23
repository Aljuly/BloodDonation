package com.example.blooddonation.model;


import lombok.Data;
import org.apache.commons.lang3.*;
import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "Hospital")
@Data
public class Hospital implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "kod", nullable = false, updatable = false)
    private Long kod;

    @OneToMany(mappedBy = "Staff")
    private List<Staff> staff;

    @OneToMany(mappedBy = "OutgoingTransaction")
    private List<OutgoingTransaction> outgoingTransactions;

    private String hospitalId;

    @Column(name = "HospitalName")
    private String hospitalName;

    @Column(name = "HospitalAddress")
    private String hospitalAddress;

    @Column(name = "HospitalRegion")
    private String hospitalRegion;

    @Column(name = "HospitalID")
    public String getHospitalId() {
        this.hospitalId = "HS" + StringUtils.leftPad(Long.toString(this.kod),8, '0');
        return this.hospitalId;
    }

}
