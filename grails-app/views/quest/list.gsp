
<%@ page import="com.coderpg.Quest" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'quest.label', default: 'Quest')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
%{--		<a href="#list-quest" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-quest" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>--}%

            <div id="headerwrap">
                <div class="container">
                    <div>
                        <h3 class="text-center"> MANAGE QUEST </h3>
                    </div>
                </div>
            </div>

    <div id="intro">
        <div class="container">
        <div class="row">
            <div class="col-lg-4">
                    <h2>
                        Quest List
                    </h2>
            </div>
        </div>
        <hr>

        <g:each in="${questInstanceList}" var="questInstance">
        <div class="row margin-list">
             <div class="col-lg-1"></div>
                  <div class="col-lg-3 img-centered">
                       <a href="/coderpg/quest/show/${questInstance.id}">
                          <img src="http://placehold.it/150x150" class="img-responsive center-block" alt="Quest LOGO" />
                          <h3 class="text-center">${questInstance.name}</h3>
                       </a>

                  </div>
             <div class="col-lg-6">
                   <p class="lead text-justify">${questInstance?.description}</p>
             </div>
             <div class="col-lg-2">
                 <div class="btn-group pull-right">
                    <g:form>
                         <g:hiddenField name="id" value="${questInstance?.id}" />
                         <g:link class="edit btn btn-default" action="edit" id="${questInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                         <g:actionSubmit class="delete btn btn-default" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </g:form>
                 </div>
             </div>
        </div>
        </g:each>

			%{--
			<table>
				<thead>
					<tr>

						<g:sortableColumn property="name" title="${message(code: 'quest.name.label', default: 'Name')}" />

						<g:sortableColumn property="description" title="${message(code: 'quest.description.label', default: 'Description')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${questInstanceList}" status="i" var="questInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
<<<<<<< HEAD

						<td><g:link action="show" id="${questInstance.id}">${fieldValue(bean: questInstance, field: "name")}</g:link></td>

=======
					
						<td><a href="/coderpg/quest/show/${questInstance?.id}">${fieldValue(bean: questInstance, field: "name")}</a></td>
					
>>>>>>> 547972e9bcaffb6b8ea46391e4e7f04427cf6d9e
						<td>${fieldValue(bean: questInstance, field: "description")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>--}%

			<div class="pagination">
				<g:paginate total="${questInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
