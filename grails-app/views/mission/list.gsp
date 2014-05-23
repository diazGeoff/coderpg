
<%@ page import="com.coderpg.Mission" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mission.label', default: 'Mission')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <div id="intro">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <h2>
                        Mission List
                    </h2>
                </div>
                <div class="col-lg-6">
                    <div class="btn-group pull-right">
                        <a href="/coderpg/mission/list" class="btn btn-default">All</a>
                        <div class="btn-group">
                            <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
                                Quest
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <g:each in="${com.coderpg.Quest.list()}" var="quest">
                                    <li><a href="/coderpg/mission/list/${quest.id}">${quest.name}</a></li>
                                </g:each>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <hr>

            <g:each in="${missionInstanceList}" var="missionInstance">
                <div class="row margin-list">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-3 img-centered">
                            <img src="http://placehold.it/150x150" class="img-responsive center-block" alt="Quest LOGO" />
                            <h3 class="text-center">${missionInstance?.name}</h3>
                    </div>
                    <div class="col-lg-6">
                        <p class="lead text-justify">${missionInstance?.description}</p>
                        <br />
                    </div>
                    <div class="col-lg-2">
                        <div class="btn-group pull-right">
                            <g:form>
                                <g:hiddenField name="id" value="${missionInstance?.id}" />
                                <a href="/coderpg/mission/edit/${missionInstance?.id}" class="edit btn btn-primary">Edit</a>
                                <g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                            </g:form>
                        </div>
                    </div>
                </div>
            </g:each>

			<div class="pagination">
				<g:paginate total="${missionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
