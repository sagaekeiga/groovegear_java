<%-- 
    Document   : java_standard
    Created on : 2016/12/09, 14:15:45
    Author     : keiga
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
    //Date型の値(現在時刻情報)の取得
    Date date = new Date(116, 0, 1, 0, 0, 0);
    //タイムスタンプの作成
    out.print(date);out.print("<br>");
%>
<%
    //現在の日時の表示
    Date now = new Date();
    Calendar cal = Calendar.getInstance();
    cal.setTime(now);
    int yy = cal.get(Calendar.YEAR);
    int mm = cal.get(Calendar.MONTH)+1;
    int dd = cal.get(Calendar.DAY_OF_MONTH);
    int hh = cal.get(Calendar.HOUR);
    int mi = cal.get(Calendar.MINUTE);
    int ss = cal.get(Calendar.SECOND);
    out.print(+yy+"年"+mm+"月"+dd+"日"+hh + "時" + mi + "分" + ss +"秒");
%>

    </body>
</html>
