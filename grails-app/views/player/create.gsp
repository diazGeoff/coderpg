<%@ page import="com.coderpg.Player" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'player.label', default: 'Player')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-player" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-player" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${playerInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${playerInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			%{--<g:form action="save" >--}%
				%{--<fieldset class="form">--}%
					%{--<g:render template="form"/>--}%
				%{--</fieldset>--}%
				%{--<fieldset class="buttons">--}%
					%{--<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
				%{--</fieldset>--}%
			%{--</g:form>--}%

            <div id="footerwrap">
                <div class="container">
                    <div class="col-lg-4">
                        <h3>Sign-Up</h3>
                        <br>
                        <form role="form" action="save" method="post" enctype="plain">

                            <br>
                            <button type="submit" class="btn btn-large btn-success">REGISTER</button>
                        </form>
                    </div>
                </div>
            </div>
		</div>
	</body>
</html>
