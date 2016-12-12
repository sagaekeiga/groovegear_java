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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author keiga
 */
public class session_2 extends HttpServlet {

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
        String target = request.getRequestURI();

        HttpSession session = request.getSession(false);

        if (session == null){
            session = request.getSession(true);
            session.setAttribute("target", target);

            response.sendRedirect("/WebApplication1/Login1");
        }else{
            Object loginCheck = session.getAttribute("login");
            if (loginCheck == null){
                session.setAttribute("target", target);
                response.sendRedirect("/WebApplication1/Login1");
            }
        }

            request.setCharacterEncoding("UTF-8");
            String product_id = request.getParameter("productID");
            int p = 0;
            if (product_id != null){
            p = Integer.parseInt(product_id);
            out.println(p + "<br>");
            }else{
                
            }

            request.setCharacterEncoding("UTF-8");
            String pname = request.getParameter("productName");
            out.println(pname + "<br>");

            request.setCharacterEncoding("UTF-8");
            String price = request.getParameter("productPrice");
            int r = 0;
            if (price != null){
            r = Integer.parseInt(price);
            out.println(r + "<br>");
            }else{
                
            }

        out.println("<html>");
        out.println("<head>");
        out.println("<title>ユーザー認証テスト</title>");
        out.println("</head>");
        out.println("<body>");

        out.println("<p>テストページ1</p>");
        out.println(" <form action=\"./data_operate_3.jsp\" method = \"post\">\n" +
"            商品ID<input type=\"number\" name=\"productID\"><br><br>\n" +
"            商品名<input type=\"text\" name=\"productName\"><br><br>\n" +
"            値段<input type=\"number\" name=\"productPrice\"><br><br>\n" +
"            <input type=\"submit\" value=\"商品情報登録\"><br><br>\n" +
"        </form>");
        
        out.println("<p><a href=\"/WebApplication1/session\">テストページ2へ</a></p>");

        out.println("<p><a href=\"/WebApplication1/Logout\">ログアウト</a></p>");

        out.println("</body>");
        out.println("</html>");
        
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
