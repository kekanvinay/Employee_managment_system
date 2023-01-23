package com.Emp.ControllerServlet;
import com.Emp.DBConnection.Connection_provider;
import com.Emp.Dao.empDao;
import com.Emp.Emp;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.StandardProtocolFamily;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ADDEMP extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            int Id=Integer.parseInt(request.getParameter("id"));
           String Name=request.getParameter("En");
           int YOE=Integer.parseInt(request.getParameter("yoe"));
           String Des=request.getParameter("Des");
           Emp e=new Emp(Id, Name, YOE, Des);
            empDao em=new empDao(Connection_provider.getConnection());  
            if(em.Save(e))
            {
                response.sendRedirect("index.jsp");
                out.println("Done");
                
            }
            else
            {
                out.println("error");
            }
        }
    }

}