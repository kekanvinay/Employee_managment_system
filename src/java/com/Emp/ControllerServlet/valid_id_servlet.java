package com.Emp.ControllerServlet;
import com.Emp.DBConnection.Connection_provider;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class valid_id_servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         int id=Integer.parseInt(request.getParameter("Empid"));
            int count=0;
        //Databases relaetd code
            try{
        Connection con=Connection_provider.getConnection();
        Statement st=con.createStatement();
        String q="select id from emp where id='"+id+"'";
        ResultSet rs=st.executeQuery(q);
        if(rs.next())
                count++;
        if(count==0)
        {
             response.getWriter().println("<font color='green'/>Done");
        }
        else
        {
             response.getWriter().println("<font color='red'/>Already use this id");
        }
            }
            catch(Exception e)
            {
                response.getWriter().println(e);
            }
         response.setContentType("text/html;charset=UTF-8");
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

    }


