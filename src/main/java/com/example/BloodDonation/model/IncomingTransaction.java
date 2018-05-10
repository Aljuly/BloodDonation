package com.example.BloodDonation.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Date;

@Entity
@Table(name = "IncomingTransaction")
@Data
public class IncomingTransaction {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "kod", nullable = false, updatable = false)
    private Long kod;

    @Column(name = "IncomingID")
    private String incomingID;

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="kod")
    @NotNull
    private Donor donor;

    @Column(name = "BloodType")
    private String bloodType;

    @Column(name = "Quantity")
    @NotNull
    private int quantity;

    @Column(name = "Date")
    @NotNull
    private Date incomingDate;

}