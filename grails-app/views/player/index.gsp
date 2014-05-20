<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Homepage</title>
</head>

<body>
%{--<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/player')}">Home</a></li>
        <li><g:link action="profile">Profile</g:link></li>
        <li><g:link action="quests">Quests</g:link></li>
    </ul>
</div>--}%
<div id="headerwrap">
    <div class="container">
        <div class="row">
            <div class="col-lg-7">
                <div class="col-lg-5">
                    <div class="img-pad centered">
                        <img src="http://placehold.it/150x150" alt="" class="img-thumbnail">
                    </div>
                </div>
                <div class="col-lg-7 prof-info">
                    <ul class="codename">
                        <li><g:link action="profile">${session?.user?.codename}</g:link></li>
                        <li>Ruby Samurai</li>
                        <li>Warrior</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-5">
                <div class="col-lg-6">
                    <h3>${session.user.points} Points</h3>
                </div>
                <div class="col-lg-6">
                    <img src="http://placehold.it/140x140" alt="badge-logo" class="img-circle">
                </div>
            </div>
        </div>
    </div>
</div>

<section id="desc" name="desc"></section>
<!-- INTRO WRAP -->
<div id="intro">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <h1>Mission Accomplished</h1>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-lg-3">
                <img src="http://placehold.it/150x150" alt="" class="img-thumbnail">
            </div>
            <div class="col-lg-3">
                <img src="http://placehold.it/150x150" alt="" class="img-thumbnail">
            </div>
            <div class="col-lg-3">
                <img src="http://placehold.it/150x150" alt="" class="img-thumbnail">
            </div>
            <div class="col-lg-3">
                <img src="http://placehold.it/150x150" alt="" class="img-thumbnail">
            </div>
        </div>
        <br>
    </div> <!--/ .container -->
</div><!--/ #introwrap -->

<section id="desc" name="desc"></section>
<!-- INTRO WRAP -->
<div id="features">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <h1>Achievements</h1>
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-lg-3">
                <img src="http://placehold.it/150x150" alt="" class="img-thumbnail">
            </div>
            <div class="col-lg-3">
                <img src="http://placehold.it/150x150" alt="" class="img-thumbnail">
            </div>
            <div class="col-lg-3">
                <img src="http://placehold.it/150x150" alt="" class="img-thumbnail">
            </div>
            <div class="col-lg-3">
                <img src="http://placehold.it/150x150" alt="" class="img-thumbnail">
            </div>
        </div>
        <br>
    </div> <!--/ .container -->
</div><!--/ #introwrap -->
</body>
</html>