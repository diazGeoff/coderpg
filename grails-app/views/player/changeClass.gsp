<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Change CLass</title>
</head>

<body>
<div id="headerwrap">
    <div class="container">
        <div class="col-xs-5">
                <h2>Change your class!</h2>
            </div>
            <div class="col-xs-7">
                <h4>MOVE ME <span class="text-muted">&raquo; Your Travel Companion</span></h4>
                <p class="lead">Move Me is a unique App designed to help people all over the world to get home quicker, by connecting with your local transport network</p>
            </div>
    </div>
</div>

<div id="intro">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <h2>Current Class</h2>
                <h4>${currentClass?.chosenclass?.name}</h4>
            </div>
        </div>
        <hr/>
        <g:each in="${classList}" var="classes">
        <div class="row">
            <div class="col-lg-1"></div>
            <div class="col-lg-5">
                <h2>${classes?.name}</h2>
            </div>
            <div class="col-lg-1"></div>
            <div class="col-lg-3 form-group">
                <g:form action="changeClass">
                    <g:hiddenField name="playerId" value="${currentClass?.id}"/>
                    <g:hiddenField name="classId" value="${classes?.id}"/>
                    <g:submitButton class="form-control btn-warning" name="submit" value="I choose this Class"/>
                </g:form>
            </div>
        </div>
        </g:each>
    </div>

</div>

    %{--<h1>Choose Class</h1>
    <p>
        <h2>Current Class</h2><br/>
        ${currentClass?.chosenclass?.name}
    </p>
    <p>
        <h2>Other Classes</h2>
        <ul>
            <g:each in="${classList?}" var="classes">
                <li>${classes?.name}</li>
                <g:form action="changeClass">
                    <g:hiddenField name="playerId" value="${currentClass?.id}"/>
                    <g:hiddenField name="classId" value="${classes?.id}"/>
                    <g:submitButton name="submit" value="Make This My Current Class"/>
                </g:form>
            </g:each>
        </ul>
    </p>--}%
</body>
</html>