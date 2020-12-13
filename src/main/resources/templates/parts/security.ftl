<#import "login.ftl" as login>
<#assign
    known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
        user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
        name = user.getUsername()
    >

    <#else >
        <#assign
            name = ""
        >
</#if>

<#macro login_btn>
    <#if known>
       <@login.logout/>
    <#else >
        <div>
            <form action="/login" method="get">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input type="submit" class="btn btn-primary" value="Log in"/>
            </form>
        </div>
    </#if>
</#macro>