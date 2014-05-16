<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Homepage</title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/player')}">Home</a></li>
        <li><g:link action="profile">Profile</g:link></li>
        <li><g:link action="quests">Quests</g:link></li>
    </ul>
</div>
<h1>Welcome ${session.user.name}</h1>
<fieldset class="buttons">
    <g:link action="logout">Logout</g:link>
</fieldset>
</body>
</html>