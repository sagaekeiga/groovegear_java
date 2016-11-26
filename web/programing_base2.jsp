<%-- 
    Document   : programing_base2
    Created on : 2016/11/26, 21:29:06
    Author     : keiga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>プログラミング基礎2</h1><br>
        <%
        int num = 1;String message = " ";
        switch (num){
          case 1:
            message = "one";
            break;
          case 2:
            message = "two";
            break;
          default:
            message = "想定外です。";
        }
        out.println(message);
        %>
    </body>
</html>
