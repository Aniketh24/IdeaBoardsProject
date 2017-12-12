<%--
  Created by IntelliJ IDEA.
  User: aniketh.kulkarni
  Date: 14-09-2017
  Time: 14:36
--%>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>DisplayBoards</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<link href='http://fonts.googleapis.com/css?family=Oswald:300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Shadows+Into+Light+Two' rel='stylesheet' type='text/css'>

<style>

header
{
    background-color: #020103;
   /* width: 50%;*/
    height: 80px;
    margin: 0px;
}

select
{
    width: 120px;
    height: 30px;
}

body
{
    background-color: #ccc;
    margin: 5px;
}

.intro
{
    border-radius: 10px;
    box-shadow: 0 0 0 1px #000;
    border: 5px solid transparent;
}

#notes
{
    font-size: 20px;
    margin-top: 20px;
    margin-left: 5px;
}

#notes1
{
    font-size: 20px;
    margin-top: 20px;
    margin-left: 5px;
}

#notes2
{
    font-size: 20px;
    margin-top: 20px;
    margin-left: 5px;
}

#notes3
{
    font-size: 20px;
    margin-top: 20px;
    margin-left: 5px;
}

#notes4
{
    font-size: 20px;
    margin-top: 20px;
    margin-left: 5px;
}

span
{
    margin-left: 10px;
    color: #444;
}


.sticky-note
{
    height: 200px;
    width: 200px;
    color: #7f6c04;
    background: #f9dd45;
    border-radius: 10px;
    border: 0px;
    font-family:Georgia, 'Times New Roman', Times, serif;
    font-size: 23px;
    box-shadow: 2px 2px 10px rgba(0,0,0,0.4);
    overflow: hidden;
}

.contents
{
    background: #f9e055;
    margin: 20px;
    outline: none;
    width:200px;
    height:200px
}

.handle
{
    cursor: move;
    background: #7f6c04;
    border-radius: 8px 8px 0px 0px;
}

.handle .close
{
    cursor: pointer
}
#save
{
    margin-left: 7px;
}

html body .sticky-note div.close
{
    color: #3d3402;
    opacity: 1;
    text-shadow: 1px 0px 1px #a08805;
    padding: 2px;
}

textarea
{
    border-radius: 10px;
    box-shadow: 0 0 0 1px #000;
    border: 5px solid transparent;
}
button
{
    border-radius: 10px;
    box-shadow: 0 0 0 1px #000;
    border: 5px solid transparent;
}

.section
{
    clear: both;
    padding: 0px;
    margin: 0px;
}

.col
{
    display: block;
    float:left;
    margin: 1% 0 1% 3%;
}
.col:first-child { margin-left: 0; }


.group:before,
.group:after { content:""; display:table; }
.group:after { clear:both;}
.group { zoom:1; /* For IE 6/7 */ }


.span_5_of_5 {
    width: 100%;
}
.span_4_of_5 {
    width: 79.4%;
}
.span_3_of_5 {
    width: 58.8%;
}
.span_2_of_5 {
    width: 38.2%;
}
.span_1_of_5 {
    width: 17.6%;
}


@media only screen and (max-width: 480px) {
    .col {  margin: 1% 0 1% 0%; }
    .span_1_of_5, .span_2_of_5, .span_3_of_5, .span_4_of_5, .span_5_of_5 { width: 100%; }

}


</style>

<body>
<header class="header 1">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-6 col-offset-1">
                <font size="35" color="white" style="font-family:Georgia, 'Times New Roman', Times, serif;">IdeaBoards</font>
                    <b>
                        <font size="4" color="#f5f5dc" style="font-family:Courier New, Courier, monospace">Brainstrom,Collaborate</font>
                    </b>
            </div>

            <b class="col-lg-3 col-lg-offset-3"><font size="4" color="white" style="font-family:Georgia, 'Times New Roman', Times, serif;">Welcome ${session.user}</font></b>

            <div class="col-lg-1 col-lg-offset-5">
                <a href="index.gsp"  >
                    <font size="6"  color="#f0ffff" style="font-family:Georgia, 'Times New Roman', Times, serif;" >Logout</font>
                </a>
                <br>
            </div>

        </div>
    </div>
</header>

    <div class="whiteboard" >

        <br>
        <br>

       %{-- <div class=" col-sm-offset-9 " >

            <label >
                <font size="5" color="black" style="font-family:Georgia, 'Times New Roman', Times, serif;"> View Section </font>
            </label>

            <g:if test="${num == "5"}">
            <select id="firstSelect" class="intro">
                <g:each in="${dataList1}" var="board">
                    <option value="All Sections" >All Sections</option>
                    <option name="{board.swimlanenames0}" value="${board.swimlanenames0}" >${board.swimlanenames0}</option>
                    <option name="{board.swimlanenames1}" value="${board.swimlanenames1}" >${board.swimlanenames1}</option>
                    <option name="{board.swimlanenames2}" value="${board.swimlanenames2}" >${board.swimlanenames2}</option>
                    <option name="{board.swimlanenames3}" value="${board.swimlanenames3}" >${board.swimlanenames3}</option>
                    <option name="{board.swimlanenames4}" value="${board.swimlanenames4}" >${board.swimlanenames4}</option>
                </g:each>
            </select>
            </g:if>

            <g:elseif test="${num == "4"}">
                <select id="secondSelect" class="intro">
                    <g:each in="${dataList1}" var="board">
                        <option value="All Sections" > All Sections</option>
                        <option name="{board.swimlanenames0}" value="${board.swimlanenames0}" >${board.swimlanenames0}</option>
                        <option name="{board.swimlanenames1}" value="${board.swimlanenames1}" >${board.swimlanenames1}</option>
                        <option name="{board.swimlanenames2}" value="${board.swimlanenames2}" >${board.swimlanenames2}</option>
                        <option name="{board.swimlanenames3}" value="${board.swimlanenames3}" >${board.swimlanenames3}</option>
                    </g:each>
                </select>
            </g:elseif>

            <g:elseif test="${num == "3"}">
                <select id="thirdSelect" class="intro">
                    <g:each in="${dataList1}" var="board">
                        <option class="intro" value="All Sections" >All Sections</option>
                        <option class="intro" name="{board.swimlanenames0}" value="${board.swimlanenames0}" >${board.swimlanenames0}</option>
                        <option class="intro" name="{board.swimlanenames1}" value="${board.swimlanenames1}" >${board.swimlanenames1}</option>
                        <option class="intro" name="{board.swimlanenames2}" value="${board.swimlanenames2}" >${board.swimlanenames2}</option>
                    </g:each>
                </select>
            </g:elseif>

            <g:elseif test="${num == "2"}">
                <select id="fourthSelect" class="intro">
                    <g:each in="${dataList1}" var="board">
                        <option value="All Sections" >All Sections</option>
                        <option name="{board.swimlanenames0}" value="${board.swimlanenames0}" >${board.swimlanenames0}</option>
                        <option name="{board.swimlanenames1}" value="${board.swimlanenames1}" >${board.swimlanenames1}</option>
                    </g:each>
                </select>
            </g:elseif>

            <g:else>
                <select id="fifthSelect" class="intro">
                    <g:each in="${dataList1}" var="board">
                        <option value="All Sections" >All Sections</option>
                        <option name="{board.swimlanenames0}" value="${board.swimlanenames0}" >${board.swimlanenames0}</option>
                    </g:each>
                </select>
            </g:else>

        </div>--}%

       <g:form controller="dashboard" >

           <g:each in="${dataList}" var="board">
               <h1 align="center"><font color="#a52a2a">
               <label name="${board.titlename}" >${board.titlename}</label></font></h1>
           </g:each>

           <br>

           <g:if test="${num == "5"}">

                <div class="section group">

                    <div class="col span_1_of_5">
                        <g:each in="${dataList1}" var="names">
                            <h3><label  class="sectiontitle" name="${names.swimlanenames0}" value="${names.swimlanenames0}">${names.swimlanenames0}</label>
                                <button  type="button" id="new">+</button></h3><div id="notes"></div>
                        </g:each>
                    </div>

                    <div class="col span_1_of_5">
                        <g:each in="${dataList1}" var="names">
                            <h3><label  class="sectiontitle" value="${names.swimlanenames1}" name="${names.swimlanenames1}">${names.swimlanenames1}</label>
                                <button  type="button" id="new1" >+</button></h3><div id="notes1"></div>
                        </g:each>
                    </div>

                    <div class="col span_1_of_5">
                        <g:each in="${dataList1}" var="names">
                            <h3><label  class="sectiontitle" value="${names.swimlanenames2}" name="${names.swimlanenames2}">${names.swimlanenames2}</label>
                                <button  type="button" id="new2" >+</button></h3><div id="notes2"></div>
                        </g:each>
                    </div>

                    <div class="col span_1_of_5">
                        <g:each in="${dataList1}" var="names">
                            <h3><label  class="sectiontitle" value="${names.swimlanenames3}" name="${names.swimlanenames3}">${names.swimlanenames3}</label>
                                <button  type="button" id="new3" >+</button></h3><div id="notes3"></div>
                        </g:each>
                    </div>

                    <div class="col span_1_of_5">
                        <g:each in="${dataList1}" var="names">
                            <h3><label  class="sectiontitle" value="${names.swimlanenames4} " name="${names.swimlanenames4}">${names.swimlanenames4}</label>
                                <button  type="button" id="new4"  >+</button></h3><div id="notes4"></div>
                        </g:each>
                    </div>

                </div>
            </g:if>

           <g:elseif test="${num == "4"}">

                <div class="First group">

                   <div class="col-lg-2 col-lg-offset-0">
                       <g:each in="${dataList1}" var="names">
                           <h3><label  class="sectiontitle"  name="${names.swimlanenames0} " value="${names.swimlanenames0}">${names.swimlanenames0}</label>
                               <button  type="button" id="new" >+</button></h3><div id="notes"></div>
                       </g:each>
                   </div>

                   <div class="col-lg-2 col-lg-offset-1">
                       <g:each in="${dataList1}" var="names">
                           <h3><label  class="sectiontitle"  value="${names.swimlanenames1} " name="${names.swimlanenames1}">${names.swimlanenames1}</label>
                               <button  type="button" id="new1" >+</button></h3><div id="notes1"></div>
                       </g:each>
                   </div>

                   <div class="col-lg-2 col-lg-offset-1">
                       <g:each in="${dataList1}" var="names">
                           <h3><label  class="sectiontitle"  value="${names.swimlanenames2} " name="${names.swimlanenames2}">${names.swimlanenames2}</label>
                               <button  type="button" id="new2">+</button></h3><div id="notes2"></div>
                       </g:each>
                   </div>

                   <div class="col-lg-2 col-lg-offset-1">
                       <g:each in="${dataList1}" var="names">
                           <h3><label  class="sectiontitle"  value="${names.swimlanenames3} " name="${names.swimlanenames3}">${names.swimlanenames3}</label>
                               <button  type="button" id="new3" >+</button></h3><div id="notes3"></div>
                       </g:each>
                   </div>

               </div>
           </g:elseif>

           <g:elseif test="${num == "3"}">

               <div class="Second group">

                   <div class="col-sm-2 col-lg-offset-1">
                       <g:each in="${dataList1}" var="names">
                           <h3><label  class="sectiontitle"  name="${names.swimlanenames0} " value="${names.swimlanenames0}">${names.swimlanenames0}</label>
                               <button  type="button" id="new" >+</button></h3><div id="notes"></div>
                       </g:each>
                   </div>

                   <div class="col-sm-2 col-lg-offset-2">
                       <g:each in="${dataList1}" var="names">
                           <h3><label  class="sectiontitle"  value="${names.swimlanenames1} " name="${names.swimlanenames1}">${names.swimlanenames1}</label>
                               <button  type="button" id="new1" >+</button></h3><div id="notes1"></div>
                       </g:each>
                   </div>

                   <div class="col-sm-2 col-lg-offset-2">
                       <g:each in="${dataList1}" var="names">
                           <h3><label  class="sectiontitle"  value="${names.swimlanenames2} " name="${names.swimlanenames2}">${names.swimlanenames2}</label>
                               <button  type="button" id="new2" >+</button></h3><div id="notes2"></div>
                       </g:each>
                   </div>

               </div>
           </g:elseif>

           <g:elseif test="${num == "2"}">

               <div class="Third group">

                   <div class="col-sm-2 col-lg-offset-3">
                       <g:each in="${dataList1}" var="names">
                           <h3><label class="sectiontitle"  name="${names.swimlanenames0} " value="${names.swimlanenames0}">${names.swimlanenames0}</label>
                               <button  type="button" id="new" >+</button></h3><div id="notes"></div>
                       </g:each>
                   </div>

                   <div class="col-sm-2 col-lg-offset-3">
                       <g:each in="${dataList1}" var="names">
                           <h3><label  class="sectiontitle"  value="${names.swimlanenames1} " name="${names.swimlanenames1}">${names.swimlanenames1}</label>
                               <button  type="button" id="new1" >+</button></h3><div id="notes1"></div>
                       </g:each>
                   </div>

               </div>

           </g:elseif>

           <g:elseif test="${num == "1"}">
               <div class="Fourth group">
                   <div class="col-sm-2 col-lg-offset-5">
                       <g:each in="${dataList1}" var="names">
                           <h3><label  class="sectiontitle"  name="${names.swimlanenames0} " value="${names.swimlanenames0}">${names.swimlanenames0}</label>
                               <button  type="button" id="new" >+</button></h3><div id="notes"></div>
                       </g:each>
                   </div>
               </div>
           </g:elseif>

           <g:else/>

       </g:form>

    </div>

</body>

<script>

   zIndex = 10;
   $('#new').click(function(){
       $('#notes')
           .append('\
                <div class="sticky-note-pre ui-widget-content">\
                &nbsp;</div>\
                <div>\
                <g:form controller="dashboard" action="displayboards">\
                <textarea style="background-color: #fffab3" rows="4" cols="18" name="swimlanedata" />\
                <br>\
                <g:hiddenField  name="boardTitleId" value="${session.boardTitleId}" />\
                <g:hiddenField  name="idOfLaneNames" value="${session.idOfLaneNames}" />\
                <g:actionSubmit class="intro" id="12345" value="Save"   style=" background-color: #fffab3;margin-left: 70px" action="savestickynote" />\
                </g:form>\
                </div>\
         ')
   });

   $('#new1').click(function(){
       $('#notes1')
           .append('\
                <div class="sticky-note-pre ui-widget-content">\
                &nbsp;</div>\
                <div>\
                <g:form controller="dashboard"  >\
                <textarea style="background-color: #e3ffc7" rows="4" cols="18" name="swimlanedata1" />\
                <br>\
                <g:hiddenField  name="boardTitleId" value="${session.boardTitleId}" />\
                <g:hiddenField  name="idOfLaneNames" value="${session.idOfLaneNames}" />\
                <g:actionSubmit class="intro" id="12345" value="Save" style=" background-color: #e3ffc7;margin-left: 70px" action="savestickynote" />\
                </g:form>\
                </div>\
         ')
   });

   $('#new2').click(function(){
       $('#notes2')
           .append('\
                <div class="sticky-note-pre ui-widget-content">\
                &nbsp;</div>\
                <div>\
                <g:form controller="dashboard" >\
                <textarea style="background-color: #b5fffc" rows="4" cols="18" name="swimlanedata2" />\
                <br>\
                <g:hiddenField  name="boardTitleId" value="${session.boardTitleId}" />\
                <g:hiddenField  name="idOfLaneNames" value="${session.idOfLaneNames}" />\
                <g:actionSubmit class="intro" id="12345" value="Save" style=" background-color: #b5fffc;margin-left: 70px" action="savestickynote" />\
                </g:form>\
                </div>\
         ')
   });

   $('#new3').click(function(){
       $('#notes3')
           .append('\
                <div class="sticky-note-pre ui-widget-content">\
                &nbsp;</div>\
                <div id="88">\
                <g:form controller="dashboard" >\
                <textarea style="background-color: #e3ffc7" rows="4" cols="18" name="swimlanedata3" />\
                <br>\
                <g:hiddenField  name="boardTitleId" value="${session.boardTitleId}" />\
                <g:hiddenField  name="idOfLaneNames" value="${session.idOfLaneNames}" />\
                <g:actionSubmit class="intro" id="12345" value="Save" style=" background-color: #e3ffc7;margin-left: 70px" action="savestickynote" />\
                </g:form>\
                </div>\
         ')
   });

   $('#new4').click(function(){
       $('#notes4')
           .append('\
                <div class="sticky-note-pre ui-widget-content">\
                &nbsp;</div>\
                <div id="99>\
                <g:form controller="dashboard" >\
                <textarea style="background-color: #fffab3" rows="4" cols="18" name="swimlanedata4"  />\
                <br>\
                <g:hiddenField  name="boardTitleId" value="${session.boardTitleId}" />\
                <g:hiddenField  name="idOfLaneNames" value="${session.idOfLaneNames}" />\
                <g:actionSubmit class="intro" id="12345" value="Save" style=" background-color: #fffab3;margin-left: 70px" action="savestickynote"/>\
                </g:form>\
                </div>\
         ')
   });

</script>

<script type="text/javascript">

    $(document).ready(function() {
        $.ajax({

                type: 'GET',
                url: '/IdeaBoardsProject/api/ajaxdata',
                dataType: "json",

                success: function (data) {

                var a = "" , b = "", c = "", d = "", e = "";

                var result = data.newData, result1 = data.newData1, result2 = data.newData2, result3 = data.newData3, result4 = data.newData4 ;


                for (var i in result)
                {
                    a = result[i];

                    document.getElementById("notes").innerHTML += '<div id='+a.id+' class="abcd"><textarea rows="4" cols="18" style="background-color: #fffab3" id='+a.id+' >' +a.swimlanedata +'</textarea><g:actionSubmit class="intro" id="340" style="background-color: #fffab3;margin-left: 25px" action="updatestickynote" value="Update" onclick="updatedata(this)"></g:actionSubmit><g:actionSubmit id="340" class="intro"  style="background-color: #fffab3; margin-left: 5px" action="deletestickynote" value="Delete" onclick="deletedata(this)"></g:actionSubmit></div>';
                }

                for (var j in result1)
                {
                    b = result1[j];

                    document.getElementById("notes1").innerHTML += '<div id='+b.id+' class="abcd"><textarea rows="4" cols="18" style="background-color: #e3ffc7" id='+b.id+' >' +b.swimlanedata1 +'</textarea><g:actionSubmit class="intro" id="340" style="background-color: #e3ffc7; margin-left: 25px" action="updatestickynote1" value="Update" onclick="updatedata1(this)"></g:actionSubmit><g:actionSubmit id="340" class="intro" style="background-color: #e3ffc7; margin-left: 5px" action="deletestickynote1" value="Delete" onclick="deletedata1(this)"></g:actionSubmit></div>';
                }

                for (var k in result2)
                {
                    c = result2[k];

                    document.getElementById("notes2").innerHTML += '<div id='+c.id+' class="abcd"><textarea rows="4" cols="18" style="background-color: #b5fffc" id='+c.id+' >' +c.swimlanedata2 +'</textarea><g:actionSubmit class="intro" id="340" style="background-color: #b5fffc; margin-left: 25px" action="updatestickynote2" value="Update" onclick="updatedata2(this)"></g:actionSubmit><g:actionSubmit id="340" class="intro" style="background-color: #b5fffc; margin-left: 5px" action="deletestickynote2" value="Delete" onclick="deletedata2(this)"></g:actionSubmit></div>';
                }

                for (var l in result3)
                {
                    d = result3[l];

                    document.getElementById("notes3").innerHTML += '<div id='+d.id+' class="abcd"><textarea rows="4" cols="18" style="background-color: #e3ffc7" id='+d.id+' >' +d.swimlanedata3 +'</textarea><g:actionSubmit class="intro" id="340" style="background-color: #e3ffc7; margin-left: 25px" action="updatestickynote3" value="Update" onclick="updatedata3(this)"></g:actionSubmit><g:actionSubmit id="340" class="intro" style="background-color: #e3ffc7; margin-left: 5px" action="deletestickynote3" value="Delete" onclick="deletedata3(this)"></g:actionSubmit></div>';
                }

                for (var m in result4)
                {
                    e = result4[m];

                    document.getElementById("notes4").innerHTML += '<div id='+e.id+' class="abcd"><textarea rows="4" cols="18" style="background-color: #fffab3" id='+e.id+' >' +e.swimlanedata4 +'</textarea><g:actionSubmit class="intro" id="340" style=" background-color: #fffab3; margin-left: 25px" action="updatestickynote4" value="Update" onclick="updatedata4(this)"></g:actionSubmit><g:actionSubmit id="340" class="intro" style="background-color: #fffab3; margin-left: 5px" action="deletestickynote4" value="Delete" onclick="deletedata4(this)"></g:actionSubmit></div>';
                }
            }
        });

    });

    function deletedata(element)
    {

        var result = element.parentNode.id;
        //alert(result);
        $(document).ready(function()
        {
            $.ajax({
                type: 'POST',
                url: '/IdeaBoardsProject/dashboard/deletestickynote',
                data: {latestId: element.parentNode.id}

            });
        });
    }

    function deletedata1(element)
    {
        var result1 = element.parentNode.id;
       // alert(result1);
        $(document).ready(function()
        {
            $.ajax({
                type: 'POST',
                url: '/IdeaBoardsProject/dashboard/deletestickynote1',
                data: {latestId: element.parentNode.id}

            });
        });
    }

    function deletedata2(element)
    {
        var result2 = element.parentNode.id;
        //alert(result2);
        $(document).ready(function ()
        {
            $.ajax({
                type: 'POST',
                url: '/IdeaBoardsProject/dashboard/deletestickynote2',
                data: {latestId: element.parentNode.id}
            });
        });
    }

    function deletedata3(element)
    {
        var result3 = element.parentNode.id;
       // alert(result3);
        $(document).ready(function ()
        {
            $.ajax({
                type: 'POST',
                url: '/IdeaBoardsProject/dashboard/deletestickynote3',
                data: {latestId: element.parentNode.id}
            });
        });
    }

    function deletedata4(element)
    {
        var result4 = element.parentNode.id;
       // alert(result4);
        $(document).ready(function ()
        {
            $.ajax({
                type: 'POST',
                url: '/IdeaBoardsProject/dashboard/deletestickynote4',
                data: {latestId: element.parentNode.id}
            });
        });

    }

    function updatedata(element)
    {
        var r = element.parentNode.id;
        var r1 = document.getElementById(r).firstElementChild.value;
       // alert(r1);
        $(document).ready(function ()
        {
            $.ajax({
                type: 'POST',
                url: '/IdeaBoardsProject/dashboard/updatestickynote',
                data: {latestId: element.parentNode.id, latestValue:r1}
            });
        });
    }

    function updatedata1(element)
    {
        var r = element.parentNode.id;
        var r1 = document.getElementById(r).firstElementChild.value;
       // alert(r1);
        $(document).ready(function ()
        {
            $.ajax({
                type: 'POST',
                url: '/IdeaBoardsProject/dashboard/updatestickynote1',
                data: {latestId: element.parentNode.id, latestValue:r1}
            }) ;
        });
    }

    function updatedata2(element)
    {
        var r = element.parentNode.id;
        var r1 = document.getElementById(r).firstElementChild.value;
       // alert(r1);
        $(document).ready(function ()
        {
            $.ajax({
                type: 'POST',
                url: '/IdeaBoardsProject/dashboard/updatestickynote2',
                data: {latestId: element.parentNode.id, latestValue : r1}
            }) ;
        });
    }

    function updatedata3(element)
    {
        var r = element.parentNode.id;
        var r1 = document.getElementById(r).firstElementChild.value;
      //  alert(r1);
        console.log("r1...."+r1);
        $(document).ready(function ()
        {
            $.ajax({
                type: 'POST',
                url: '/IdeaBoardsProject/dashboard/updatestickynote3',
                data: {latestId: element.parentNode.id, latestValue : r1}
            }) ;
        });
    }

    function updatedata4(element)
    {
        var r = element.parentNode.id;
        var r1 = document.getElementById(r).firstElementChild.value;
       // alert(r1);
        $(document).ready(function ()
        {
           $.ajax({
               type: 'POST',
               url: '/IdeaBoardsProject/dashboard/updatestickynote4',
               data: {latestId: element.parentNode.id, latestValue : r1}
           }) ;
        });
    }


</script>

<script type="text/javascript">

    $(document).ready(function ()
    {
        $("select").change(function ()
        {
            $(this).find("option:selected").each(function ()
            {
                var optionValue = $(this).attr("value");
                alert(optionValue);
            });
        });
    });

</script>

</html>