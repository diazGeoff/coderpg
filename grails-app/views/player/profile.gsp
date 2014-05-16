<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <meta name="layout" content="main"/>
    <title>${session.user.codename}</title>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/player')}">Home</a></li>
        <li><g:link action="profile">Profile</g:link></li>
        <li><g:link action="quests">Quests</g:link></li>
    </ul>
</div>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<h1>Edit Your Profile</h1>
<g:form action="update" method="post">
    <g:hiddenField name="id" value="${session.user.id}"/>
    <g:hiddenField name="version" value="${session.user.version}"/>
    <fieldset class="form">
        <g:render template="editForm" model="[user: player]"/>
    </fieldset>
    <fieldset class="buttons">
        <g:submitButton name="edit" value="Save"/>
    </fieldset>
</g:form>
</body>
</html>