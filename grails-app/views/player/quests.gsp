<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Quest Page</title>
</head>

<body>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/player')}">Home</a></li>
        <li><g:link action="profile">Profile</g:link></li>
        <li><g:link action="quests">Quests</g:link></li>
    </ul>
</div>
<ul><g:if test="${missionList}">
        <g:each in="${missionList}" var="mission">
            <li><a href="/coderpg/player/quests/${mission.quest.id}/mission/${mission.id}">${mission.name}</a></li>
        </g:each>
    </g:if>
    <g:else>
        <g:each in="${questList?}" var="quest">
            <li><a href="/coderpg/player/quests/${quest.id}">${quest.name}</a></li>
        </g:each>
    </g:else>
</ul>

<div id="headerwrap">
    <div class="container">
        <div class="col-xs-3">
            <h2>QUEST</h2>
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
                <div class="col-lg-4">
                    <h2>
                        Choose your DESTINY ...
                    </h2>
                </div>
            </div>
        <hr>
        <g:if test="${questList}">
        <g:each in="${questList?}" var="quest">
        <div class="row margin-list">
            <div class="col-lg-1"></div>
            <div class="col-lg-3 img-centered">
                <a href="/coderpg/player/quests/${quest.id}">
                    <img src="http://placehold.it/150x150" class="img-responsive center-block" alt="Quest LOGO" />
                    <h3 class="text-center">${quest.name}</h3>
                </a>

            </div>
            <div class="col-lg-6">
                <p class="lead text-justify">${quest.description}</p>
            </div>
         </div>
       </g:each>
        </g:if>
    </div>
</div>

</body>
</html>