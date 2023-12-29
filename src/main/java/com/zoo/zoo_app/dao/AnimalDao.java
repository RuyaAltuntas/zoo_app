package com.zoo.zoo_app.dao;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AnimalDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public void readAnimalFromDB() {
      Map<String,Object> result=  this.jdbcTemplate.queryForMap("select*from animal where AnimalID=?",2);
        System.out.println(result);
        //// can yamannn
        }
    
}
