<%@page import="com.Emp.Emp"%>
<%@page import="java.util.List"%>
<%@page import="com.Emp.DBConnection.Connection_provider"%>
<%@page import="com.Emp.Dao.empDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <head>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <script>
           
           
        </script>
        <script src="jQuery.js" type="text/javascript"></script>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
           
        <div id="search-bar">        
            <input type="text" placeholder="Search EMP  Name" id="search" autocomplete="off"/>
             <div class="btn"><button class="right"><a href="insert.jsp">ADD</a></button></div>
        </div> 
    <center>
        <h1 style="color:red;">Employee Managment System</h1>    
        <div id="all">  </div>
    </center>
                <script>
                    /*Load the all Emp details*/
                    $('#all').load("showEmp.jsp");
                    $('#search').on("keyup",function(){
                        var search_item=$(this).val();
                        /* when textfield is blank so again display the all employe details*/
                        if(search_item.length==0)
                        {
                          $('#all').load("showEmp.jsp");
                        }
                        /*According to search query and display the result*/
                      $.ajax({
                           url: "showdata.jsp",
                           type:"POST",
                           data:{search:search_item},
                           success: function (data) {
                               $("#all").html(data);
                    }
                  
                       }) ;
                    }
                            
            );
                </script>
    </body>
</html>
