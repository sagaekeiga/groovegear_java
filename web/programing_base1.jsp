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
        <h1>プログラミング基礎1</h1>
        <%
            out.print("課題1");//課題1
        %><br>
        <%
            out.print("Hello world.");//課題1
        %><br><br>
        <%
            out.print("課題2");//課題2
        %><br>
        <%
            out.print("groove"+"-"+"gear");//課題2
        %><br><br>
        <%
            out.print("課題3");//課題3
        %><br>        
        <%
            out.print("初めまして。寒河江京我と申します。");//課題3
        %><br>       
        <%
            out.print("23歳です。男です。東北学院大学に通っており、単位の残りは8です。");//課題4
        %><br>        
        <%
            out.print("よろしくお願いします。");//課題3
        %><br><br>
        <%
            out.print("課題4");//課題4
        %><br>
        <%
            final int ONE = 1;//課題4
            int two = 2;
            out.println(ONE + two);
            out.println(ONE - two);
            out.println(ONE * two);
            out.println(ONE / two);
            out.println(ONE % two);
        %><br><br>
        <%
            out.print("課題5");//課題5
        %><br>        
        <%
            int params = 1;//課題6
            if (params == 1){
                out.println("1です！");
            }else if(params == 2){
            out.println("プログラミングキャンプ！");
            }else{
                out.println("その他です！");
            }
        %><br><br>
        
        <%
            out.print("課題6");//課題6
        %><br><br>
        <%
            out.print("‐‐①‐‐");//課題6
        %><br>
        <%
            String product1 = request.getParameter("param1"); 
            String product2 = request.getParameter("param2"); 
            String product3 = request.getParameter("param3");
            
            out.print("商品種別  →  ");
            if ("1".equals(product1)){
                out.println("1:雑貨  ");
            }
            if ("2".equals(product2)){
                out.print("2:生鮮食品  ");
            }
            if ("3".equals(product3)){
                out.print("3:その他");
            }
        %><br><br>
　　　　<%
            out.print("‐‐②‐‐");//課題6
        %><br><br>
        <%
            out.println("総額:1500円");
        %><br><br>
        <%
            out.println("雑貨:10個");
        %><br><br>
        <%
            out.println("生鮮食品:1個");
        %><br><br>
        <%
            out.println("その他:4個");
        %><br><br>
        <%
            out.println("一個当たりの値段");
        %><br><br>
        <%
            out.println("雑貨:50円");
        %><br><br>
        <%
            out.println("生鮮食品:700円");
        %><br><br>
        <%
            out.println("その他:75円");
        %><br><br>
        <%
            out.print("‐‐②‐‐");
        %><br><br>        
        <%
            out.print("CASE:3000円");
        %><br><br>
        <%
            out.print("発生ポイント→"+3000*0.04+"ポイント");
        %><br><br>
        <%
            out.print("CASE:5000円");
        %><br><br>
        <%
            out.print("発生ポイント→"+5000*0.05+"ポイント");
        %>
    </body>
</html>
