
<%@ page import="com.coderpg.Quest" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'quest.label', default: 'Quest')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-quest" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-quest" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list quest">
			
				<g:if test="${questInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="quest.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${questInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${questInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="quest.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${questInstance}" field="description"/></span>
					
				</li>
				</g:if>

                <g:if test="${questInstance?.chosenclass}">
                <li class="fieldcontain">
                    <span class="property-label"><g:message code="quest.chosenclass.label" default="Class" /></span>
                        <span class="property-label"><g:fieldValue field="chosenclass.name" bean="${questInstance}" /></span>
                </li>
                </g:if>

				<g:if test="${questInstance?.missions}">
				<li class="fieldcontain">
					<span id="missions-label" class="property-label"><g:message code="quest.missions.label" default="Missions" /></span>
					
						<g:each in="${questInstance.missions}" var="m">
						<span class="property-value" aria-labelledby="missions-label"><g:link controller="mission" action="show" id="${m.id}">${m?.name}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${questInstance?.id}" />
					<g:link class="edit" action="edit" id="${questInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
