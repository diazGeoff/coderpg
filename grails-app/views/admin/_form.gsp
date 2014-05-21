<%@ page import="com.coderpg.Admin" %>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="admin.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${adminInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: adminInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="admin.password.label" default="Password" />
		
	</label>
	<g:passwordField name="password" value="${adminInstance?.password}"/>
</div>

