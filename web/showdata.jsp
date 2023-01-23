<%@page import="java.util.List"%>
<%@page import="com.Emp.Emp"%>
<%@page import="com.Emp.DBConnection.Connection_provider"%>
<%@page import="com.Emp.Dao.empDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String q=request.getParameter("search");
        empDao e=new empDao(Connection_provider.getConnection());
        List<Emp> u=e.getbyid(q);
        %>
        <%
        if(u.size()>0)
        {
           %>
    <center>
        
        <table cellpadding=10px border=2 style="background-color: aqua">
            <th>EID</th>
            <th>Name</th>
            <th>YOE</th>
            <th>DEGINATION</th>
       
       
                <% for(Emp s:u)
            {
            %>
            <tr>
                <td><%=s.getId()%></td>
                <td><%=s.getName()%></td>
                <td><%=s.getYOE()%></td>
                <td><%=s.getDesignation()%></td>
            </tr>
<%}%>
 <%}
else  {
            response.getWriter().print("<h3 color='green'>Record Not Found</h3>");
        }
        
 %>
        
        
        </table>
    </center>
    </body>
</html>
