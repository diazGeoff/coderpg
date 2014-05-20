<%@ page import="com.coderpg.Player" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'player.label', default: 'Player')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
%{--<a href="#create-player" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
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
    </g:hasErrors>--}%
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
                    <h3 class="text-center">CodeRPG helps you to improve your skills!</h3>
            </div>
            <div class="row">
                <div class="col-lg-3"></div>
                <div class="col-lg-6">
                    <br>
                    <p class="text-center lead">Sign-up now and prepare to fight.</p>
                    <hr/>
                    <form role="form" action="save" method="post" enctype="plain">
                        <g:render template="form" />
                        <br>
                        <button type="submit" class="btn btn-large btn-success btn-block" name="create"><h4>Sign me up on CodeRPG!</h4></button>
                    </form>
                </div>
                <div class="col-lg-6"></div>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>
