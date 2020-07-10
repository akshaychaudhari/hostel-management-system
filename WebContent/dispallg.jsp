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
    p{
        font-size:20px;
        
    }
    
</style>

    </head>
     
    <body class="masthead">
       <h1> HOSTEL MANAGEMENT  </h1>
        <h3><b>List of All Girls in the Hostel</b></h3>    
    <%
        String gSet = request.getParameter("ip");
        BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
        int ch;
        MongoClient m=new MongoClient("localhost",27017);
        DB db=m.getDB("Hostel_Management");
        DBCollection coll=db.getCollection("Girls_Details");
                BasicDBObject dbo=new BasicDBObject();
//                 dbo.put("ID", gSet);
                 DBCursor cursor = coll.find(dbo);
                  out.println(" <table class=\"table table-hover\">");
                  out.println("<td> <h4> ID </h4></td>"+
                          "<td>  <h4> Name </h4></td>"
                          + "<td> <h4>Date of Birth</h4></td>"
                          + "<td> <h4>Blood Group</h4></td>"
                          + " <td> <h4>Address</h4></td>"
                          + "<td> <h4>Mobile(self)</h4> </td>"
                          + "<td> <h4>Mobile(parent)</h4></td>"
                          + "<td> <h4>Fee Paid</h4></td>"
                          + "<td> <h4>Fee Due</h4></td>"
                          + " <td> <h4>Date Of Payment</h4></td>"
                          + " <td> <h4>Wing No</h4></td>"
                          + " <td> <h4>Floor No</h4></td>"
                          + " <td> <h4>Room No</h4></td>"
                          + " <td> <h4>Bed No</h4></td>"
                          + " <td> <h4>Damage</h4></td>"
                          + " <td> <h4>Penalty</h4></td>"
                          
                  );
                while (cursor.hasNext()) {
                DBObject dbs = cursor.next();
				Object value0 = dbs.get("ID");
                
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
                    out.println("<tr>");
                    out.println("<td>"+value0+"</td><td>"+value+"</td>");
                    out.println("<td>"+value1+"</td>"+"<td>"+value2+"</td>"+"<td>"+value3+"</td>"+"<td>"+value4+"</td>"+"<td>"+value5+"</td>"+"<td>"+value6+"</td>"+"<td>"+value7+"</td>"+"<td>"+value8+"</td>"+"<td>"+value9+"</td>"+"<td>"+value10+"</td>"+"<td>"+value11+"</td>"+"<td>"+value12+"</td>"+"<td>"+value13+"</td>"+"<td>"+value14+"</td>"); 
                    out.println("</tr>");
                }
				else{}
     %>  
   <%}
                out.println("</table>");
   %>  
  
    </body>
    <a href="girloptn.html"> <button class="btn btn-success" title="GO BACK"> <h4>GO BACK</h4>  </button>  </a>
</html>
