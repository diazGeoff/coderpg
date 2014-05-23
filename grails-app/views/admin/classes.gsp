<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Manage Classes</title>
</head>
<body>
<div id="headerwrap">
    <div class="container">
        <div>
            <h3 class="text-center"> MANAGE CLASS </h3>
        </div>
    </div>
</div>

<div id="intro">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <h2>
                    Class List
                </h2>
            </div>
            <div class="col-lg-6">
                <div class="btn-group pull-right">
                    <a href="/coderpg/admin/addClass" class="btn btn-info">New Class</a>
                </div>
            </div>

        </div>
        <hr>

        <g:each in="${classes}" status="i" var="classInstance">
            <div class="row margin-list">
                <div class="col-lg-1"></div>
                <div class="col-lg-3 img-centered">
                        <img src="http://placehold.it/150x150" class="img-responsive center-block" alt="Quest LOGO" />
                        <h3 class="text-center">${classInstance.name}</h3>
                </div>
                <div class="col-lg-6">
                    <p class="lead text-justify">${classInstance?.description}</p>
                </div>
                <div class="col-lg-2">
                    <div class="btn-group pull-right">
                        <g:form>
                            <g:hiddenField name="id" value="${classInstance?.id}" />
                            <a href="/coderpg/admin/editClass/${classInstance?.id}" class="edit btn btn-default">Edit</a>
                            <g:actionSubmit class="delete btn btn-default" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                        </g:form>
                    </div>
                </div>
            </div>
        </g:each>
%{--<h2>Classes</h2>
<ul>
    <g:each in="${classes}" status="i" var="classInstance">
        <li>${fieldValue(bean: classInstance, field: "name")}<a href="/coderpg/admin/editClass/${classInstance.id}">Edit</a> <a
                href="/coderpg/quest/list/${classInstance.id}">View Quests</a></li>
    </g:each>
</ul>--}%
</body>
</html>