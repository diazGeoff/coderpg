<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Login</title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><g:link action="create">Create</g:link></li>
    </ul>
</div>
<h1>Login to your Account</h1>
<g:form action="login">
    <fieldset class="form">
        <g:render template="loginForm" />
    </fieldset>
    <fieldset class="buttons">
        <g:submitButton name="login" value="Login"/>
    </fieldset>
</g:form>
</body>
</html>