<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/6/15
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" import="java.lang.Class" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.lang.String " %>
<html>
<head>
    <title>成果展示</title>
</head>
<body>
<%



            Connection conn= null;
            Statement stmt=null;
            ResultSet rs=null;
            int hang=0;
    try {
                Class.forName("com.mtsql.jdbc.Driver");
                String url="jdbc:mysql://127.0.0.1:3306/info? useUnicode=ture&characterEncoding=gbk";
                conn=DriverManager.getConnection(url,"root","8799");
                stmt=conn.createStatement();
                String sql="select messsage from person1 ";
                rs=stmt.executeQuery(sql);
                while(rs.next())
                { hang++;}
                String[] arr=new String[hang];
                while(rs.next())
                for(int i=0;i<hang;i++)
                arr[i]= rs.getString("messsage");








%>

<%
int k;
    for( k=0;k<hang;k++)

%>
<div align="center">
    <%System.out .println(arr[k]);%>

</div>
<%

        rs.close();
        stmt.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

</body>
</html>
