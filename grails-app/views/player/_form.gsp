<%@ page import="com.coderpg.Player" %>
<div class="form-group">
    <label for="name">Name</label>
    <input type="text" name="name" class="form-control" id="email1" placeholder="Name" maxlength="20" required="" value="${playerInstance?.codename}">
</div>
<div class="form-group">
    <label for="codename">Codename</label>
    <input type="text" name="codename" class="form-control" id="email1" placeholder="Codename" maxlength="20" required="" value="${playerInstance?.codename}">
</div>
<div class="form-group">
    <label for="password">Password</label>
    <input type="password" name="password" class="form-control" id="email1" placeholder="Password" required="" value="${playerInstance?.password}">
</div>
<div class="form-group">
    <label for="email">E-mail</label>
    <input type="email" name="email" class="form-control" id="email1" placeholder="E-mail" value="${playerInstance?.email}">
</div>
<div class="form-group fieldcontain ${hasErrors(bean: playerInstance, field: 'birthdate', 'error')} required">
    <label for="birthdate">
    <g:message code="player.birthdate.label" default="Birthdate" />
    <span class="required-indicator">*</span>
    </label>
    <g:datePicker class="form-control" name="birthdate" precision="day"  value="${playerInstance?.birthdate}"  />
</div>
<div class="form-group fieldcontain ${hasErrors(bean: playerInstance, field: 'gender', 'error')} required">
    <label for="gender">Gender</label>
    <g:select class="form-control" name="gender" from="${com.coderpg.Player$GenderChoice?.values()}" keys="${com.coderpg.Player$GenderChoice.values()*.name()}" required="" value="${playerInstance?.gender?.name()}"/>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: playerInstance, field: 'chosenclass', 'error')} required">
    <label for="chosenclass">
        <g:message code="player.chosenclass.label" default="Chosenclass" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="chosenclass" optionValue="name" name="chosenclass.id" from="${com.coderpg.Class.list()}" optionKey="id" value="${playerInstance?.chosenclass?.id}" class="many-to-one form-control"/>
</div>

<div class="fieldcontain ${hasErrors(bean: playerInstance, field: 'info', 'error')} ">
    <label for="info">Information</label>
    <textarea name="info" class="form-control" rows="4" value="${playerInstance?.info}"></textarea>
</div>
