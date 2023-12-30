package com.zoo.zoo_app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import com.zoo.zoo_app.dao.AnimalDao;

import java.util.List;
import java.util.Map;

@RestController
public class AnimalController {

    @Autowired
    private AnimalDao animalDao;

    @GetMapping("/api/animals")
    public List<Map<String, Object>> getAllAnimals() {
        return animalDao.readAnimalfromDB();
    }
}