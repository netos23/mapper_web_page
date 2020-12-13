<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as login_form>
<@c.page>
    <div>Some text ${info}</div>
    <@login_form.logout/>
</@c.page>