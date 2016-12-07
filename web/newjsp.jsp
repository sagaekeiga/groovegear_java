<%-- 
    Document   : newjsp
    Created on : 2016/12/07, 10:54:08
    Author     : keiga
--%>
<%@page import="java.io.IOException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
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
        %>
        <%
            int j = 50;
            getNum(out, j);
        %>
    </body>
</html>
