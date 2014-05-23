<div class="form-group">
    <label for="name">Name
        <span class="required-indicator">*</span>
    </label>
    <g:textField class="form-control" name="name" required="" placeholder="Name" value="${classInstance?.name}"/>
</div>
<div class="form-group">
    <label for="description">Description
        <span class="required-indicator">*</span>
    </label>
    <g:textArea class="form-control" placeholder="Description" name="description" required="" value="${classInstance?.description}"/>
</div>