package com.open.safetynet.controllers;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(produces = MediaType.APPLICATION_JSON_VALUE)
public class MainController {

    @GetMapping("/")
	public String greetings() {
		return "Greetings from Safety Net!";
	}

}
