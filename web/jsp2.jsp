<%-- 
    Document   : jsp2
    Created on : 2016/12/06, 0:28:54
    Author     : keiga
--%>
<%@page import="java.io.IOException"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            void writeName(JspWriter out, String a, String b, String c){
            try{
            out.println(a); 
            out.println(b); 
            out.println(c); 
            } catch(IOException e) {
            }
        }
        %>
        <pre>
        <%
            for(int num=1; num<11; num++){
             String g = "寒河江京我";
             String h = "1993年5月28日";
             String i = "単位は残り8です。";
             writeName(out, g, h, i);
            }
        %>
        </pre>
        
        
 
        <%!
            void getNum(JspWriter out,int num1){
            if((num1% 2 == 0) && (num1 != 0)){
                try{
                out.print(num1+"は偶数です");
                    } catch(IOException e){
                }
            }else{
                    try{
                out.print(num1+"は奇数です");
                }catch(IOException e){
                    
                }
        }
            int j = 50;
            getNum(out, j);
        %>
        </body>
</html>
