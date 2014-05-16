<div class="fieldcontain">
    <label for="name">Name
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="name" required="" value="${classInstance?.name}"/>
</div>
<div class="fieldcontain">
    <label for="description">Description
        <span class="required-indicator">*</span>
    </label>
    <g:textArea name="description" required="" value="${classInstance?.description}"/>
</div>