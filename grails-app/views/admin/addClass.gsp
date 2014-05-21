<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Add Class</title>
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
            <h3 class="text-center">Create New Class</h3>
        </div>
        <div class="row">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                <br>
                <hr/>
                <form role="form" action="addClass" method="post" enctype="plain">
                    <g:render template="addClass" model="[classInstance: classes]" />
                    <br>
                    <button type="submit" class="btn btn-large btn-success btn-block" name="create"><h4>Create your Class</h4></button>
                </form>
            </div>
            <div class="col-lg-6"></div>
        </div>
    </div>
</div>

</body>
</html>