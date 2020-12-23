package ru.fbtw.navigator.web_page_service.domain;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    SERVICE,
    USER;

    @Override
    public String getAuthority() {
        return name();
    }
}
