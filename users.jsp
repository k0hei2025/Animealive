<%-- 
    Document   : users
    Created on : Jun 22, 2020, 11:10:03 AM
    Author     : vaibhav
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show</title>
    </head>
    <body>
        <table border="1px">
        <%
        String name , pwd, id;
        
            
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_project","root","");
        Statement st = com.createStatement();
        ResultSet rs = st.executeQuery("select * from Website");
        while (rs.next())
        {
            id = rs.getString(1);
            name=rs.getString("user");
            pwd = rs.getString("pass");
            
        
        
                %>
                <tr><td><%=id%></td><td> <%=name%></td><td><%=pwd%></td>
    <td> edit</td><td><a href="delete.jsp?jid=<%=id%>">delete</a></td> <td></tr>
                
    <%}%>
        
                
</table>
<a href ="index.html">home</a>
    </body>
</html>
