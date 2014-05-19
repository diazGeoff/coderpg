<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Quest Page</title>
</head>

<body>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/player')}">Home</a></li>
        <li><g:link action="profile">Profile</g:link></li>
        <li><g:link action="quests">Quests</g:link></li>
    </ul>
</div>
<ul><g:if test="${missionList}">
        <g:each in="${missionList}" var="mission">
            <li><a href="/coderpg/player/quests/${mission.quest.id}/mission/${mission.id}">${mission.name}</a></li>
        </g:each>
    </g:if>
    <g:else>
        <g:each in="${questList?}" var="quest">
            <li><a href="/coderpg/player/quests/${quest.id}">${quest.name}</a></li>
        </g:each>
    </g:else>
</ul>
</body>
</html>