package com.open.safetynet.controllers;

import java.util.List;

import com.open.safetynet.models.Person;
import com.open.safetynet.service.person.PersonService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PersonController {

    @Autowired
    private PersonService personService;

    @GetMapping("/person/all")
    public List<Person> getAll() {
            return personService.getAll();
    }    
}
