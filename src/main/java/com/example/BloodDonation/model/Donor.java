package com.example.BloodDonation.model;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "Donor")
@Data
public class Donor {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "kod", nullable = false, updatable = false)
    private Long kod;

    @Column(name = "DonorID")
    private String staffId;

    @Column(name = "Address")
    private String address;

    @Column(name = "City")
    private String city;

    @Column(name = "FirstName")
    private String firstName;

    @Column(name = "LastName")
    private String lastName;

    @Column(name = "ContactPhone")
    private String contactPhone;

    @Column(name="Gender", length=1, columnDefinition="CHAR")
    private String gender;

    @Column(name = "ICNumber")
    private String icNumber;

    @Column(name = "DateOfBirth")
    private Date birthDate;

    @Column(name = "BloodType")
    private String bloodType;

    @OneToMany(mappedBy = "IncomingTransaction")
    private List<IncomingTransaction> incomingTransactions;

}
