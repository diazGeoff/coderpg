
<%@ page import="com.coderpg.Mission" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mission.label', default: 'Mission')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-mission" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-mission" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list mission">
			
				<g:if test="${missionInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="mission.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${missionInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${missionInstance?.input}">
				<li class="fieldcontain">
					<span id="input-label" class="property-label"><g:message code="mission.input.label" default="Input" /></span>
					
						<span class="property-value" aria-labelledby="input-label"><g:fieldValue bean="${missionInstance}" field="input"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${missionInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="mission.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${missionInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${missionInstance?.output}">
				<li class="fieldcontain">
					<span id="output-label" class="property-label"><g:message code="mission.output.label" default="Output" /></span>
					
						<span class="property-value" aria-labelledby="output-label"><g:fieldValue bean="${missionInstance}" field="output"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${missionInstance?.quest}">
				<li class="fieldcontain">
					<span id="quest-label" class="property-label"><g:message code="mission.quest.label" default="Quest" /></span>
					
						<span class="property-value" aria-labelledby="quest-label"><g:link controller="quest" action="show" id="${missionInstance?.quest?.id}">${missionInstance?.quest?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${missionInstance?.id}" />
					<g:link class="edit" action="edit" id="${missionInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
