<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Manage Classes</title>
</head>
<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/admin')}">Home</a></li>
        <li><g:link action="classes">Classes</g:link></li>
        <li><g:link controller="quest">Quests</g:link></li>
    </ul>
</div>
<ul>
    <li><a href="${createLink(uri: "/admin/addClass")}">Add</a></li>
</ul>
<h2>Classes</h2>
<ul>
    <g:each in="${classes}" status="i" var="classInstance">
        <li>${fieldValue(bean: classInstance, field: "name")}<a href="/coderpg/admin/editClass/${classInstance.id}">Edit</a> <a
                href="/coderpg/quest/list/${classInstance.id}">View Quests</a></li>
    </g:each>
</ul>
</body>
</html>