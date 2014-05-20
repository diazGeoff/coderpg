<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Quest Page</title>
</head>

<body>
<div id="headerwrap">
    <div class="container">
        <g:if test="${questList}">
            <div class="col-xs-3">
                <h2>QUEST</h2>
            </div>
            <div class="col-xs-9">
                <h4>MOVE ME <span class="text-muted">&raquo; Your Travel Companion</span></h4>
                <p class="lead">Move Me is a unique App designed to help people all over the world to get home quicker, by connecting with your local transport network</p>
            </div>
        </g:if>
        <g:else>
            <div class="col-xs-3">
                <h2>MISSION</h2>
            </div>
            <div class="col-xs-9">
                <h4>MOVE ME <span class="text-muted">&raquo; Your Travel Companion</span></h4>
                <p class="lead">Move Me is a unique App designed to help people all over the world to get home quicker, by connecting with your local transport network</p>
            </div>
        </g:else>
    </div>
</div>

<div id="intro">
    <div class="container">
            <div class="row">
        <g:if test="${questList}">
                <div class="col-lg-4">
                    <h2>
                        Choose your DESTINY ...
                    </h2>
                </div>
            </div>
        <hr>
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

       <g:else test="${missionList}">
        <div class="col-lg-4">
            <h2>
                ${missionList.list()[0]?.quest?.name}
            </h2>
        </div>
        </div>
        <hr>
        <g:each in="${missionList?}" var="mission">
            <div class="row margin-list">
                <div class="col-lg-1"></div>
                <div class="col-lg-3 img-centered">
                    <a href="/coderpg/player/quests/${mission.quest.id}/mission/${mission.id}">
                        <img src="http://placehold.it/150x150" class="img-responsive center-block" alt="Quest LOGO" />
                        <h3 class="text-center">${mission.name}</h3>
                    </a>

                </div>
                <div class="col-lg-6">
                    <p class="lead text-justify">${mission.description}</p>
                </div>
            </div>
        </g:each>
        </g:else>
    </div>
</div>

</body>
</html>