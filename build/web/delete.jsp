<%-- 
    Document   : delete
    Created on : Jun 23, 2020, 7:48:34 PM
    Author     : vaibhav
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <%
            String vid=(request.getParameter("jid"));
            Class.forName("com.mysql.jdbc.Driver");
                   Connection con=DriverManager.getConnection ("jdbc:mysql://localhost:3306/my_project","root","");
                   Statement st= con.createStatement();
                   st.executeUpdate("delete from Website where Id='"+vid+"'");
                   response.sendRedirect("users.jsp");
                    %>
        
    </body>
</html>
