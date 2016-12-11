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
            userID<input type="number" name="numSearch"><br><br>
            名前<input type="text" name="txtIn"><br><br>
            tell<input type="text" name="tell"><br><br>
            age<input type="text" name="age"><br><br>
            birthday<input type="date" name="birthday"><br><br>
            departmentID<input type="number" name="department"><br><br>
            stationID<input type="number" name="station"><br><br>
            <input type="submit" value="挿入"><br><br>
        </form>
        <%//名前
            request.setCharacterEncoding("UTF-8");
            String name = request.getParameter("txtIn");
            out.println(name + "<br>");
        %><br><br>

        <%//userID
            request.setCharacterEncoding("UTF-8");
            String user_id = request.getParameter("numSearch");
            int u = 0;
            if (user_id != null){
            u = Integer.parseInt(user_id);
            out.println(u + "<br>");
            }else{
                
            }
        %><br><br>
        <%//tell
            request.setCharacterEncoding("UTF-8");
            String tell = request.getParameter("tell");
            out.println(tell + "<br>");
        %><br><br>
        <%//age
            request.setCharacterEncoding("UTF-8");
            String age = request.getParameter("age");
            out.println(age + "<br>");
        %><br><br>
        <%//birthday
            request.setCharacterEncoding("UTF-8");
            String birthday = request.getParameter("birthday");
            out.println(birthday + "<br>");
        %><br><br>
        <%//departmentID
            request.setCharacterEncoding("UTF-8");
            String department = request.getParameter("department");
            int d = 0;
            if (department != null){
            d = Integer.parseInt(department);
            out.println(d + "<br>");
            }else{
                
            }
        %><br><br>
        <%//stationID
            request.setCharacterEncoding("UTF-8");
            String station = request.getParameter("station");
            int s = 0;
            if (station != null){
            s = Integer.parseInt(station);
            out.println(s + "<br>");
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

    String sql = "update user set name=?, tell=?, age=?, birthday=?, departmentID=?, stationID=? where userID = ?";
     ps = db_con.prepareStatement(sql);
     ps.setString(1, name);
     ps.setString(2, tell);
     ps.setString(3, age);
     ps.setString(4, birthday);
     ps.setInt(5, d);
     ps.setInt(6, s);
     ps.setInt(7, u);
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
