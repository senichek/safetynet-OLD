package com.open.safetynet.service.medicalRecord;

import java.util.List;
import com.open.safetynet.models.MedicalRecord;
import com.open.safetynet.repository.MedicalRecordRepo;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MedicalRecordServiceImpl implements MedicalRecordService {

    protected final Logger log = LogManager.getLogger(MedicalRecordService.class);

    @Autowired
    private MedicalRecordRepo medicalRecordRepo;

    @Override
    public List<MedicalRecord> getAll() {
        log.info("MedicalRecordService.getAll() was called.");
        return medicalRecordRepo.findAll();
    }

    @Override
    public List<MedicalRecord> getAllWithMedicationAndAllergies() {
        log.info("MedicalRecordService.getAllWithMedicationAndAllergies() was called.");
        return medicalRecordRepo.getAllWithMedicationAndAllergies();
    }
}
