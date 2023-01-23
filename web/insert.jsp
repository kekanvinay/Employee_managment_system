<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet" type="text/css"/>
<script src="jQuery.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container">
        <form action="ADDEMP">
        <center>
            <h3>ADD Employee </h3>
    
        <table cellpadding="25px">
            <tr>
                <th>Employee ID</th>
                <td>
                    <input type="number" placeholder="Enter R.NO" name="id" id="Empid" required>
                <span id="msg1"></span></td> 
             
            </tr>
            
            <tr>
                <th>Employee Name</th>
                <td>
                    <input type="text" placeholder="Enter Name" name="En" required="">  
                
            </td>
            </tr>
            
            <tr>
                <th>Year of Experience</th>
                <td>
                    <input type="text" placeholder="Enter PHY" name="yoe" required>    
            </td>
            </tr>
            
            <tr>
                <th>Designation</th>
                <td>
                    <input type="text" placeholder="Enter CHE" name="Des" required/>    
            </td>
            </tr> 
            <tr>
                <th colspan="2">
                    <input type="submit" class="B"  id="b1" value="Insert">
            <button type="button" onclick="javascript:window.location='index.jsp';">Cancel</button>
                </th>
            </tr>
        </table>
</center>
        </form>
    <script>
       var ser= $('#Empid').blur(function()
        {
           xml=new XMLHttpRequest();
           xml.open("GET","valid_id_servlet?Empid="+$(this).val(),true);
           xml.send();
           xml.onreadystatechange=function ()
           {
               if(this.readyState==4&&this.status==200)
               {
                   results=this.responseText;
                   $('#msg1').html(results);
               }
           }
        }); 
    </script>
    </div>
        </body>
</html>
