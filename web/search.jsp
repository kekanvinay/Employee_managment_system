<%@page import="com.Emp.Emp"%>
<%@page import="java.util.List"%>
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
        <%
      String name=request.getParameter("sch");
       empDao e=new empDao(Connection_provider.getConnection());
     List<Emp> e1=e.getbyid(name);
     %>
     <center>
    <table cellpadding=25px; border="1">
<td>EmpID</td>
<td>Name</td>
<td>YOE</td>
<td>Designation</td>
     <%
     for(Emp q:e1)
     {
         %>  
    <tr>       
    <td> <%=q.getId()%></td>
    <td> <%= q.getName() %></td>
    <td> <%= q.getYOE() %></td>
    <td> <%=q.getDesignation()%></td>
</tr>
<%
     }
        %>
     </table>
        </center>
    </body>
</html>
<!--<div id="all">  
            <center>
                <table cellpadding=25px border=2 >
                    <th>Eid</th>
                    <th>EName</th> 
                    <th>YOE</th>
                    <th>Degination</th>
                        <%
                            for (Emp u : e2) {
                        %>
                    <tr>
                        <td><%=u.getId()%></td>
                        <td><%=u.getName()%></td>
                        <td><%=u.getYOE()%></td>
                        <td><%=u.getDesignation()%></td>
                    </tr>
                    <%
                        }
                    %> 
                </table>
            </center>
        </div>