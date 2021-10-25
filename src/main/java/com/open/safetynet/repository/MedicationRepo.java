package com.open.safetynet.repository;

import com.open.safetynet.models.Medication;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MedicationRepo extends JpaRepository<Medication, Integer> {
    
}
