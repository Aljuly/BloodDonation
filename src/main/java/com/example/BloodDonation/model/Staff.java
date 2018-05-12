package com.example.BloodDonation.model;

import lombok.Data;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name = "Staff")
@Data
public class Staff implements Serializable  {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "kod", nullable = false, updatable = false)
    private Long kod;

    @Column(name = "StaffID")
    private String staffId;

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="kod")
    private Hospital hospital;

    @Column(name = "Password")
    private String password;
    
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

    @OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "role")
    private Roles role;

}
