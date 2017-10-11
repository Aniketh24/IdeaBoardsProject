<%--
  Created by IntelliJ IDEA.
  User: aniketh.kulkarni
  Date: 14-09-2017
  Time: 14:36
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DisplayBoards</title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<link href='http://fonts.googleapis.com/css?family=Oswald:300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Shadows+Into+Light+Two' rel='stylesheet' type='text/css'>

<style>

body
{
    margin: 40px;
}

#notes
{
    font-size: 20px;
    margin-top: 20px;
}

#notes1
{
    font-size: 20px;
    margin-top: 20px;
}

#notes2
{
    font-size: 20px;
    margin-top: 20px;
}

#notes3
{
    font-size: 20px;
    margin-top: 20px;
}

#notes4
{
    font-size: 20px;
    margin-top: 20px;
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
</style>

<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-6">
            <font size="35" color="red" style="font-family:Georgia, 'Times New Roman', Times, serif;">IdeaBoards</font>
            </div>

            <b class="col-sm-4 col-sm-offset-2"><font size="4" color="red" style="font-family:Georgia, 'Times New Roman', Times, serif;">Welcome ${session.user}</font></b>

            <div class="col-sm-1 col-sm-offset-5">
                <a href="index.gsp" >
                    <font size="6"  color="black" style="font-family:Georgia, 'Times New Roman', Times, serif;" >Logout</font></a>
                <br>
            </div>

            <div class=" col-sm-offset-8 " >
                <label >
                    <font size="" color="black" style="font-family:Georgia, 'Times New Roman', Times, serif;"> View Section </font>
                </label>

                <select>
                    <g:each in="${dataList1}" var="board">
                        <option >All Sections</option>
                        <option name="{board.swimlane0}" >${board.swimlane0}</option>
                        <option name="{board.swimlane1}" >${board.swimlane1}</option>
                        <option name="{board.swimlane2}" >${board.swimlane2}</option>
                        <option name="{board.swimlane3}" >${board.swimlane3}</option>
                        <option name="{board.swimlane4}" >${board.swimlane4}</option>
                    </g:each>
                </select>

                <label >
                    <font size="3" color="black" style="font-family:Georgia, 'Times New Roman', Times, serif;">Sort By </font>
                </label>

                <select>
                    <option value>created time</option>
                    <option value>votes</option>
                </select>

            </div>
        </div>
    </div>

    <div class="whiteboard" >
        <br>

       <g:form controller="dashboard" >

           <g:each in="${dataList}" var="board">
               <h1 align="center"><font color="#a52a2a">
               <label name="${board.titlename}" >${board.titlename}</label></font></h1>
           </g:each>

            <br>

            <div class="sections">

                %{--${dataList}--}%

               %{-- <g:each in="${dataList}" var="names" status="i">
                    ${names}

                    ${i}
                    <g:set var="swimlane" value="${names[i]}" />
                    <div class="sectionpartition1">
                        <div class="col-sm-2 ">
                                <h4><label id="data" class="sectiontitle" onkeyup="hidieButton()" name="${swimlane}" value="${swimlane}">${swimlane}
                                    <button id="new" class="btn">+</button></label></h4><div id="notes"></div>
                        </div>
                    </div>

                </g:each>--}%


                <div class="sectionpartition1">
                    <div class="col-sm-2 ">
                        <g:each in="${dataList}" var="names">
                            <h4><label id="data" class="sectiontitle" onload="hidieButton()" name="${names.swimlane0}" value="${names.swimlane0}">${names.swimlane0}
                                <button type="button" id="new"  class="btn">+</button></label></h4><div id="notes"></div>
                        </g:each>
                    </div>
                </div>

                <div class="sectionpartition2">
                    <div class="col-sm-3 ">
                        <g:each in="${dataList}" var="names">
                            <h4><label id="data1" class="sectiontitle" onkeyup="hidieButton()" value="${names.swimlane1}" name="${names.swimlane1}">${names.swimlane1}
                                <button type="button" id="new1" class="btn">+</button></label></h4><div id="notes1"></div>
                        </g:each>
                    </div>
                </div>

                <div class="sectionpartition3">
                    <div class="col-sm-3 ">
                        <g:each in="${dataList}" var="names">
                            <h4><label id="data2" class="sectiontitle" onkeyup="hidieButton()" value="${names.swimlane2}" name="${names.swimlane2}">${names.swimlane2}
                                <button type="button" id="new2" class="btn">+</button></label></h4><div id="notes2"></div>
                        </g:each>
                    </div>
                </div>

                <div class="sectionpartition4">
                    <div class="col-sm-2 ">
                        <g:each in="${dataList}" var="names">
                            <h4><label id="data3" class="sectiontitle" onkeyup="hidieButton()" value="${names.swimlane3}" name="${names.swimlane3}">${names.swimlane3}
                                <button type="button" id="new3" class="btn">+</button></label></h4><div id="notes3"></div>
                        </g:each>
                    </div>
                </div>

                <div class="sectionpartition5">
                    <div class="col-sm-2 ">
                        <g:each in="${dataList}" var="names">
                            <h4><label id="data4" class="sectiontitle" onkeyup="hidieButton()" value="${names.swimlane4}" name="${names.swimlane4}">${names.swimlane4}
                                <button type="button" id="new4" class="btn" >+</button></label></h4><div id="notes4"></div>
                        </g:each>
                    </div>
                </div>
            </div>

        </g:form>
    </div>

</body>

%{--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>--}%
%{--<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>--}%
%{--<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>--}%


<script>

   zIndex = 10;
   $('#new').click(function(){
       $('#notes')
           .append('\
            <div class="sticky-note-pre ui-widget-content">\
                &nbsp;</div>\
                <button type="button" style="margin-left: 60px" name="delete" value="delete">&Chi;</button>\
                <button type="button" style="margin-left: 10px" name="save" value="save">&checkmark;</button>\
                <div contenteditable class="contents"></div>\
         ')
           .find('.sticky-note-pre')
           .end()
       ;
       $('.sticky-note-pre')
           .draggable({
               handle: '.handle'
           })
           .resizable({
               resize: function(){
                   var n = $(this);
                   n.find('.contents').css({
                       width: n.width() - 40,
                       height: n.height() - 60
                   });
               }
           })
           .bind('click hover focus mousedown', function(){
               $(this)
                   .css('zIndex', zIndex++)
                   .find('.ui-icon')
                   .css('zIndex', zIndex++)
                   .end()
               ;
           })
           .find('.close')
           .click(function(){
               $(this).parents('.sticky-note').remove();
           })
           .end()
           .addClass('sticky-note')
           .removeClass('sticky-note-pre')
       ;
   });

   $('#new1').click(function(){
       $('#notes1')
           .append('\
            <div class="sticky-note-pre ui-widget-content">\
                &nbsp;</div>\
                <button type="button" style="margin-left: 60px" name="delete" value="delete">&Chi;</button>\
                <button type="button" style="margin-left: 10px" name="save" value="save">&checkmark;</button>\
                <div contenteditable class="contents">\
                </div>\
         ')
   });

   $('#new2').click(function(){
       $('#notes2')
           .append('\
            <div class="sticky-note-pre ui-widget-content">\
                &nbsp;</div>\
                <button type="button" style="margin-left: 60px" name="delete" value="delete">&Chi;</button>\
                <button type="button" style="margin-left: 10px" name="save" value="save">&checkmark;</button>\
                <div contenteditable class="contents"></div>\
         ')
   });

   $('#new3').click(function(){
       $('#notes3')
           .append('\
            <div class="sticky-note-pre ui-widget-content">\
                &nbsp;</div>\
                <button type="button" style="margin-left: 60px" name="delete" value="delete">&Chi;</button>\
                <button type="button" style="margin-left: 10px" name="save" value="save">&checkmark;</button>\
                <div contenteditable class="contents"></div>\
         ')
   });

   $('#new4').click(function(){
       $('#notes4')
           .append('\
            <div class="sticky-note-pre ui-widget-content">\
                &nbsp;</div>\
                <button type="button" style="margin-left: 60px"  name="delete" value="delete">&Chi;</button>\
                <button type="button" style="margin-left: 10px" name="save" value="save">&checkmark;</button>\
                <div contenteditable class="contents"></div>\
         ')
   });

   $('#save').click(function(){
       var notes = [], i, note;
       $('.sticky-note').each(function(){
           notes.push($(this).find('.contents').html());
       });
       //do something with notes
       console.log(notes);
   });
</script>

<script>
   /* var aaaa=document.getElementById("data4").value;
    $(document).ready(function() {
        if ( $('#data4').text().trim() ){
            $('#new4').show();
        } else {
            $('#new4').hide();
        }
    });*/

   /*function hidieButton()
   {
       if($("#data4").value == '') {
           document.getElementById('new4').disabled = false;
       } else {
           document.getElementById('new4').disabled = true;
       }
   }*/

   /*$(document).ready(function ()
   {
       if ($('#data4').value == " ")
       {
           $('#new4').style.display = "none";
       }
       else
       {
           $('#new4').show();
       }

   });*/

   /*$(document).ready(function () {
       if($("#data").val() == "")
           $("#new").hide();
   });

   $(document).ready(function () {
       if($("#data1").val() == "")
           $("#new1").hide();
   });

   $(document).ready(function () {
       if($("#data2").val() == "")
           $("#new2").hide();
   });

   $(document).ready(function () {
       if($("#data3").val() == "")
           $("#new3").hide();
   });*/

   /*$(document).ready(function () {
       if($("#data3").val() == " ")
           $("#new3").hide();
   });*/

  /* var id1 = document.getElementById("data4");
   var id2 = document.getElementById("new4");
   if (id1.value == '')
   {
       id2.style.visibility = 'hidden';
   }*/

  function abcd()
  {
      var i1 = document.getElementById("data4")
      if (i1 == "")
          $("#new4").hide();
      else
          $("#new4").show();
  }


</script>

</html>