<%@ page import="com.coderpg.Class" %>



<div class="fieldcontain ${hasErrors(bean: classInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="class.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${classInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: classInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="class.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${classInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: classInstance, field: 'players', 'error')} ">
	<label for="players">
		<g:message code="class.players.label" default="Players" />
		
	</label>
    <ul class="one-to-many">
        <g:each in="${classInstance?.players?}" var="p">
            <li><g:link controller="player" action="show" id="${p.id}">${p?.name}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="player" action="create" params="['class.id': classInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'player.label', default: 'Player')])}</g:link>
        </li>
    </ul>
</div>

