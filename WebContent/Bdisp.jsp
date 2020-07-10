
<!DOCTYPE html>
<html>
    
    <head>
<%@page import="java.util.List"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mongodb.*" %>
<link href='bootstrap/css/bootstrap.min.css' rel="stylesheet" />
<style>
    body{
	background-color: #EBF4FA;
	font-family : Helvetica; 
    }
    
    h1{
	background-color: #728FCE;
	color : white;
	text-align : center;
	padding:10px;
    }
    h3{
        text-align: center;
        clear:both;
	padding:7px;
	background-color:#cde5ef;
	color:#333;
	text-align:center;
        font-family:initial;
    }
    
</style>
    </head>
    <body>
    <%
        String gSet = request.getParameter("ip");
        BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
        int ch;
        MongoClient m=new MongoClient("localhost",27017);
        DB db=m.getDB("Hostel_Management");
        DBCollection coll=db.getCollection("Boys_Details");
                BasicDBObject dbo=new BasicDBObject();
                 dbo.put("ID", gSet);
                 DBCursor cursor = coll.find(dbo);
                 
                while (cursor.hasNext()) {
                DBObject dbs = cursor.next();
                Object value0 =dbs.get("ID");
                Object value = dbs.get("Name");
                Object value1 = dbs.get("DOB");
                Object value2 = dbs.get("Blood_Group");
                Object value3 = dbs.get("Address");
                Object value4 = dbs.get("Mobile_self");
                Object value5 = dbs.get("Parent_mobile_number");
                Object value6 = dbs.get("Fees_Paid");
                Object value7 = dbs.get("Fees_Due");
                Object value8 = dbs.get("DateOfPayment");
                Object value9 = dbs.get("Wing_No");
                Object value10 = dbs.get("Floor_No");
                Object value11 = dbs.get("Room_No");
                Object value12 = dbs.get("Bed_No");
                Object value13 = dbs.get("Damage");
                Object value14 = dbs.get("Penalty");
                
                
          if (value0 !=null && value!=null && value1!=null && value2!=null && value3 !=null && value4!=null && value5!=null && value6 !=null && value7!=null && value8!=null && value9!=null && value10 !=null && value11!=null && value12!=null && value13!=null && value14 !=null)
                {
                    %><table class="table table-striped">
                    <tr> <h3>PERSONAL</h3>
                    <td>NAME</br>
                    <% out.println(value); %>
                    </td>
                    <td>DATE OF BIRTH</br>
                    <% out.println(value1); %>
                    </td>
                    <td>BLOOD GROUP</br>
                    <% out.println(value2); %>
                    </td>
                    <td>ADDRESS</br>
                    <% out.println(value3); %>
                    </td>
                    <td>MOBILE SELF</br>
                    <% out.println(value4); %>
                    </td>
                    <td>MOBILE PARENT</br>
                    <% out.println(value5); %>
                    </td>
                    </tr>
    </table>
                    <table class="table table-striped">
                    <tr> <h3> FEE DETAILS </h3>
                    <td>FEE PAID</br>
                    <% out.println(value6); %>
                    </td>
                    <td>FEE DUE</br>
                    <% out.println(value7); %>
                    </td>
                    <td>Date of Payment</br>
                    <% out.println(value8); %>
                    </td>
                    </tr>
                    </table>
                    <table class="table table-striped">
                    <tr> <h3> ALLOTMENT DETAILS </h3> </tr>
                    <tr>
                    <td>WING No.</br>
                    <% out.println(value9); %>
                    </td>
                    <td>FLOOR No.</br>
                    <% out.println(value10); %>
                    </td>
                    <td>ROOM No.</br>
                    <% out.println(value11); %>
                    </td>
                    <td>BED No.</br>
                    <% out.println(value12); %>
                    </td>
                    </tr>
    </table>
                    <table class="table table-striped">
                        <tr> <h3> VIOLATIONS </h3> </tr>
                    <td>DAMAGE</br>
                    <% out.println(value13); %>
                    </td>
                    <td>PENALTY</br>
                    <% out.println(value14); %>
                    </td>
                    
                </table>
    <%
                }
                else
                {
                }      
    %>
                
                <!--out.println("<p>"+value+"</p>"+"<p>"+value1+"</p>"+"<p>"+value2+"</p>"+"<p>"+value3+"</p>"+"<p>"+value4+"</p>"+"<p>"+value5+"</p>"); %>-->
                
                
        
   <%}%>  
    </body>
    <a href="index.html"> <button class="btn btn-success" > <h2>HOME</h2>  </button>  </a>
</html>
