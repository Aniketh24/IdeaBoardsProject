<%--
  Created by IntelliJ IDEA.
  User: aniketh.kulkarni
  Date: 14-09-2017
  Time: 12:11
--%>

<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset="UTF-8">
    <meta name="google-signin-client_id" content="70434017287-9b6f0erb0kjbkno3u29iqrigga7j4t50.apps.googleusercontent.com">
    <title>Index</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

</head>

<style>
    body
    {
        background-color: #cc9;
    }
</style>

<link href='http://fonts.googleapis.com/css?family=Oswald:300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Shadows+Into+Light+Two' rel='stylesheet' type='text/css'>

<body>
<br><br><br><br><br><br><br><br><br>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-8 col-sm-offset-4" >

            <font size="35" color="red" style="font-family:Georgia, 'Times New Roman', Times, serif;">IdeaBoards</font>
            <font size="4" color="black" style="font-family:Courier New, Courier, monospace">brainstrom,collaborate</font>

        </div>

        <div class="col-sm-1 col-sm-offset-5">
            <button class="loginBtn loginBtn--google g-signin2" data-onsuccess="onSignIn" ></button>
        </div>
    </div>
</div>

<script>
    function onSignIn(googleUser) {

        var profile = googleUser.getBasicProfile();

        $("#email").val(profile.getEmail());

        //$( "#onLogin" ).submit();
        $.ajax({
            url:  "/IdeaBoardsProject/api/other",
            type: 'post',
            data: {fullName: profile.getName()},
            success: function (data) {
                 alert("success");
                window.location="dashboard.gsp"
            },
            error: function () {
                alert("Some error occured , please retry....");
            }

        });

    };
</script>

<script>
    function signOut() {
        var auth2 = gapi.auth2.getAuthInstance();
        auth2.signOut().then(function () {
            console.log('User signed out.');
        });
    }
</script>
</body>