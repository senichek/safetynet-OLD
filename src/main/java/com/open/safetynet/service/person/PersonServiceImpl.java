package com.open.safetynet.service.person;

import java.util.List;

import com.open.safetynet.models.Person;
import com.open.safetynet.repository.PersonRepo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PersonServiceImpl implements PersonService{

    @Autowired
    private PersonRepo personRepo;

    @Override
    public List<Person> getAll() {
        return personRepo.findAll();
    }
}
