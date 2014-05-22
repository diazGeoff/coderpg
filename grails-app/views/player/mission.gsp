<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Missions</title>
</head>

<body>
    <h1>Mission</h1>
    <g:if test="${status.hasTaken[0] == true && status != null}">
        <h2>Passed This Mission</h2>
    </g:if>
    <g:if test="${status.hasTaken[0] == false && status != null}">
        <h2>Failed This Mission</h2>
    </g:if>
    <h2>${mission.name}</h2>
    <h2>${mission.description}</h2>
    <h3>${mission.points} Points</h3>
    <h3>Input</h3>
    <g:textArea name="input" disabled="" value="${input}"/>
    <h3>Output</h3>
    <g:textArea name="output" disabled="" value="${output}"/>
    <g:form action="validate">
        <g:hiddenField name="player.id" value="${session.user.id}" />
        <g:hiddenField name="points" value="${mission.points}"/>
        <g:hiddenField name="mission.id" value="${mission.id}"/>
        <select name="check" id="check">
            <option value="true" selected>Passed</option>
            <option value="false">Failed</option>
        </select>
        <g:submitButton name="submit" />
    </g:form>
</body>
</html>