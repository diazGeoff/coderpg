<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Copy Files</title>
</head>

<body>
    <g:uploadForm action="upload">
    <label>Source Directory</label>
        <input type="file" name="source"/><br/>
        <input type="text" name="try"/>
    <input type="submit" value="Upload"/>
    </g:uploadForm>
</body>
</html>