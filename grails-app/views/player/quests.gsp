<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Quest Page</title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/player')}">Home</a></li>
        <li><g:link action="profile">Profile</g:link></li>
        <li><g:link action="quests">Quests</g:link></li>
    </ul>
</div>
<ul>
    <g:each in="${questList?}" var="quest">
        <li><a href="/coderpg/player/missions/${quest.id}">${quest.name}</a></li>
    </g:each>
</ul>
</body>
</html>