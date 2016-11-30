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
        <h1>プログラム2</h1><br>
        <h2>switch文1</h2><br>
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
        <h2>switch文2</h2><br>
        <%
        char cha = 'あ';String flash = " ";
        switch (cha){
          case 'あ':
            flash = "日本語";
            break;
          case 'A':
            flash = "英語";
            break;
          default:
            flash = "error";
            break;
        }
        out.println(flash);
        %>
        <h2>for文1</h2><br>
       <%
           long answer = 8;
           for(int i=1; i<12; i++){
               answer *= 8;
           }
           out.println(answer);
       %>
        <h2>for文2</h2><br>
        <%
            String message2 ="A";
            for(int i=1; i<30; i++){
                message2 += "A"; 
            }
            out.print(message2);
        %>
        <h2>for文3</h2><br>
        <%
            int i1 =0;
            for(int i=1;i<101;++i){
                i1 += i;
            }
            out.print(i1);
        %>
        <h2>while</h2><br>
        <%
            int y = 1000;
            while (y >100) {
                y /= 2;
                out.print(y + "  ,");
        } 
        %>
        <h2>配列の作成</h2><br>
        <%
            String xArray[] = {"10", "100", "soeda", "hayashi", "-20", "118", "END"};
            for(int d = 0; d<7;d++){
            out.print(" "+xArray[d]+", ");
            }
        %>
        <h2>配列の変更</h2><br>
        <%
            xArray[2] = "33";
            for(int d = 0; d<7;d++){
            out.print(" "+xArray[d]+", ");
            }
        %>
        <h2>連想配列の作成</h2><br>
        <%@page import="java.util.HashMap" %>
        <%
            HashMap<String, String> al = new HashMap<String, String>();
            al.put("1","AAA");
            al.put("hello","world");
            al.put("soeda","33");
            al.put("20","20");
            out.println(al.get("soeda"));
        %>
        <h2>クエリストリング(簡易素因数分解)</h2><br>
        <%
            String product1 = request.getParameter("param1"); 
            int f = Integer.parseInt(product1);
            
            for(int i=2;f>i;i++){
                while((f%i) == 0){
                    out.print(i+" ");
                    f = f/i;
                }
            }
            if (f != 1){
            out.print(f);
            }
        %>
    </body>
</html>