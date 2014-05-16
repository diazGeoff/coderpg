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
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-4">
                <h3>Login</h3>
                <br>
                <form role="form" action="login" method="post" enctype="plain">
                    <g:render template="loginForm" />
                    <br>
                    <button type="submit" class="btn btn-large btn-success" name="login">Login</button>
                </form>
            </div>
            <div class="col-lg-6"></div>
        </div>
    </div>
</div>
</div>
</body>
</html>