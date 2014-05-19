<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Login</title>
</head>

<body>
%{--<h1>Login to your Account</h1>
<g:form action="login">
    <fieldset class="form">
        <g:render template="loginForm" />
    </fieldset>
    <fieldset class="buttons">
        <g:submitButton name="login" value="Login"/>
    </fieldset>
</g:form>--}%
<div id="footerwrap">
    <div class="container">
        <g:if test="${flash.message}">
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-6">
                    <div class="alert alert-danger">
                        <label for="feedback-msg" class="feedback-msg">${flash.message}</label>
                    </div>
                </div>
            </div>
        </g:if>
        <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-5">
                    <h3>Start Working on challenges now!</h3>
                </div>
        </div>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-6">
                <h3>Login</h3>
                <br>
                <form role="form" action="login" method="post" enctype="plain">
                    <g:render template="loginForm" />
                    <br>
                    <button type="submit" class="btn btn-large btn-success btn-block" name="login"><h4>Login on CodeRPG!</h4></button>
                </form>
            </div>
            <div class="col-lg-6"></div>
        </div>
    </div>
</div>
</div>
</body>
</html>