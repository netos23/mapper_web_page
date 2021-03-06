package ru.fbtw.navigator.web_page_service.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.fbtw.navigator.web_page_service.domain.User;
import ru.fbtw.navigator.web_page_service.repository.UserRepo;
import ru.fbtw.navigator.web_page_service.service.RegistrationService;
import ru.fbtw.navigator.web_page_service.service.UserService;

import java.util.Map;

@Controller
public class RegistrationController {

    private final RegistrationService service;
    private final UserRepo userRepo;
    private final UserService userService;

    public RegistrationController(RegistrationService service, UserRepo userRepo, UserService userService) {
        this.service = service;
        this.userRepo = userRepo;
        this.userService = userService;
    }

    @GetMapping("/registration")
    public String registration() {
        return "reg_page";
    }

    @PostMapping("/registration")
    public String addUser(User user, Map<String,Object> model) {
        User userFromDb = userRepo.findUserByUsername(user.getUsername());

        if (userFromDb != null) {
            model.put("message","User with that username exist");
            return "reg_page";
        }

        userFromDb = userRepo.findUserByEmail(user.getEmail());

        if (userFromDb != null) {
            model.put("message","The user with this email address is already registered");
            return "reg_page";
        }

        if(!service.validateUserName(user.getUsername())){
            model.put("message","The user name does not meet one or more requirements");
            return "reg_page";
        }

        if (!service.validatePassword(user)){
            model.put("message","The password does not meet the requirements " +
                    "or does not match the confirmation");
            return "reg_page";
        }

        userService.addUser(user);


        return "redirect:/login";
    }
}
