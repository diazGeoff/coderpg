<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Missions</title>
</head>

<body>
<ul>
    <g:each in="${missionList}" var="mission">
    <li>${mission.name}</li>
    </g:each>
</ul>
</body>
</html>