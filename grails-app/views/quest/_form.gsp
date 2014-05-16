<%@ page import="com.coderpg.Quest" %>



<div class="fieldcontain ${hasErrors(bean: questInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="quest.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="20" required="" value="${questInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="quest.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="description" required="" value="${questInstance?.description}"/>
</div>

<div class="fieldcontain">
    <label for="chosenclass">
        Class
        <span class="required-indicator">*</span>
    </label>
    <g:select id="chosenclass" name="chosenclass.id" required="" optionKey="id" optionValue="name" value="${questInstance?.chosenclass?.id}" from="${com.coderpg.Class.list()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questInstance, field: 'missions', 'error')} ">
	<label for="missions">
		<g:message code="quest.missions.label" default="Missions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${questInstance?.missions?}" var="m">
    <li><g:link controller="mission" action="show" id="${m.id}">${m?.name}</g:link></li>
</g:each>
<li class="add">
<g:link controller="mission" action="create" params="['quest.id': questInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'mission.label', default: 'Mission')])}</g:link>
</li>
</ul>

</div>

