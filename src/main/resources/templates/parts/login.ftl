<#macro login path>
    <form action="${path}" method="post" class="row g-3 needs-validation"
            <#if message??>novalidate </#if>
    >
        <div class="input-group  mb-3">
            <label for="login-inp" class="input-group-text  mr-1" > User Name :</label>
            <input class="form-control mr-1" id="login-inp" type="text" name="username" required/>
        </div>
        <div class="input-group mb-3">
            <label for="password-inp" class="input-group-text mr-2" > Password: </label>
            <input class="form-control mr-2" id="password-inp" type="password" name="password"/>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <div class="input-group mb-3">
            <input class="btn btn-outline-light" type="submit" value="Sign In"/>
        </div>
    </form>
</#macro>

<#macro logout>
    <div class="nav-item">
        <form action="/logout" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" class="btn btn-primary" value="Sign Out"/>
        </form>
    </div>
</#macro>