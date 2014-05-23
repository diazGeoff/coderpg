<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <meta name="layout" content="main"/>
    <title>${session.user.codename}</title>
</head>

<body>
<div id="headerwrap">
    <div class="container centered">
        <h2>Edit Warrior Profile</h2>
    </div>
</div>
<div class="container">
    <g:if test="${flash.message}">
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-6">
                <div class="alert alert-success">
                    <label for="feedback-msg" class="feedback-msg">${flash.message}</label>
                </div>
            </div>
        </div>
    </g:if>

    <div class="row">
        <div class="col-lg-3"></div>
        <div class="col-lg-5">
            <br>
            <form class="form-horizontal" action="update" method="post" role="form">
                <g:hiddenField name="id" value="${session.user.id}"/>
                <g:hiddenField name="version" value="${session.user.version}"/>
                <div class="form-group">
                    <g:render template="editForm" model="[user: player]"/>
                <br>
                <button type="submit" class="btn btn-large btn-success btn-block" name="create"><h4>Save my upadated Warrior profile!</h4></button>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>