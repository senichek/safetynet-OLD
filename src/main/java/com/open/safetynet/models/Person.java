package com.open.safetynet.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;


@Entity
@Table(name = "persons")
public class Person extends BaseEntity {
    
    @Column(name = "first_name", nullable = false)
    @NotBlank
    @Size(min = 2, max = 25)
    private String firstName;

    @Column(name = "last_name", nullable = false)
    @NotBlank
    @Size(min = 2, max = 25)
    private String lastName;

    @Column(name = "adress", nullable = false)
    @NotBlank
    @Size(min = 10, max = 150)
    private String adress;

    @Column(name = "city", nullable = false)
    @NotBlank
    @Size(min = 2, max = 150)
    private String city;

    @Column(name = "zip", nullable = false)
    @NotBlank
    @Size(min = 2, max = 10)
    private Integer zip;

    @Column(name = "phone", nullable = false)
    @NotBlank
    @Size(min = 2, max = 20)
    private String phone;

    @Column(name = "email", nullable = false)
    @NotBlank
    @Email
    private String email;

    @OneToOne(fetch = FetchType.LAZY, mappedBy = "person")
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonManagedReference(value = "person")
    @NotNull
    private MedicalRecord medicalRecord;
}
