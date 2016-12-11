<%-- 
    Document   : data_operate_3
    Created on : 2016/12/11, 17:34:29
    Author     : keiga
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="./data_operate_3.jsp" method = "post">
            <input type="number" name="txtSearch"><br><br>
            <input type="submit" value="検索">
        </form>
        <%
            request.setCharacterEncoding("UTF-8");
            String search = request.getParameter("txtSearch");
            out.println(search + "<br>");
        %><br><br>
        <form action="./data_operate_3.jsp" method = "post">
            名前<input type="text" name="txtIn">
            userID<input type="number" name="numSearch">
            <input type="submit" value="挿入"><br><br>
        </form>
        <%
            request.setCharacterEncoding("UTF-8");
            String name = request.getParameter("txtIn");
            out.println(name + "<br>");
        %><br><br>

        <%
            request.setCharacterEncoding("UTF-8");
            String user_id = request.getParameter("numSearch");
            int u = 0;
            if (user_id != null){
            u = Integer.parseInt(user_id);
            out.println(u + "<br>");
            }else{
                
            }
        %><br><br>

<%
    Connection db_con = null;
    PreparedStatement db_st = null;
    PreparedStatement ps = null;
    PreparedStatement dd = null;
    ResultSet db_data = null;

    
    try
    {
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db", "sagaekeiga", "s19930528");

    String sql = "delete from user where userID = ?";
     ps = db_con.prepareStatement(sql);
     ps.setInt(1, u);
     int num = ps.executeUpdate();
     out.println("結果：" + num);

     
        } catch(SQLException e_sql){
        out.println("接続時にエラーが発生しました：" + e_sql.toString());
    } catch (Exception e) {
        out.println("接続時にエラーがしました：" + e.toString());
    }finally {
    if (db_con != null){
        try {
            db_con.close();
        }catch (Exception e_con) {
            System.out.println(e_con.getMessage());
        }
        
    }
}
%>
    </body>
</html>
