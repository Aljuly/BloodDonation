package com.example.blooddonation.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "IncomingTransaction")
@Data
public class IncomingTransaction implements Serializable {
    private static final long serialVersionUID = 1L;

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
