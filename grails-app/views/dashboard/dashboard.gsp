<!DOCTYPE html>
<html lang='en'>

<head>
    <meta charset="UTF-8">
    <meta name="google-signin-client_id" content="70434017287-9b6f0erb0kjbkno3u29iqrigga7j4t50.apps.googleusercontent.com">
    <title>DashBoard</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>

<link href='http://fonts.googleapis.com/css?family=Oswald:300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Shadows+Into+Light+Two' rel='stylesheet' type='text/css'>

<style>

body
{
    background-color: #ccc;
}
.snote
{
    max-width:100%;
    background-color:#666;
}

.snote h2,p
{
    font-size:100%;
    font-weight:normal;
}

.snote ul,li
{
    list-style:none;
}

.snote ul
{
    overflow:hidden;
    padding:4em;
}

.snote ul li
{
    text-decoration:none;
    color:#000;
    background:#ffa;
    display:block;
    height:20em;
    width:27em;
    padding:1em;
    -moz-box-shadow:15px 15px 17px rgba(33,33,33,1);
    -webkit-box-shadow: 15px 15px 17px rgba(33,33,33,.7);
    box-shadow: 15px 15px 17px rgba(33,33,33,.7);
    -webkit-transform:constant(-6deg);
    -o-transform:constant(-6deg);
    -moz-transform:constant(-6deg);
    -moz-transition:-moz-transform .15s linear;
    -o-transition:-o-transform .15s linear;
    -webkit-transition:-webkit-transform .15s linear;
}

.snote ul li:nth-child(even)
{
    -o-transform:constant(4deg);
    -webkit-transform:constant(4deg);
    -moz-transform:constant(4deg);
    position:relative;
    top:5px;
    background:#cfb;
}

/* .snote ul li:nth-child(3n) a{
  -o-transform:rotate(-3deg);
  -webkit-transform:rotate(-3deg);
  -moz-transform:rotate(-3deg);
  position:relative;
  top:-5px;
  background:#ccf;
}

.snote ul li:nth-child(5n) a{
  -o-transform:rotate(5deg);
  -webkit-transform:rotate(5deg);
  -moz-transform:rotate(5deg);
  position:relative;
  top:-10px;
  background:#fcf;
}

.snote ul li a:hover,ul li a:focus{
  -moz-box-shadow:10px 10px 7px rgba(0,0,0,.7);
  -webkit-box-shadow: 10px 10px 7px rgba(0,0,0,.7);
  box-shadow:10px 10px 7px rgba(0,0,0,.7);
  -webkit-transform: scale(1.25);
  -moz-transform: scale(1.25);
  -o-transform: scale(1.25);
  position:relative;
  z-index:5;
} */

.snote ul li
{
    margin:5em;
    float:left;
}

.snote ul li h2
{
    font-size:160%;
    font-weight:bold;
    padding-bottom:0px;
    font-family:Oswald;
    text-align:center;
    color:#000;
}

.snote ul li p
{
    font-family:'Shadows Into Light Two',arial,sans-serif;
    font-size:140%;
    color:#000;
} */

.buttonColor
{
    color:black;
}

</style>

<body>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-6">

            <font size="35"  color="red" style="font-family:Georgia, 'Times New Roman', Times, serif;">IdeaBoards</font>
            <font size="4" color="black" style="font-family:Courier New, Courier, monospace">brainstrom,collaborate</font>
        </div>

        <b class="col-sm-3 col-sm-offset-3"><font size="4" style="font-family:Georgia, 'Times New Roman', Times, serif;">Welcome ${session.user}</font></b>
        <div class="col-sm-1 col-sm-offset-5">

            <a href="index.gsp" onclick="signOut();" >

                <font size="6"  color="black" style="font-family:Georgia, 'Times New Roman', Times, serif;" >Logout</font></a>
            %{--<button class="loginBtn loginBtn--google g-signin2" data-onsuccess="onSignIn">--}%
                %{--Login with Google--}%
            %{--</button>--}%
        </div>
    </div>
</div>

<div class="quote-container">
    <blockquote class="note yellow">
        <b>We can't solve problems by using the same kind of thinking we used when we created them.</b>
        <cite class="author">-Albert Einstein</cite>
    </blockquote>
</div>
<div class="snote">
    <ul>
        <li>
            <h2>How?</h2><hr/>
            <a href="#" data-toggle="modal" data-target="#myModal"><p><b><font color="black">Create</font></b></a> my Own Board</p>
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">

                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Create Board</h4>
                        </div>
                    <g:form controller="dashboard" action="save">

                        <div class="modal-body">
                            <input type="text" class="form-control" id="usr" name="titlename" placeholder="Please Enter Name" required/>
                        </div>

                        <div class="modal-body">
                            <select class="form-control" id="select" name="swimlanename" >
                                <option value="0" >-- Select --</option>
                                <option value="1" name="swimlanename1" > 1 Section</option>
                                <option value="2" name="swimlanename2" > 2 Sections</option>
                                <option value="3" name="swimlanename3" > 3 Sections</option>
                                <option value="4" name="swimlanename4" > 4 Sections</option>
                                <option value="5" name="swimlanename5" > 5 Sections</option>
                            </select>
                        %{--    <input type="text" class="form-control" id="usr1" name="swimlanename1"/>--}%
                            <div id="texts" name="swimlanename1">
                            </div>
                        </div>

                        <div class="modal-footer">
                            <button type="submit" class="btn btn-default" name="save" value="Save"  >Save</button>
                            %{--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--}%
                        </div>
                    </g:form>
                    </div>
                </div>
            </div>
        </li>

        <li>
            <h2>Why?</h2><hr />
            <p><b>Add Ideas at Anytime</b></p>
            <p><b>Brainstorm across Oceans</b></p>
        </li>
        <!-- <li>
    <a href="#LINK 3">
      <h2>Note  #3</h2><hr />
      <p>Note Content #3</p>
    </a>
  </li>
  <li>
    <a href="#LINK 4">
      <h2>Note #4</h2><hr />
      <p>Note Content #4</p>
    </a>
  </li>
  <li>
    <a href="#LINK 5">
      <h2>Note #5</h2><hr />
      <p>Note Content #5</p>
    </a>
  </li> -->
    </ul>
</div>

<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript">

    window.onchange = function()
    {
        var select = document.getElementById("select");
        var texts = document.getElementById("texts");
        select.onchange = function()
        {
            var val = select.options[select.selectedIndex].value;
            texts.innerHTML = "";
            for(i=0; i < val; i++)
            {
                texts.innerHTML += '<div class="modal-body"><input type="text" name="swimlanenames' + i + '" class="form-control" id="usr" placeholder="Please Enter the name" required /></div>';
            }
        }
    }

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
</html>