<%-- 
    Document   : boyEnter
    Created on : 13 Sep, 2015, 11:26:39 PM
    Author     : karan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enter New Entry</title>
        <%@page import="java.util.List"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="com.mongodb.*" %>
    </head>
    <body>
        <%
            int i;
            
         MongoClient m=new MongoClient("localhost",27017);
        DB db=m.getDB("Hostel_Management");
        DBCollection coll = null;
        if(request.getParameter("sex").equals("boy"))
        {
         coll=db.getCollection("Boys_Details");
        }
        else
        {
          coll=db.getCollection("Girls_Details");
        }
            String data[] =new String[16];
            data[0]=request.getParameter("ID");
            data[1]=request.getParameter("Name");
            data[2]=request.getParameter("DoB");
            data[3]=request.getParameter("BG");
            data[4]=request.getParameter("Add");
            data[5]=request.getParameter("MobS");
            data[6]=request.getParameter("MobP");
            data[7]=request.getParameter("fee");
            data[8]=request.getParameter("due");
            data[9]=request.getParameter("paydate");
            data[10]=request.getParameter("wing");
            data[11]=request.getParameter("floor");
            data[12]=request.getParameter("room");
            data[13]=request.getParameter("bed");
            data[14]=request.getParameter("damage");
            data[15]=request.getParameter("penalty");
            
            
            
            if(!data[0].equals("") && !data[1].equals("") && !data[2].equals("") && !data[3].equals("") && !data[4].equals("") && !data[5].equals("") && !data[6].equals("") && !data[7].equals("") && !data[8].equals("") && !data[9].equals("") && !data[10].equals("") && !data[11].equals("") && !data[12].equals("") && !data[13].equals("") && !data[14].equals("") && !data[15].equals(""))
            {
             String key[]={"ID","Name","DOB","Blood_Group","Address","Mobile_self","Parent_mobile_number","Fees_Paid","Fees_Due","DateOfPayment","Wing_No","Floor_No","Room_No","Bed_No","Damage","Penalty"};
            BasicDBObject doc = new BasicDBObject();
            for(i=0;i<key.length;i++)
            {
                doc.append(key[i], data[i]);
            }
            coll.insert(doc);
            response.sendRedirect("entrysuccg.html");
            }
            else
            {
                response.sendRedirect("newEntryG.html");
            }
            %>
          
    </body>
    <a href="girloptn.html"> <button class="btn btn-success"> <h2>GO BACK</h2>  </button>  </a>
</html>
