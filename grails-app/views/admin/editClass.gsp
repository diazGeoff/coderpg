<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
    <meta name="layout" content="main"/>
    <title>Edit Class</title>
</head>

<body>
<div id="intro">
    <div class="container">
        <g:if test="${flash.message}">
            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-4">
                    <div class="alert alert-danger">
                        ${flash.message}
                    </div>
                </div>
            </div>
        </g:if>
        <div class="row">
            <h3 class="text-center">Update Class</h3>
        </div>
        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                <br>
                <hr/>
                <form role="form" action="updateClass" method="post" enctype="plain">
                    <g:hiddenField name="id" value="${classes?.id}"/>
                    <g:hiddenField name="version" value="${classes?.version}"/>
                    <g:render template="addClass" model="[classInstance: classes]" />
                    <br>
                    <button type="submit" class="btn btn-large btn-success btn-block" name="create"><h4>Update this Class</h4></button>
                </form>
            </div>
            <div class="col-lg-6"></div>
        </div>
    </div>
</div>

    %{--<g:if test="${flash.message}">
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
            <button type="submit" class="btn btn-large btn-success btn-block" name="create"><h4>Add this Class</h4></button>
        </fieldset>
    </g:form>--}%
</body>
</html>