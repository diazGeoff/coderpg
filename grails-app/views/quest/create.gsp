<%@ page import="com.coderpg.Quest" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'quest.label', default: 'Quest')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
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
                <h3 class="text-center">Create New Quest</h3>
            </div>
            <div class="row">
                <div class="col-lg-3"></div>
                <div class="col-lg-6">
                    <br>
                    <hr/>
                    <form role="form" action="save" method="post" enctype="plain">
                        <g:render template="form" model="[update: false]"/>
                        <br>
                        <button type="submit" class="btn btn-large btn-success btn-block" name="create"><h4>Create this QUEST!</h4></button>
                    </form>
                </div>
                <div class="col-lg-6"></div>
            </div>
        </div>
    </div>
	</body>
</html>
