<%@ page import="com.coderpg.Quest" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'quest.label', default: 'Quest')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		%{--<a href="#edit-quest" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="edit-quest" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${questInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${questInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form method="post" >
				<g:hiddenField name="id" value="${questInstance?.id}" />
				<g:hiddenField name="version" value="${questInstance?.version}" />
				<fieldset class="form">
					<g:render template="form" model="[questInstance: questInstance]"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>--}%
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
                <h3 class="text-center">Update Quest</h3>
            </div>
            <div class="row">
                <div class="col-lg-3"></div>
                <div class="col-lg-6">
                    <br>
                    <hr/>
                    <form role="form" action="update" method="post" enctype="plain">
                        <g:hiddenField name="id" value="${questInstance?.id}" />
                        <g:hiddenField name="version" value="${questInstance?.version}" />
                        <g:render template="form" model="[questInstance: questInstance]" />
                        <br>
                        <button type="submit" class="btn btn-large btn-success btn-block" name="create"><h4>Update this QUEST!</h4></button>
                    </form>
                </div>
                <div class="col-lg-6"></div>
            </div>
        </div>
    </div>
    </body>
</html>
