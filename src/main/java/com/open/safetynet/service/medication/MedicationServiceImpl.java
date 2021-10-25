package com.open.safetynet.service.medication;

import java.util.List;
import com.open.safetynet.models.Medication;
import com.open.safetynet.repository.MedicationRepo;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MedicationServiceImpl implements MedicationService{

    protected final Logger log = LogManager.getLogger(MedicationService.class);

    @Autowired
    private MedicationRepo medicationRepo;

    @Override
    public List<Medication> getAll() {
        log.info("MedicationService.getAll() was called.");
        return medicationRepo.findAll();
    }
}
