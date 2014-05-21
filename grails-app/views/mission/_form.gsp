<%@ page import="com.coderpg.Mission" %>



<div class="form-group fieldcontain ${hasErrors(bean: missionInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="mission.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="name" maxlength="25" required="" value="${missionInstance?.name}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: missionInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="mission.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea rows="5" class="form-control" name="description" required="" value="${missionInstance?.description}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: missionInstance, field: 'input', 'error')} required">
	<label for="input">
		<g:message code="mission.input.label" default="Input" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea rows="5" class="form-control" name="input" required="" value="${missionInstance?.input}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: missionInstance, field: 'output', 'error')} required">
	<label for="output">
		<g:message code="mission.output.label" default="Output" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea rows="5" class="form-control" name="output" required="" value="${missionInstance?.output}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: missionInstance, field: 'points', 'error')} required">
	<label for="points">
		<g:message code="mission.points.label" default="Points" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" size="5" name="points" required="" value="${missionInstance?.points}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: missionInstance, field: 'quest', 'error')} required">
	<label for="quest">
		<g:message code="mission.quest.label" default="Quest" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="quest" name="quest.id" optionValue="name" from="${questList?.list()}" optionKey="id" required="" value="${missionInstance?.quest?.id}" class="many-to-one"/>
</div>

