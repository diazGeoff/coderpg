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
</div>