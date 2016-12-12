/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LoginCheck1;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author keiga
 */
public class LoginCheck1 extends HttpServlet {
  protected Connection conn = null;

  public void init() throws ServletException{


    try {
      Class.forName("com.mysql.jdbc.Driver").newInstance();
      conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/challenge_db", "sagaekeiga", "s19930528");
    }catch (ClassNotFoundException e){
      log("ClassNotFoundException:" + e.getMessage());
    }catch (SQLException e){
      log("SQLException:" + e.getMessage());
    }catch (Exception e){
      log("Exception:" + e.getMessage());
    }
  }

  public void destory(){
    try{
      if (conn != null){
        conn.close();
      }
    }catch (SQLException e){
      log("SQLException:" + e.getMessage());
    }
  }

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        
        
        String name = request.getParameter("user");
        String pass = request.getParameter("pass");
        
        HttpSession session = request.getSession(true);
        
        boolean check = authUser(name, pass);
        
        if (check) {
            /* 認証済みにセット*/
            session.setAttribute("login", "OK");
            
            /* 本来のアクセス先へ飛ばす */
            response.sendRedirect("/WebApplication1/session_2");
        }else{
            /* 認証に失敗したら、ログイン画面に戻す */
            session.setAttribute("status", "Not Auth");
            response.sendRedirect("/WebApplication1/Login2");
        }
    }
    
    protected boolean authUser(String name, String pass){

    try {
      String sql = "SELECT * FROM client WHERE name = ? && pass = ?";
      PreparedStatement pstmt = conn.prepareStatement(sql);

      pstmt.setString(1, name);
      pstmt.setString(2, pass);
      ResultSet rs = pstmt.executeQuery();

      if (rs.next()){
        return true;
      }else{
        return false;
      }
    }catch (SQLException e){
      log("SQLException:" + e.getMessage());
    return true;
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