package com.cafedev.api.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

  @Override
  protected void configure(HttpSecurity http) throws Exception {
    http
        .authorizeRequests()
          .antMatchers("/cafepos/api/v1/hello").permitAll() // Permitir acceso sin autenticación a este endpoint
          .anyRequest().authenticated()
          .and()
        .formLogin()
          .loginPage("/login") // Configura tu página de login si es necesario
          .permitAll()
          .and()
        .logout()
          .permitAll();
  }
}
