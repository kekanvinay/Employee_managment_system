package com.Emp.DBConnection;

import java.sql.*;
public class Connection_provider {
    private static  Connection con;
    public static Connection getConnection()
    {
        try
        {
            if(con==null)
            {
                //Diver Class load
            Class.forName("com.mysql.cj.jdbc.Driver");
            //create connection
            String url="jdbc:mysql://localhost:3306/ram?useSSL=false&allowPublicKeyRetrieval=true";
            String n="root";
            String pass="root";
            con=DriverManager.getConnection(url,n,pass);
            
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con; 
    }
  
}
