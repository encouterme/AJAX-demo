<%--
  Created by IntelliJ IDEA.
  User: 黑边停航母
  Date: 2021/6/30
  Time: 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
    <body>
    <div id="container">

    </div>
    <script>
        //create xmlHttpRequest
        var xmlhttp = new XMLHttpRequest();
        //send ajax
        xmlhttp.open("GET","/NewListServlet",true); // papameter 1: Request type  Parameter 2: Your address Parameter 3: Synchronous or asynchronous
        xmlhttp.send();//Send the request

        alert("success");
        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
                var text = xmlhttp.responseText;
                var json = JSON.parse(text);
                console.log(text);
                console.log(json);
                console.log("modify from github");
                alert(json);
                // document.getElementById("container").innerText = text;
                var html = "";
                for (var i = 0;i<json.length;i++){
                    alert(i);
                    var news = json[i];
                    html = html +"<h1>"+news.title+"</h1>";
                    html = html +"<h2>" + news.date + news.source+"</h2>";
                    html = html +"</hr>";
                }
                document.getElementById("container").innerText = html;
            }
        }
    </script>
</body>
</html>
