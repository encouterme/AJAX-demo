<%--
  Created by IntelliJ IDEA.
  User: 黑边停航母
  Date: 2021/6/30
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <input id="btnLoad" type="button" value="load">
  <div id="divContent"></div>
  <script>

    alert("masterfirst2012");
    alert("hotfixfirst2015");
    alert("hotfixsecond2021");
    alert("masterfixsecond2025");

    document.getElementById("btnLoad").onclick = function(){
      //1. Create XMLHttpRequest object
      var xmlhttp;
      if(window.XMLHttpRequest){
        xmlhttp = new XMLHttpRequest(); //For IE7 Google Chrome Firefox
      }else{
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP"); //IE6 below old browser
      }
      //console.log(xmlhttp);
      //2. Send Ajax request
      xmlhttp.open("GET","/NewListServlet","true"); // papameter 1: Request type  Parameter 2: Your address Parameter 3: Synchronous or asynchronous
      xmlhttp.send();//Send the request

      //3. Process server response
      xmlhttp.onreadystatechange = function(){ //Monitor the executive process of Ajax
        if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
          var t = xmlhttp.responseText; //Receive the text value from servlet
          //alert(t);
          document.getElementById("divContent").innerHTML=t; // Update the div
        }
      }
    }
  </script>
  $END$
  </body>
</html>
