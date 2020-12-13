package ru.fbtw.navigator.web_page_service.service;

import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Service;
import ru.fbtw.navigator.web_page_service.domain.User;

import java.util.regex.Pattern;

@Service
public class RegistrationService {
    private Pattern loginPattern;
    private Pattern passwordPattern;

    public RegistrationService() {
        loginPattern = Pattern.compile("[a-zA-z1-9_-]+");
    }

    public boolean validateUserName(String username) {
        int length = username.length();
        if (length > 6 && length < 20) {
            if (loginPattern.matcher(username).matches()) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    public boolean validatePassword(User user) {
        return true;
    }
}
