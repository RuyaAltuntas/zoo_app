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
      Map<String,Object> result=  this.jdbcTemplate.queryForMap("select*from visitors where visitorID=?",9000007);
        System.out.println(result);
  
        }
    
}
