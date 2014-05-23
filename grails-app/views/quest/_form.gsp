<%@ page import="com.coderpg.Quest" %>
<g:if test="${update}">
    <div class="fieldcontain ${hasErrors(bean: questInstance, field: 'missions', 'error')}">
        <g:link class="btn btn-info" controller="mission" action="create" params="['quest.id': questInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'mission.label', default: 'Mission')])}</g:link>
        <div class="btn-group">
            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                Missions List
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
                <g:each in="${questInstance?.missions?}" var="m">
                    <li><g:link controller="mission" action="show" id="${m.id}">${m?.name}</g:link></li>
                </g:each>
            </ul>
        </div>

    </div>
    <br/>
</g:if>
<div class="form-group">
    <label for="name">Name</label>
    <input type="text" name="name" class="form-control" id="email1" placeholder="Name" maxlength="20" required="" value="${questInstance?.name}">
</div>
<div class="form-group">
    <label for="info">Information</label>
    <textarea name="description" class="form-control" rows="4" placeholder="Information">${questInstance?.description}</textarea>
</div>
<div class="fieldcontain">
   <label for="chosenclass">
        Class
   </label>
   <g:select class="form-control" id="chosenclass" name="chosenclass.id" required="" optionKey="id" optionValue="name" value="${questInstance?.chosenclass?.id}" from="${com.coderpg.Class.list()}"/>
</div>

