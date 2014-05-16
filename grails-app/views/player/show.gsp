
<%@ page import="com.coderpg.Player" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'player.label', default: 'Player')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-player" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/player')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-player" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list player">
			
				<g:if test="${playerInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="player.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${playerInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.codename}">
				<li class="fieldcontain">
					<span id="codename-label" class="property-label"><g:message code="player.codename.label" default="Codename" /></span>
					
						<span class="property-value" aria-labelledby="codename-label"><g:fieldValue bean="${playerInstance}" field="codename"/></span>
					
				</li>
				</g:if>


				<g:if test="${playerInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="player.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${playerInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.birthdate}">
				<li class="fieldcontain">
					<span id="birthdate-label" class="property-label"><g:message code="player.birthdate.label" default="Birthdate" /></span>
					
						<span class="property-value" aria-labelledby="birthdate-label"><g:formatDate date="${playerInstance?.birthdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="player.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${playerInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.chosenclass}">
				<li class="fieldcontain">
					<span id="chosenclass-label" class="property-label"><g:message code="player.chosenclass.label" default="Chosenclass" /></span>
					
						<span class="property-value" aria-labelledby="chosenclass-label"><g:link controller="class" action="show" id="${playerInstance?.chosenclass?.id}">${playerInstance?.chosenclass?.name}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${playerInstance?.info}">
				<li class="fieldcontain">
					<span id="info-label" class="property-label"><g:message code="player.info.label" default="Info" /></span>
					
						<span class="property-value" aria-labelledby="info-label"><g:fieldValue bean="${playerInstance}" field="info"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${playerInstance?.id}" />
					<g:link class="edit" action="edit" id="${playerInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
