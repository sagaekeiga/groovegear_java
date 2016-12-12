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
            商品ID<input type="number" name="productID"><br><br>
            商品名<input type="text" name="productName"><br><br>
            値段<input type="number" name="productPrice"><br><br>
            <input type="submit" value="商品情報登録"><br><br>
        </form>


        <%//productID
            request.setCharacterEncoding("UTF-8");
            String product_id = request.getParameter("productID");
            int p = 0;
            if (product_id != null){
            p = Integer.parseInt(product_id);
            out.println(p + "<br>");
            }else{
                
            }
        %><br><br>
        <%//productName
            request.setCharacterEncoding("UTF-8");
            String pname = request.getParameter("productName");
            out.println(pname + "<br>");
        %><br><br>
        <%//productPrice
            request.setCharacterEncoding("UTF-8");
            String price = request.getParameter("productPrice");
            int r = 0;
            if (price != null){
            r = Integer.parseInt(price);
            out.println(r + "<br>");
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

    String sql = "INSERT INTO product(name, productID, price) VALUES(?, ?, ?)";
    ps = db_con.prepareStatement(sql);
    ps.setString(1, pname);
    ps.setInt(2, p);
    ps.setInt(3, r);
    int num = ps.executeUpdate();
    out.println("結果：" + num);
    
    
    db_st = db_con.prepareStatement("select*from product ");


     db_data = db_st.executeQuery();
     while (db_data.next()) {
         out.print("商品ID:" + db_data.getInt("productID") + "<br>");
         out.print("商品名:" + db_data.getString("name") + "<br>");
         out.print("値段" + db_data.getInt("price") + "<br>");
     }    
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
