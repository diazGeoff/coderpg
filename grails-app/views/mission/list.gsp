
<%@ page import="com.coderpg.Mission" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mission.label', default: 'Mission')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-mission" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-mission" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'mission.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="input" title="${message(code: 'mission.input.label', default: 'Input')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'mission.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="output" title="${message(code: 'mission.output.label', default: 'Output')}" />
					
						<th><g:message code="mission.quest.label" default="Quest" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${missionInstanceList}" status="i" var="missionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${missionInstance.id}">${fieldValue(bean: missionInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: missionInstance, field: "input")}</td>
					
						<td>${fieldValue(bean: missionInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: missionInstance, field: "output")}</td>
					
						<td>${fieldValue(bean: missionInstance, field: "quest")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${missionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
