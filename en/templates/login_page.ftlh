<#import "parts/common.ftl" as c>
<@c.page>
    <div class="container">
        <div class="row justify-content-md-center  mb-5  mt-5 ">
            <div class="col col-5">
                <div class="container mt-5 shadow-lg p-3  bg-white rounded">
                    <div class="row mb-4">
                        <div class="col-1">
                            <img src="static/logo_black.png" alt="" width="50" height="50" class="d-inline-block align-center">
                        </div>
                        <div class="col-2">
                            <h1>Mapper</h1>
                        </div>
                    </div>

                    <#if message??>
                        <div class="row mt-3 mb-3">
                            <span style="color: red">${message}</span>
                        </div>
                    </#if>


                    <form action="/login" method="post" class="row g-3 needs-validation"
                          <#if message??>novalidate </#if>>

                        <div class="input-group  has-validation  mb-1">
                            <label for="login-inp" class="input-group-text  mr-1"> User Name :</label>
                            <input class="form-control  mr-1" id="login-inp" type="text" name="username" required/>
                        </div>

                        <div class="input-group mb-1">
                            <label for="password-inp" class="input-group-text mr-2"> Password: </label>
                            <input class="form-control mr-2" id="password-inp" type="password" name="password"/>
                        </div>

                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <div class="input-group mb-1">
                            <input class="btn btn-outline-dark" type="submit" value="Sign In"/>
                        </div>
                        <div class="input-group mb-1">
                            <a href="/registration">No account? Register</a>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</@c.page>