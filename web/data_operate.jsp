<%-- 
    Document   : data_operate
    Created on : 2016/12/09, 23:05:34
    Author     : keiga
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        //以下の入力フィールドを持ったHTMLを、Javaで処理する想定で記述してください<br>
        //名前（テキストボックス）性別（ラジオボタン）、趣味（複数行テキストボックス<br><br>
        <form action="./data_operate.jsp" method = "post">
            名前:<input type="text" name="txtName"><br><br>
            性別:男<input type="radio" name="txtMen">　or 女<input type="radio" name="txtWomen"><br><br>
            趣味:<input type="textarea" name="txthobby">
            <input type="submit" value="送信">
        </form>
        <%
            //以下の機能を実装してください。
            //1で作成したHTMLの入力データを取得し、画面に表示する
            //受け取るパラメータの文字コード
            request.setCharacterEncoding("UTF-8");
            String name = request.getParameter("txtName");
            String men = request.getParameter("txtMen");
            String women = request.getParameter("txtWomen");
            String hobby = request.getParameter("txthobby");
            out.println(name + "<br>");
            out.println(men + "<br>");
            out.println(women + "<br>");
            out.println(hobby + "<br>");
        %>
        <%
            //クッキーの記録と表示
            //ユーザー一回目の訪問
            Date time = new Date();
            Cookie c = new Cookie("LastLogin", time.toString());
            response.addCookie(c);
            
            //次の訪問で…
            Cookie cs[] = request.getCookies();
            if (cs != null) {
                for (int i=0; i<cs.length; i++){
                    if (cs[i].getName().equals("LastLogin")) {
                    out.print("最後のログインは、"+cs[i].getValue()+"<br>");
                    break;
                }
                }
            }
        %>
        <%//セッションの作成と実装
            //「クッキーの記録と表示」と同じ機能をセッションで作成してください。
            //ユーザー一回目の訪問
            Date s = new Date();
            HttpSession hs = request.getSession(true);
            hs.setAttribute("LastLogin", s.toString());
            
            //次の訪問で…
            out.print("最後のログインは、" + hs.getAttribute("LastLogin")+ "<br><br>");
        %>
        <%//入力フィールド
        //以下の機能を実装してください
        //名前・性別・趣味を入力するページを作成してください
        //また、入力された名前・性別・趣味を記憶し、
        //次にアクセスした際に記録されたデータを初期値として表示してください
        
        %>

        <%
              Cookie f = new Cookie("Name", name);
              Cookie mmm = new Cookie("Men", men);
              Cookie www = new Cookie("Women", women);
              Cookie hhh = new Cookie("Hobby", hobby);
              response.addCookie(f);
              response.addCookie(mmm);
              response.addCookie(www);
              response.addCookie(hhh);

            Cookie ff[] = request.getCookies();
            if (ff != null) {
                for (int i=0; i<ff.length; i++){
                    if (ff[i].getName().equals("Name")) {
                    out.print("あなたの名前は"+ff[i].getValue()+"<br>");
                    break;
                }
                }
                for (int i=0; i<ff.length; i++){
                    if (ff[i].getName().equals("Men")) {
                    out.print("男"+ff[i].getValue()+"<br>");
                    break;
                }
            }
                for (int i=0; i<ff.length; i++){
                    if (ff[i].getName().equals("Women")) {
                    out.print("女"+ff[i].getValue()+"<br>");
                    break;
                }
                }
                for (int i=0; i<ff.length; i++){
                    if (ff[i].getName().equals("Hobby")) {
                    out.print("趣味"+ff[i].getValue()+"<br>");
                    break;
                }
                }
                }
            

        %>
    </body>
</html>
