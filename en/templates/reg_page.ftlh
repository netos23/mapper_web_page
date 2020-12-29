<#import "parts/common.ftl" as c>
<@c.page>
    <div class="container-sm">
        <div class="row justify-content-md-center  mb-5  mt-5 ">
            <div class="col-sm col-5">
                <div class="container-sm mt-5 shadow-lg p-3  bg-white rounded">
                    <div class="row mb-4">
                        <div class="col-1 mr-1">
                            <img src="static/logo_black.png" alt="" width="50" height="50" class="d-inline-block align-center">
                        </div>
                        <div class="col-2">
                            <h1>Mapper</h1>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <span>Sign up to get all the benefits of the platform</span>
                        <span>Fill in all fields</span>
                    </div>

                    <#if message??>
                        <div class="row mt-3 mb-3">
                            <span style="color: red">${message}</span>
                        </div>
                    </#if>


                    <form action="/registration" method="post" class="row g-3 needs-validation"
                          <#if message??>novalidate </#if>>

                        <div class="input-group  mb-1 w-50">
                            <label for="fname" class="input-group-text  mr-1"> First name :</label>
                            <input class="form-control mr-1" id="fname" type="text" name="firstname" required/>
                        </div>

                        <div class="input-group  mb-1 w-50">
                            <label for="sname" class="input-group-text"> Second name :</label>
                            <input class="form-control mr-1" id="sname" type="text" name="secondname" required/>
                        </div>

                        <div class="input-group  mb-1 w-50">
                            <label for="mail" class="input-group-text  mr-1"> Email:</label>
                            <input class="form-control mr-1" id="mail" type="email" name="email" required/>
                        </div>

                        <div class="input-group  has-validation  mb-1 w-50">
                            <label for="login-inp" class="input-group-text  mr-1"> User Name :</label>
                            <input class="form-control  mr-1" id="login-inp" type="text" name="username" required/>
                        </div>

                        <div class="input-group mb-1 w-50">
                            <label for="password-inp" class="input-group-text mr-2"> Password: </label>
                            <input class="form-control mr-2" id="password-inp" type="password" name="password"
                                   aria-describedby="password"/>
                        </div>

                        <#--<div class="input-group mb-1 w-50">
                            <label for="password-conf" class="input-group-text mr-2"> Confirm : </label>
                            <input class="form-control mr-2" id="password-conf" type="password" name="password"/>
                        </div>-->

                        <div id="password" class="form-text">
                            Your password must be 6-20 characters long, contain letters and numbers, and must not
                            contain spaces, special characters, or emoji.
                        </div>

                        <input type="hidden" name="_csrf" value="${_csrf.token}">
                        <div class="input-group mb-1">
                            <input class="btn btn-outline-dark" type="submit" value="Sign Up"/>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</@c.page>