package com.open.safetynet.service.medicalRecord;

import java.util.List;

import com.open.safetynet.models.MedicalRecord;

public interface MedicalRecordService {
    List<MedicalRecord> getAll();

    List<MedicalRecord> getAllWithMedicationAndAllergies();
}
