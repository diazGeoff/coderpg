<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Homepage</title>
</head>

<body>
<div id="headerwrap">
    <div class="container">
        <div class="row">
            <div class="col-lg-7">
                <div class="col-lg-5">
                    <div class="img-pad centered">
                        <img src="http://placehold.it/150x150" alt="" class="img-thumbnail">
                    </div>
                </div>
                <div class="col-lg-5 prof-info">
                    <ul class="codename">
                        <li><g:link action="profile">${session?.user?.name}</g:link></li>
                        <li>${session?.user?.codename}</li>
                        <li>${player?.chosenclass?.name}</li>
                        <hr/>
                        <a href="/coderpg/player/changeClass" class="btn btn-warning">Change Class</a>
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
        <hr/>
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