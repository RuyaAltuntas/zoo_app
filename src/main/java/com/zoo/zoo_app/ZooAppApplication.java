package com.zoo.zoo_app;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;

import com.zoo.zoo_app.service.AnimalService;

@SpringBootApplication
public class ZooAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(ZooAppApplication.class, args);
	}

	@Bean
	public CommandLineRunner commandLineRunner(ApplicationContext ctx){
		return args-> {
			AnimalService service = ctx.getBean(AnimalService.class);
			service.fetchAnimal();
		};
	}

}