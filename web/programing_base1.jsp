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
            out.print("課題6　★クエリストリング★");//課題6
        %><br><br>
        <%
            //クエリストリング→?param1=1&param2=2&param3=3
        %><br><br><br>
        <%
            String product1 = request.getParameter("param1"); 
            String product2 = request.getParameter("param2"); 
            String product3 = request.getParameter("param3");
            
            int a = Integer.parseInt(product1);
            int b = Integer.parseInt(product2);
            int c = Integer.parseInt(product3);
            
            out.print("あなたが選んだ商品は ");
            if (a == 1){
                out.println("雑貨ですね。---------①(商品種別)");
            }
            if (a == 2){
                out.print("生鮮食品ですね---------①(商品種別)");
            }
            if (a == 3){
                out.print("その他ですね---------①(商品種別)");
            }
        %><br><br>
        <%
            out.print(b + "点のお買い上げですので、代金は" + c + "円になります。");//課題6
        %><br><br>
        <%
            out.println("本商品は、一個あたり" + c/b +"円となっております -----------②(一個あたりの値段)");
        %><br><br>
        <%
            if (c>=3000 & c<=5000) {
            out.println("ただいまキャンペーン中でして、3000円以上の商品をご購入いただいたお客様には4%の値引きをさせていただいております。-------------③(購入額に応じたポイントの表示)");
            }
        %><br><br>
        <%
            if ( c >= 3000 && c <= 5000) {
            double d = c;
            double e = d*0.96;
            int i = (int) e;
            out.println("よって、代金は" + i + "円となります。");
            }
        %>
        <%
            if (c >= 5000) {
            out.println("ただいまキャンペーン中でして、5000円以上の商品をご購入いただいたお客様には5%の値引きをさせていただいております。-------------③(購入額に応じたポイントの表示)");
            }
        %><br><br>
        <%
            if (c >= 5000) {
            double d = c;
            double e = d*0.95;
            int i = (int) e;
            out.println("よって、代金は" +i + "円となります。");
            }
        %><br><br>
        
        <%
            out.print("毎度あり。");
        %>
    </body>
</html>
