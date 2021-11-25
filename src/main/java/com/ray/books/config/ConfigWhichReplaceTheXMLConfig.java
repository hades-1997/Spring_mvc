package com.ray.books.config;


import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import javax.sql.DataSource;
import java.beans.PropertyVetoException;
import java.util.Properties;

@Configuration
@ComponentScan(basePackages = "com.ray.books")
@EnableWebMvc
@EnableTransactionManagement
@EnableAspectJAutoProxy
public class ConfigWhichReplaceTheXMLConfig implements WebMvcConfigurer {

    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/view/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }


    @Bean
    public DataSource dataSource() throws PropertyVetoException {
        ComboPooledDataSource pooledDataSource = new ComboPooledDataSource();

        pooledDataSource.setDriverClass("com.mysql.cj.jdbc.Driver");
        pooledDataSource.setUser("root");
        pooledDataSource.setPassword("123456");
        pooledDataSource.setJdbcUrl("jdbc:mysql://127.0.0.1:3308/books?useSSL=false");
        pooledDataSource.setMaxPoolSize(20);
        pooledDataSource.setMaxIdleTime(30000);
        pooledDataSource.setMinPoolSize(5);

        return pooledDataSource;
    }


    @Bean
    public LocalSessionFactoryBean sessionFactory() throws PropertyVetoException {
        LocalSessionFactoryBean  sessionFactory = new LocalSessionFactoryBean();
        sessionFactory.setDataSource(dataSource());
        sessionFactory.setPackagesToScan(new String[] {"com.ray.books.entity"});
        sessionFactory.setHibernateProperties(hibernateProperties());
        return sessionFactory;
    }


    @Bean
    public PlatformTransactionManager hibernateTransactionManager() throws PropertyVetoException {
        HibernateTransactionManager hibernateTransactionManager = new HibernateTransactionManager();
        hibernateTransactionManager.setSessionFactory(sessionFactory().getObject());
        return hibernateTransactionManager;
    }


    private Properties hibernateProperties() {
        Properties hibernateProperties = new Properties();
        hibernateProperties.setProperty("hibernate.dialect", "org.hibernate.dialect.MySQLDialect");
        hibernateProperties.setProperty("hibernate.show_sql","true");
        return hibernateProperties;
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/css/**").addResourceLocations("/resources/css/");
        registry.addResourceHandler("/resources/images/**").addResourceLocations("/resources/images/");
    }
}