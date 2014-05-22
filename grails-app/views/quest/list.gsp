
<%@ page import="com.coderpg.Quest" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'quest.label', default: 'Quest')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
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
         <div class="col-lg-6">
            <h2>
              Quest List
            </h2>
         </div>
            <div class="col-lg-6">
                <div class="btn-group pull-right">
                    <a href="/coderpg/quest/list" class="btn btn-default">All</a>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                           Classes
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu">
                            <g:each in="${com.coderpg.Class.list()}" var="classes">
                                <li><a href="/coderpg/quest/list/${classes.id}">${classes.name}</a></li>
                            </g:each>
                        </ul>
                    </div>
                    <a href="/coderpg/quest/create" class="btn btn-info">New Quest</a>
                </div>
            </div>

        </div>
        <hr>

        <g:each in="${questInstanceList}" var="questInstance">
        <div class="row margin-list">
             <div class="col-lg-1"></div>
                  <div class="col-lg-3 img-centered">
                      <img src="http://placehold.it/150x150" class="img-responsive center-block" alt="Quest LOGO" />
                      <h3 class="text-center">${questInstance.name}</h3>
                  </div>
             <div class="col-lg-6">
                   <p class="lead text-justify">${questInstance?.description}</p>
             </div>
             <div class="col-lg-2">
                 <div class="btn-group pull-right">
                    <g:form>
                         <g:hiddenField name="id" value="${questInstance?.id}" />
                         <g:link class="edit btn btn-primary" controller="quest" action="edit" id="${questInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                         <g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </g:form>
                 </div>
             </div>
        </div>
        </g:each>

	<div class="pagination">
		<g:paginate total="${questInstanceTotal}" />
	</div>
</div>
	</body>
</html>
