package com.atguigu.yygh.gateway.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/name")
public class controllerName {
    @GetMapping("test")
    public String test(){
        return "linjunhang";
    }
}
