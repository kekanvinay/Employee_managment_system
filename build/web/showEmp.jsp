<%@page import="java.util.List"%>
<%@page import="com.Emp.Emp"%>
<%@page import="com.Emp.Dao.empDao"%>
<%@page import="com.Emp.DBConnection.Connection_provider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <%
        empDao e = new empDao(Connection_provider.getConnection());
        List<Emp> e2 = e.getAllEmp();%>
    <body>
        
        <div id="all">
        <center>
            <!-- Display the All Empolyee -->
                <table cellpadding=10px border=2 >
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
    </body>
</html>
