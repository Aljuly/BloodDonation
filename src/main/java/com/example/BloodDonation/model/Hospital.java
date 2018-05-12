package com.example.BloodDonation.model;

import lombok.Data;

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

    @Column(name = "HospitalID")
    private String hospitalId;

    @Column(name = "HospitalName")
    private String hospitalName;

    @Column(name = "HospitalAddress")
    private String hospitalAddress;

    @Column(name = "HospitalRegion")
    private String hospitalRegion;

}
