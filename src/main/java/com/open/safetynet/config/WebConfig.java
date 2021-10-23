package com.open.safetynet.config;

import javax.sql.DataSource;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.open.safetynet.web.JacksonObjectMapper;

import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.init.DataSourceInitializer;
import org.springframework.jdbc.datasource.init.ResourceDatabasePopulator;

@Configuration
public class WebConfig {

    @Bean
    public DataSource dataSource() {
        DataSourceBuilder dataSourceBuilder = DataSourceBuilder.create();
        dataSourceBuilder
       // .driverClassName("com.mysql.jdbc.Driver")
        .url("jdbc:mysql://localhost:3306/safetynet")
        .username("root")
        .password("rootroot");
        return dataSourceBuilder.build();

        // jdbc:mysql://localhost:3306/prod","root","rootroot");
    }

    @Bean
    public DataSourceInitializer dataSourceInitializer (){
        ResourceDatabasePopulator resourceDatabasePopulator = new ResourceDatabasePopulator();
        resourceDatabasePopulator.addScript(new ClassPathResource("/database/initDB.sql"));
        //resourceDatabasePopulator.addScript(new ClassPathResource("/database/PopulateDB.sql"));
        DataSourceInitializer dataSourceInitializer = new DataSourceInitializer();
        dataSourceInitializer.setDataSource(dataSource());
        dataSourceInitializer.setDatabasePopulator(resourceDatabasePopulator);
        return dataSourceInitializer;
    }

    @Bean
    public ObjectMapper jacksonObjectMapper() {
        return JacksonObjectMapper.getMapper();
    }
}
