package ru.fbtw.navigator.web_page_service.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class MainController {

    @GetMapping("/")
    public String main(Map<String,Object> model) {
        return "main";
    }
   @GetMapping("/bot")
    public String bot(Map<String,Object> model) {
        return "main";
    }
   @GetMapping("/app")
    public String app(Map<String,Object> model) {
        return "main";
    }
   @GetMapping("/misc")
    public String misc(Map<String,Object> model) {
        return "main";
    }



}
