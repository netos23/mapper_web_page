<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as login_form>
<@c.page>
    <div class="container mt-5">
        <@login_form.login "/login"/>
        <a href="/registration">Add new user</a>
    </div>
</@c.page>

