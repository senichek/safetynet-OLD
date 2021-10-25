package com.open.safetynet.controllers;

import java.util.List;

import com.open.safetynet.models.MedicalRecord;
import com.open.safetynet.service.medicalRecord.MedicalRecordService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MedicalRecordController {

    protected final Logger log = LogManager.getLogger(MedicalRecordService.class);

    @Autowired
    private MedicalRecordService medicalRecordService;

    // TODO: Just for testing purposes, delete later
    @GetMapping("/medicalRecord/all")
    public List<MedicalRecord> getAll() {
            log.info("MedicalRecordController.getAll() was called.");
            return medicalRecordService.getAll();
    }

    @GetMapping("/medicalRecord/all/m")
    public List<MedicalRecord> getAllWithMedication() {
            log.info("MedicalRecordController.getAllWithMedicationAndAllergies() was called.");
            return medicalRecordService.getAllWithMedicationAndAllergies();
    }  
}
