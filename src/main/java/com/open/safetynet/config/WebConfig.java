package com.open.safetynet.config;

import javax.sql.DataSource;

import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;

public class WebConfig {

    @Bean
    public DataSource dataSource() {
        DataSourceBuilder dataSourceBuilder = DataSourceBuilder.create();
        dataSourceBuilder
        .driverClassName("com.mysql.jdbc.Driver")
        .url("localhost:3306/safetynet")
        .username("root")
        .password("rootroot");
        return dataSourceBuilder.build();

        // jdbc:mysql://localhost:3306/prod","root","rootroot");
    }
}
