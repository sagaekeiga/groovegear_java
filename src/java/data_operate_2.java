/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author keiga
 */
public class data_operate_2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
    Connection db_con = null;
    PreparedStatement db_st = null;
    PreparedStatement ps = null;
    PreparedStatement dd = null;
    ResultSet db_data = null;
    ResultSet ll = null;

    try
    {
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db", "sagaekeiga", "s19930528");
    db_st = db_con.prepareStatement("select * from user where age = ? ");
    db_st.setInt(1,24);
    
    
    db_data = db_st.executeQuery();
    while (db_data.next()) {
        out.print("名前:" + db_data.getString("name") + "<br>");
    }
    

    
    Statement stmt = db_con.createStatement();
    String table = "SELECT * FROM user ";
    ResultSet rs = stmt.executeQuery(table);
    while (rs.next()) {
        out.print("ID:" + rs.getInt("userID") + "<br>");
        out.print("名前:" + rs.getString("name") + "<br>");
        out.print("電話番号:" + rs.getString("tell") + "<br>");
        out.print("年齢:" + rs.getInt("age") + "<br>");
        out.print("誕生日:" + rs.getString("birthday") + "<br>");
        out.print("departmentID:" + rs.getInt("departmentID") + "<br>");
        out.print("stationID:" + rs.getInt("stationID") + "<br>");
    }
    out.print("<br><br><br>");
    dd =db_con.prepareStatement( "SELECT userID, name, tell, age, birthday, departmentID, stationID  FROM user WHERE userID=?");
    dd.setInt(1,1);
    ll = dd.executeQuery();
    while (ll.next()) {
        out.print("ID:" + ll.getInt("userID") + "<br>");
        out.print("名前:" + ll.getString("name") + "<br>");
        out.print("電話番号:" + ll.getString("tell") + "<br>");
        out.print("年齢:" + ll.getInt("age") + "<br>");
        out.print("誕生日:" + ll.getString("birthday") + "<br>");
        out.print("departmentID:" + ll.getInt("departmentID") + "<br>");
        out.print("stationID:" + ll.getInt("stationID") + "<br>");
    }
    
    ll.close();
    db_data.close();
    db_st.close();
    db_con.close();
    
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
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
