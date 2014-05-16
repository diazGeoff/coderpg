<%@ page import="com.coderpg.Mission" %>



<div class="fieldcontain ${hasErrors(bean: missionInstance, field: 'name', 'error')} ">
    <label for="name">
        <g:message code="mission.name.label" default="Name" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField required="" name="name" value="${missionInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: missionInstance, field: 'description', 'error')} ">
    <label for="description">
        <g:message code="mission.description.label" default="Description" />
        <span class="required-indicator">*</span>
    </label>
    <g:textArea required="" name="description" value="${missionInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: missionInstance, field: 'input', 'error')} ">
	<label for="input">
		<g:message code="mission.input.label" default="Input" />
        <span class="required-indicator">*</span>
	</label>
	<g:textArea required="" name="input" value="${missionInstance?.input}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: missionInstance, field: 'output', 'error')} ">
	<label for="output">
		<g:message code="mission.output.label" default="Output" />
        <span class="required-indicator">*</span>
	</label>
	<g:textArea required="" name="output" value="${missionInstance?.output}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: missionInstance, field: 'quest', 'error')} required">
	<label for="quest">
		<g:message code="mission.quest.label" default="Quest" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="quest" name="quest.id" from="${questList?.list()}" optionValue="name" optionKey="id" required="" value="${missionInstance?.quest?.id}" class="many-to-one"/>
</div>

