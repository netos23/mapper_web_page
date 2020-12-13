package ru.fbtw.navigator.web_page_service.service;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class RegistrationServiceTest {
    @Autowired
    RegistrationService registrationService;

    @ParameterizedTest
    @CsvSource(value = { "login, true", "dsfdsf223432---___, true", "dsfds` dsfdsf|, false" })
    void loginPattern(String expression, boolean value){
        boolean res = registrationService.validateUserName(expression);
        if(value){
            Assertions.assertTrue(res);
        }else{
            Assertions.assertFalse(res);
        }
    }
}