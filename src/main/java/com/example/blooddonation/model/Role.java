package com.example.blooddonation.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Set;

@Entity
@Table(name = "Role")
@Data
public class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "kod", nullable = false, updatable = false)
    private Long kod;

    @NotNull
    @NotEmpty
    @Size(max = 50)
    @Column(name = "name", length = 50)
    private String name;


    @ElementCollection(targetClass = Role.class)
    private Set<Role> staffRoles;

}
