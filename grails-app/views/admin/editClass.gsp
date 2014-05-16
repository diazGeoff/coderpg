<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
    <meta name="layout" content="main"/>
    <title>Edit Class</title>
</head>

<body>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <h1>Edit Class</h1>
    <g:form action="editClass" method="post">
        <g:hiddenField name="id" value="${classes?.id}"/>
        <g:hiddenField name="version" value="${classes?.version}"/>
        <fieldset class="form">
            <g:render template="addClass" model="[classInstance: classes]"/>
        </fieldset>
        <fieldset class="buttons">
            <g:submitButton name="submit" value="Edit"/>
        </fieldset>
    </g:form>
</body>
</html>