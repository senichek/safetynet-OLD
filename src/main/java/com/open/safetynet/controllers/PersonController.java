package com.open.safetynet.controllers;

import java.util.List;

import com.open.safetynet.models.Person;
import com.open.safetynet.service.person.PersonService;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PersonController {

    protected final Logger log = LogManager.getLogger(PersonService.class);

    @Autowired
    private PersonService personService;

    // TODO: Just for testing purposes, delete later
    @GetMapping("/person/all")
    public List<Person> getAll() {
            log.info("PersonController.getAllWithMedicalRecord() was called.");
            return personService.getAllWithMedicalRecord();
    }    
}
