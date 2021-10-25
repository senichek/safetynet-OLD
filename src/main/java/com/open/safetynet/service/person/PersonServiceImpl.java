package com.open.safetynet.service.person;

import java.util.List;

import com.open.safetynet.models.Person;
import com.open.safetynet.repository.PersonRepo;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PersonServiceImpl implements PersonService{

    protected final Logger log = LogManager.getLogger(PersonService.class);

    @Autowired
    private PersonRepo personRepo;

    @Override
    public List<Person> getAllWithMedicalRecord() {
        log.info("PersonService.getAllWithMedicalRecord() was called.");
        return personRepo.getAllWithMedicalRecord();
    }
}
