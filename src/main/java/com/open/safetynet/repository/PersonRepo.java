package com.open.safetynet.repository;

import java.util.List;

import com.open.safetynet.models.Person;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonRepo extends JpaRepository<Person, Integer> {
    @Query(value = "SELECT DISTINCT p FROM Person p LEFT JOIN FETCH p.medicalRecord")
    List<Person> getAllWithMedicalRecord();
}
