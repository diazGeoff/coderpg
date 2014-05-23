%{--
<div class="fieldcontain">
    <label for="name">Name:</label>
    <g:textField name="name" value="${session.user.name}"/>
</div>
<div class="fieldcontain">
    <label for="codename">Codename:</label>
    <g:textField name="codename" value="${session.user.codename}"/>
</div>
<div class="fieldcontain">
    <label for="chosenclass">Class</label>
    <g:select id="chosenclass" name="chosenclass.id" optionValue="name" from="${com.coderpg.Class.list()}" optionKey="id" value="${user.chosenclass.id}" class="many-to-one"/>
</div>
<div class="fieldcontain">
    <label for="email">email:</label>
    <g:textField name="email" value="${session.user.email}"/>
</div>
<div class="fieldcontain">
    <label for="birthdate">Birthday:</label>
    <g:datePicker name="birthdate" precision="day" value="${session.user.birthdate}"/>
</div>
<div class="fieldcontain">
    <label for="info">Info:</label>
    <g:textArea name="info" value="${session.user.info}"/>
</div>--}%

<div class="form-group">
    <label for="name">Name</label>
    <input type="text" name="name" class="form-control" id="email1" placeholder="Enter email" maxlength="20" required="" value="${session.user.name}">
</div>
<div class="form-group">
    <label for="codename">Codename</label>
    <input type="text" name="codename" class="form-control" id="email1" placeholder="Enter email" maxlength="20" required="" value="${session.user.codename}">
</div>
<div class="form-group">
    <label for="email">E-mail</label>
    <input type="email" name="email" class="form-control" id="email1" placeholder="Enter email" value="${session.user.email}">
</div>
<div class="form-group fieldcontain">
    <label for="birthdate">Birthday:</label>
    <g:datePicker name="birthdate" precision="day" value="${session.user.birthdate}"/>
</div>
<div class="form-group">
    <label for="info">Information</label>
    <textarea name="info" class="form-control" rows="4" value="">${session.user.info}</textarea>
</div>
