
<%@ page import="com.coderpg.Player" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'player.label', default: 'Player')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-player" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/player')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-player" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'player.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="codename" title="${message(code: 'player.codename.label', default: 'Codename')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'player.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'player.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="birthdate" title="${message(code: 'player.birthdate.label', default: 'Birthdate')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'player.gender.label', default: 'Gender')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${playerInstanceList}" status="i" var="playerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${playerInstance.id}">${fieldValue(bean: playerInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: playerInstance, field: "codename")}</td>
					
						<td>${fieldValue(bean: playerInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: playerInstance, field: "email")}</td>
					
						<td><g:formatDate date="${playerInstance.birthdate}" /></td>
					
						<td>${fieldValue(bean: playerInstance, field: "gender")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${playerInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
