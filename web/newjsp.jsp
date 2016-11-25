<%-- 
    Document   : newjsp
    Created on : 2016/11/21, 13:26:37
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
        <h1>Hello World!</h1>
        <%
            out.print("Hello world.");//課題1
            out.print("groove"+"-"+"gear");//課題2
            out.println("初めまして。寒河江京我と申します。");//課題3
            out.println("23歳です。男です。東北学院大学に通っており、単位の残りは8です。");
            out.println("よろしくお願いします。");
            final int ONE = 1;//課題4,5
            int two = 2;
            out.println(ONE + two);
            out.println(ONE - two);
            out.println(ONE * two);
            out.println(ONE / two);
            out.println(ONE % two);
            
            int params = 1;//課題6
            if (params == 1){
                out.println("1です！");
            }else if(params == 2){
            out.println("プログラミングキャンプ！");
        }else{
                out.println("その他です！");
            }
        %>
    </body>
</html>
