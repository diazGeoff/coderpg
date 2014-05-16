<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Dashboard</title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/admin')}">Home</a></li>
        <li><g:link action="classes">Classes</g:link></li>
        <li><g:link controller="quest">Quests</g:link></li>
    </ul>
</div>
<h1>Welcome ${session.admin.username}</h1>
<fieldset class="buttons">
    <g:link action="logout">Logout</g:link>
</fieldset>
</body>
</html>