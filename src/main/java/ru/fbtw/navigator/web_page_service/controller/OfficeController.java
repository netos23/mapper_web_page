package ru.fbtw.navigator.web_page_service.controller;

import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

public class OfficeController {
    @GetMapping("/office")
    public String office(Map<String,Object> model){
        model.put("info","top info");
        return "office";
    }
}
