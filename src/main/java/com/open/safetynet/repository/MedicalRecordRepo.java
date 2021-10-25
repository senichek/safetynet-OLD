package com.open.safetynet.repository;

import java.util.List;

import com.open.safetynet.models.MedicalRecord;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface MedicalRecordRepo extends JpaRepository<MedicalRecord, Integer> {
    @Query(value = "SELECT DISTINCT m FROM MedicalRecord m LEFT JOIN FETCH m.medications")
    List<MedicalRecord> getAllWithMedicationAndAllergies();
}
