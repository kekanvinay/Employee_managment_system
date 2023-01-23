<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    try
    {
       Class.forName("com.mysql.cj.jdbc.Driver");
      String url="jdbc:mysql://localhost:3306/ram?useSSL=false&allowPublicKeyRetrieval=true";
      String pass="root";
      String uname="root";
     Connection connection=DriverManager.getConnection(url,uname,pass); 
      Statement statement=connection.createStatement();
      String q="select *from Emp";
     ResultSet rs=statement.executeQuery(q);
     while(rs.next())
     {
         out.println(rs.getString(1));
         out.println(rs.getString(2));
         out.println(rs.getString(3));
     }
    }
    catch(Exception e)
    {
        out.println(e);
    }

%>