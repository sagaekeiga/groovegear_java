<%-- 
    Document   : java_standard
    Created on : 2016/12/09, 14:15:45
    Author     : keiga
--%>

<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.File"%>
<%@page import="java.nio.charset.Charset"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.text.SimpleDateFormat"%>
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
    out.print(+yy+"年"+mm+"月"+dd+"日"+hh + "時" + mi + "分" + ss +"秒<br>");
%>
<%
    //タイムスタンプの表示
    Date time = new Date(116, 10, 4, 10, 0, 0);
    Calendar ca = Calendar.getInstance();
    ca.setTime(time);
    int yyy = ca.get(Calendar.YEAR);
    int mmm = ca.get(Calendar.MONTH)+1;
    int ddd = ca.get(Calendar.DAY_OF_MONTH);
    int hhh = ca.get(Calendar.HOUR);
    int mim = ca.get(Calendar.MINUTE);
    int sss = ca.get(Calendar.SECOND);
    out.print(+yyy+"年"+mmm+"月"+ddd+"日"+hhh + "時" + mim + "分" + sss +"秒<br>");
%>
<%
    //タイムスタンプの表示
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    Date dateTo = null;
    Date dateFrom = null;
  
    // 日付を作成
    try {
        dateFrom = sdf.parse("2015/01/01 0:00:00");
        dateTo = sdf.parse("2015/1/31 23:59:59");
    } catch (ParseException e) {
        e.printStackTrace();
    }
  
    // 日付をlong値に変換
    long dateTimeTo = dateTo.getTime();
    long dateTimeFrom = dateFrom.getTime();
  
    // 差分の時間を算出
    long dayDiff = dateTimeTo - dateTimeFrom; 
  
    out.println( "差分時間 : " + dayDiff +"<br>" );
%>
<%//自分の氏名について、バイト数と文字数を取得して、表示してください。
    String moji = "さがえけいが";
    out.print(moji.length()+"<br>");//文字数
    out.print(moji.getBytes().length+"<br>");
%>
<%//文字列の取得
    String add = "sagae5.28rujeae@gmail,.com";
    int add2 = add.indexOf("@");
    out.print(add.substring(add2)+"<br>");
%>
<%//文字の入れ替え
    String mojimoji = "きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます";
    out.print(mojimoji.replace("I","い" ).replace("U","う"));
    
%>
<%
    try{
    File txt = new File(application.getRealPath("test.txt"));
    
    //ファイル書き出しと保存
    FileWriter fw = new FileWriter(txt);
    fw.write("こんにちは寒河江京我です。<br>");
    fw.close();
    
    //ファイルから読み出しと表示
    FileReader fr = new FileReader(txt);
    BufferedReader br = new BufferedReader(fr);
    out.print(br.readLine());
    br.close();
    }catch(FileNotFoundException e){
        out.println(e);
    }
%>
<%//標準クラスを利用して処理を作成
    //①処理の経過を書き込むログファイルを作成する
    //②処理の開始、終了のタイミングで、ログファイルに開始・終了の書き込みを行う
    //③書き込む内容は、「日時　状況（開始・終了）」の形式で書き込む
    //④最後に、ログファイルを読み込み、その内容を表示してください。
     try{
    File txt = new File(application.getRealPath("class.txt"));
    
    //ファイル書き出しと保存
    FileWriter fh = new FileWriter(txt);
    fh.write("12/9 14時(開始)<br>");
    fh.close();

    //標準クラス
    double x = Math.sqrt(2.0);
    String s = String.valueOf(x);
    FileWriter fd = new FileWriter(txt,true);
     fd.write(s+"<br>");
     fd.close();

    FileWriter fwa = new FileWriter(txt,true);
    fwa.write("12/9 16時(終了)<br>");
    fwa.close();
    
    //ファイルから読み出しと表示
    FileReader fg = new FileReader(txt);
    BufferedReader bf = new BufferedReader(fg);
    out.print(bf.readLine());
    bf.close();
    }catch(FileNotFoundException e){
        out.println(e);
    }

%>

    </body>
</html>
