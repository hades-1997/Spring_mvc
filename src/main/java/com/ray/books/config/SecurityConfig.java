package com.ray.books.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    @Qualifier("myUserDetailsService")
    private UserDetailsService myUserDetailsService;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {

//        User.UserBuilder users = User.withDefaultPasswordEncoder();
//
//        auth.inMemoryAuthentication().withUser(users
//                .username("ray")
//                .password("password")
//                .roles("EMPLOYEE","ADMIN"));
//
//        auth.inMemoryAuthentication().withUser(users
//                .username("tommy")
//                .password("password")
//                .roles("EMPLOYEE"));
        auth.userDetailsService(myUserDetailsService).passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure(HttpSecurity httpSecurity) throws Exception {
        httpSecurity
                // tắt cấu hình csrf
                .csrf().disable()
                .authorizeRequests()
                // any request must be authenticated (must be logged in)
                .antMatchers("/resources/css/**").permitAll()
                .antMatchers("/books/list").hasRole("EMPLOYEE")
                .antMatchers("/admin/**", "/books/**","/customer/**").hasRole("ADMIN")
                // comment out because only users have role can access.
                //.anyRequest().authenticated()
                .and()
                .formLogin()
                // URL for custom login page
                // must use field name "username" and "password"
                .loginPage("/showMyLoginPage")
                // Spring Security provides by default (no code require)
                .loginProcessingUrl("/authenticateTheUser")
                // allow everyone to see login page
                .permitAll()
                .and()
                .logout().permitAll()
                .and()
                .exceptionHandling().accessDeniedPage("/access-denied");
    }

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        return encoder;
    }
}