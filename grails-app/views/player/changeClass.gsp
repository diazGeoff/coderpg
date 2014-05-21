<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Change CLass</title>
</head>

<body>
    <h1>Choose Class</h1>
    <p>
        <h2>Current Class</h2><br/>
        ${currentClass?.chosenclass?.name}
    </p>
    <p>
        <h2>Other Classes</h2>
        <ul>
            <g:each in="${classList?}" var="classes">
                <li>${classes?.name}</li>
                <g:form action="changeClass">
                    <g:hiddenField name="playerId" value="${currentClass?.id}"/>
                    <g:hiddenField name="classId" value="${classes?.id}"/>
                    <g:submitButton name="submit" value="Make This My Current Class"/>
                </g:form>
            </g:each>
        </ul>
    </p>
</body>
</html>