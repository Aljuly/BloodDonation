package com.example.BloodDonation.model;

import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "Hospital")
@Data
public class Hospital {

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
