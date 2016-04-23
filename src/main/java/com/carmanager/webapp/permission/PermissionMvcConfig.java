package com.carmanager.webapp.permission;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration  
@ComponentScan(basePackages={"org.exam.web"})  
@EnableWebMvc  
public class PermissionMvcConfig extends WebMvcConfigurerAdapter{
	@Override  
    public void addInterceptors(InterceptorRegistry registry) {  
        registry.addInterceptor(new PermissionInterceptor());  
    } 
	
}
