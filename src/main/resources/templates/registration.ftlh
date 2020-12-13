<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as login_form>
<@c.page>
    <div class="container mt-5">
        <div class="row">
            <h1>Registration of new user</h1>
            <span>Sign up to get all the benefits of the platform</span>
        </div>

        <div class="row mt-3 mb-3">
            <span>Fill in all fields</span>
        </div>

        <#if message??>
            <div class="row mt-3 mb-3">
                <span style="color: red">${message}</span>
            </div>
        </#if>



        <form action="/registration" method="post" class="row g-3 needs-validation"
              <#if message??>novalidate </#if>>
            <div class="input-group  mb-1">
                <label for="fname" class="input-group-text  mr-1" > First name :</label>
                <input class="form-control mr-1" id="fname" type="text" name="firstname" required/>
            </div>
            <div class="input-group  mb-1">
                <label for="sname" class="input-group-text"> Second name :</label>
                <input class="form-control mr-1" id="sname" type="text" name="secondname" required/>
            </div>
            <div class="input-group  mb-1">
                <label for="mail" class="input-group-text  mr-1" > Email:</label>
                <input class="form-control mr-1" id="mail" type="email" name="email" required/>
            </div>
            <div class="input-group  has-validation  mb-1">
                <label for="login-inp" class="input-group-text  mr-1" > User Name :</label>
                <input class="form-control mr-1" id="login-inp" type="text" name="username" required/>
                <div class="invalid-feedback">
                    Please choose a username.
                </div>
            </div>
            <div class="input-group mb-1">
                <label for="password-inp" class="input-group-text mr-2" > Password: </label>
                <input class="form-control mr-2" id="password-inp" type="password" name="password" aria-describedby="password"/>
            </div>
            <div id="password" class="form-text" style="color: black">
                Your password must be 6-20 characters long, contain letters and numbers, and must not contain spaces, special characters, or emoji.
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <div class="input-group mb-1">
                <input class="btn btn-outline-light" type="submit" value="Sign In"/>
            </div>
        </form>

    </div>
</@c.page>