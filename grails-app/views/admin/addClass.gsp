<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Add Class</title>
</head>

<body>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<h1>Add Your Class...</h1>
<g:form action="addClass" method="post">
    <fieldset class="form">
        <g:render template="addClass" />
    </fieldset>
    <fieldset class="buttons">
        <g:submitButton name="submit" value="Add"/>
    </fieldset>
</g:form>
</body>
</html>