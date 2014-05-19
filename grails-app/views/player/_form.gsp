<%@ page import="com.coderpg.Player" %>



%{--<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'name', 'error')} required">--}%
	%{--<label for="name">--}%
		%{--<g:message code="player.name.label" default="Name" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:textField name="name" required="" value="${playerInstance?.name}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'codename', 'error')} required">--}%
	%{--<label for="codename">--}%
		%{--<g:message code="player.codename.label" default="Codename" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:textField name="codename" maxlength="20" required="" value="${playerInstance?.codename}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'password', 'error')} required">--}%
	%{--<label for="password">--}%
		%{--<g:message code="player.password.label" default="Password" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:passwordField name="password" required="" value="${playerInstance?.password}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'email', 'error')} required">--}%
	%{--<label for="email">--}%
		%{--<g:message code="player.email.label" default="Email" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:field type="email" name="email" required="" value="${playerInstance?.email}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'birthdate', 'error')} required">--}%
	%{--<label for="birthdate">--}%
		%{--<g:message code="player.birthdate.label" default="Birthdate" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:datePicker name="birthdate" precision="day"  value="${playerInstance?.birthdate}"  />--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'gender', 'error')} required">--}%
	%{--<label for="gender">--}%
		%{--<g:message code="player.gender.label" default="Gender" />--}%
		%{--<span class="required-indicator">*</span>--}%
	%{--</label>--}%
	%{--<g:select name="gender" from="${com.coderpg.Player$GenderChoice?.values()}" keys="${com.coderpg.Player$GenderChoice.values()*.name()}" required="" value="${playerInstance?.gender?.name()}"/>--}%
%{--</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'chosenclass', 'error')} required">
	<label for="chosenclass">
		<g:message code="player.chosenclass.label" default="Chosenclass" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="chosenclass" optionValue="name" name="chosenclass.id" from="${com.coderpg.Class.list()}" optionKey="id" required="" value="${playerInstance?.chosenclass?.id}" class="many-to-one"/>
</div>--}%

%{--<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'info', 'error')} ">--}%
	%{--<label for="info">--}%
		%{--<g:message code="player.info.label" default="Info" />--}%
		%{----}%
	%{--</label>--}%
	%{--<g:textArea name="info" value="${playerInstance?.info}"/>--}%
%{--</div>--}%
<div class="form-group">
    <label for="name">Name</label>
    <input type="text" name="name" class="form-control" id="email1" placeholder="Enter email" maxlength="20" required="" value="${playerInstance?.codename}">
</div>
<div class="form-group">
    <label for="codename">Codename</label>
    <input type="text" name="codename" class="form-control" id="email1" placeholder="Enter email" maxlength="20" required="" value="${playerInstance?.codename}">
</div>
<div class="form-group">
    <label for="password">Password</label>
    <input type="password" name="password" class="form-control" id="email1" placeholder="Enter email" required="" value="${playerInstance?.password}">
</div>
<div class="form-group">
    <label for="email">E-mail</label>
    <input type="email" name="email" class="form-control" id="email1" placeholder="Enter email" value="${playerInstance?.email}">
</div>
<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'birthdate', 'error')} required">
    <label for="birthdate">
    <g:message code="player.birthdate.label" default="Birthdate" />
    <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="birthdate" precision="day"  value="${playerInstance?.birthdate}"  />
</div>
<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'gender', 'error')} required">
    <label for="gender">Gender</label>
    <g:select name="gender" from="${com.coderpg.Player$GenderChoice?.values()}" keys="${com.coderpg.Player$GenderChoice.values()*.name()}" required="" value="${playerInstance?.gender?.name()}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'chosenclass', 'error')} required">
    <label for="chosenclass">
        <g:message code="player.chosenclass.label" default="Chosenclass" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="chosenclass" optionValue="name" name="chosenclass.id" from="${com.coderpg.Class.list()}" optionKey="id" value="${playerInstance?.chosenclass?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'info', 'error')} ">
    <label for="info">Information</label>
    <textarea name="info" class="form-control" rows="4" value="${playerInstance?.info}"></textarea>
</div>
