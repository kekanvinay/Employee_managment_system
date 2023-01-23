package com.Emp.Dao;
import com.Emp.Emp;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class empDao {
Connection con;
    public empDao(Connection con) {
        this.con=con;
    }
   public boolean Save(Emp e)
   {boolean f=false;
     try
     {
         Statement st=con.createStatement();
         String q="insert into EMP(id,Name,YOE, Designation)values('"+e.getId()+"','"+e.getName()+"','"+e.getYOE()+"','"+e.getDesignation()+"')";     
         st.executeUpdate(q);
         f=true;
     }
     catch(Exception e1)
     {
         System.out.println(e1);
     }
     return f;
   }
   public List getAllEmp()
   {
       
       List<Emp> list=new ArrayList<Emp>();
       try
       {
       Statement st=con.createStatement();
        String q="Select* from Emp";
           ResultSet rs= st.executeQuery(q);
           while(rs.next())
           {
               Emp e=new Emp();
             e.setId(Integer.parseInt(rs.getString(1)));
             e.setName(rs.getString(2));
             e.setYOE(Integer.parseInt(rs.getString(3)));
             e.setDesignation(rs.getString(4));
             list.add(e);
           }           
       }
       catch(Exception e1)
       {
           System.out.println(e1);
       }
    return list;
   }
   public List getbyid(String name)
   {
       List<Emp> list=new ArrayList<>(); 
       try
       {
       Statement st=con.createStatement();
        String q="Select* from Emp Where Name like'"+name+"%'";
           ResultSet rs= st.executeQuery(q);
           if(rs.next())
           {
              Emp e=new Emp();
             e.setId(Integer.parseInt(rs.getString(1)));
             e.setName(rs.getString(2));
             e.setYOE(Integer.parseInt(rs.getString(3)));
             e.setDesignation(rs.getString(4));
             list.add(e);
           }           
       }
       catch(Exception e1)
       {
           System.out.println(e1);
       }
      return list; 
   }
}
