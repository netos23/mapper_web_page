<#include "security.ftl">
<#import "security.ftl" as auth>
<nav class="navbar navbar-expand-lg navbar-light shadow-lg p-3 bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">
            <img src="static/logo_black.png" alt="" width="40" height="40" class="d-inline-block align-top">
            Mapper
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link disabled" href="/bot">Telegram bot</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="/app">Mobile app</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link  disabled" href="/misc">Other solutions</a>
                </li>
            </ul>
            <span class="navbar-text mr-3">${name}</span>
            <@auth.login_btn/>
        </div>
    </div>
</nav>