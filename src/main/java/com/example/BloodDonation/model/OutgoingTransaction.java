package com.example.BloodDonation.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "OutgoingTransaction")
@Data
public class OutgoingTransaction implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "kod", nullable = false, updatable = false)
    private Long kod;

    @Column(name = "OutgoingID")
    private String outgoingID;

    @Column(name = "Quantity")
    @NotNull
    private int quantity;

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="kod")
    @NotNull
    private IncomingTransaction incomingTransaction;

    @Column(name = "BloodType")
    private String bloodType;

    @Column(name = "Date")
    @NotNull
    private Date incomingDate;

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="kod")
    private Hospital hospital;

}
