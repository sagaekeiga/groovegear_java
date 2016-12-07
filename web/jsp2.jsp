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
        //ユーザー定義メソッドの作成//戻り値1<br><br>
        <%!
            boolean writeName(JspWriter out, String a, String b, String c){
            try{
            out.println(a); 
            out.println(b); 
            out.println(c); 
            } catch(IOException e) {
            }
            return true;
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
        </pre><br><br>
        
        
        //引数1<br><br>
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
        }
        %>
        <%
            int j = 45;
            getNum(out, j);
        %><br><br>
        
        //引数2<br><br>
        <%!
            Integer sample(JspWriter out, Integer aaa, Integer bbb, boolean type) {
            type = false;
            bbb = 5;
            Integer ccc = 0;
            ccc = aaa * bbb;
            if(type){
                try{
                out.println(ccc);
                }catch(IOException e){
                }
            }else{
                try{
                out.println((int)Math.pow(ccc, 2));
                }catch(IOException e){
                    
                }
            }
             return ccc;
        }
        %>
        
        <%
            int y = 0;
             Integer CCC = sample(out, 48, y, true);
        %><br><br>
        
        //戻り値1<br><br>
        <%
            String dddd = "";
            String ffff = "";
            String hhhh = "";
               boolean FFF = writeName(out, dddd, ffff, hhhh);
               if(FFF == false){
                   out.println("正しく実行できませんでした");
               }else{
                   out.println("この処理は正しく実行できました");
               }
        %><br><br>
        
        //戻り値2<br><br>
        <%!
            String[] getAdd(){
            String p[];
            p = new String[4];
            p[0] = "1";
            p[1] = "寒河江";
            p[2] = "1993.5.28";
            p[3] = "仙台市";
            return p;
        }
        %>
        <%
            String o[] = getAdd();
            out.print(o[1]);
            out.print(o[2]);
            out.print(o[3]);
        %><br><br>
        
        //引数、戻り値1<br><br>
        <%!
            String[] getPro(int a){
           String p[];
            p = new String[3];
            if(a == 1){
            p[0] = "オバマ";
            p[1] = "1993.5.28";
            p[2] = "仙台市";
            }else if(a == 2){
            p[0] = "トランプ";
            p[1] = "1993.5.28";
            p[2] = "仙台市";
            }else if(a == 3){
            p[0] = "クリントン";
            p[1] = "1993.5.28";
            p[2] = "仙台市";
            }
            return p;
        }
        %>
        <%
            String u[] = getPro(3);
            out.print(u[0]);
            out.print(u[1]);
            out.print(u[2]);
        %><br><br>
        
        //引数、戻り値2<br><br>
        <%!
            String[] getProi(int a){
           String p[];
            p = new String[3];
            if(a == 1){
            p[0] = "オバマ";
            p[1] = "1993.5.28";
            p[2] = "仙台市";
            }else if(a == 2){
            p[0] = "トランプ";
            p[1] = "1993.5.28";
            p[2] = "仙台市";
            }else if(a == 3){
            p[0] = "クリントン";
            p[1] = "1993.5.28";
            p[2] = null;
            }
            return p;
        }
        %>
        <%
            for(int i=1; i<4; i++){
            String z[] = getProi(i);
            if (z[0]== null){
                continue;
            }
            out.println(z[0]);
            if (z[1]== null){
                continue;
            }
            out.println(z[1]);
            if (z[2]== null){
                continue;
            }
            out.println(z[2]);
        }
        %><br><br>

                //引数、戻り値3<br><br>
        <%
        Integer limit=2;
            for(int i=1; i<4; i++){
            String z[] = getPro(i);
            out.println(z[0]);
            out.println(z[1]);
            out.println(z[2]);
            if (limit== i){
                break;
            }
        }
         %>
        </body>
</html>
