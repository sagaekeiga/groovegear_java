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
        //ユーザー定義メソッドの作成//戻り値1
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
        </pre>
        
        
        //引数1
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
        %>
        
        //引数2
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
        %>
        
        //戻り値1
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
        %>
        
        //戻り値2
        <%!
            String getAdd(JspWriter out, Integer id, String k, String l, String p){
            id = 1;
            k = "寒河江";
            l = "1993年5月28日";
            p = "仙台";
            return k & l & p;
        }
        %>
        </body>
</html>
