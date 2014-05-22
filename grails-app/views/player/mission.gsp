<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Missions</title>
</head>

<body>
<div id="headerwrap">
    <div class="container">
            <div class="col-xs-3">
                <h2>MISSION</h2>
            </div>
            <div class="col-xs-9">
                <h4>MOVE ME <span class="text-muted">&raquo; Your Travel Companion</span></h4>
                <p class="lead">Move Me is a unique App designed to help people all over the world to get home quicker, by connecting with your local transport network</p>
            </div>
    </div>
</div>

<div id="intro">
    <div class="container">
        <div class="row">
            <div>
                <g:if test="${status.hasTaken[0] == true && status != null}">
                    <h2 class="text-center">Passed This Mission</h2>
                </g:if>
                <g:if test="${status.hasTaken[0] == false && status != null}">
                    <h2 class="text-center">Failed This Mission</h2>
                </g:if>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <div class="row">
                    <div class="col-lg-8">
                        <h2>${mission.name}</h2>
                    </div>
                    <div class="col-lg-4">
                        <h3>${mission.points} Exp.</h3>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div>
                        <p>${mission.description}</p>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div>
                        <h3>Input</h3>
                        <p>${mission.input}</p>
                    </div>
                </div>
                <div class="row">
                    <div>
                        <h3>Output</h3>
                        <p>${mission.output}</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="row editor-wrapper">
                    <div class="well">
                        <div id="editor">function foo(items) {
                        var x = "All this is syntax highlighted";
                        return x;
                        }
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

    %{--<h1>Mission</h1>
    <g:if test="${status.hasTaken[0] == true && status != null}">
        <h2>Passed This Mission</h2>
    </g:if>
    <g:if test="${status.hasTaken[0] == false && status != null}">
        <h2>Failed This Mission</h2>
    </g:if>
    <h2>${mission.name}</h2>
    <h2>${mission.description}</h2>
    <h3>${mission.points} Points</h3>
    <h3>Input</h3>
    <g:textArea name="input" disabled="" value="${input}"/>
    <h3>Output</h3>
    <g:textArea name="output" disabled="" value="${output}"/>
    <g:form action="validate">
        <g:hiddenField name="player.id" value="${session.user.id}" />
        <g:hiddenField name="points" value="${mission.points}"/>
        <g:hiddenField name="mission.id" value="${mission.id}"/>
        <select name="check" id="check">
            <option value="true" selected>Passed</option>
            <option value="false">Failed</option>
        </select>
        <g:submitButton name="submit" />
    </g:form>--}%
</body>
</html>