package com.zoo.zoo_app;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.web.bind.annotation.GetMapping;

import com.zoo.zoo_app.dao.AnimalDao;
import com.zoo.zoo_app.service.AnimalService;
@SpringBootApplication


public class ZooAppApplication {


    public static void main(String[] args) {
        SpringApplication.run(ZooAppApplication.class, args);
    }
    @GetMapping("/zooview.html")
    public String zooview() {
    return "zooview";
}
@Autowired
private AnimalDao animalDao;

    @GetMapping("/api/animals")
    public List<Map<String, Object>> getAllAnimals() {
        return animalDao.readAnimalfromDB();
    }
    @Bean
    public CommandLineRunner commandLineRunner(ApplicationContext ctx) {
        return args -> {
            AnimalService animalService = ctx.getBean(AnimalService.class);
            animalService.fetchanimal();
        };
    }
}