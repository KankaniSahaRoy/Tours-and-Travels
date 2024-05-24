<%-- 
    Document   : login
    Created on : 25-Nov-2023, 11:35:50 am
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
    </head>
    <body>
        
        <h2 align="center">LOGIN PAGE</h2>
        <form method="post" align="center">
            <table align="center" cellpadding="5" cellspacing="5">
                <tr>
                    <td>Enter your email id</td>
                    <td><input type="text"name="em"required></td>
                    
                </tr>
                
                <tr>
                    <td>Enter your password</td>
                    <td><input type="password" name="pass"required ></td>
                    
                    
                </tr>
                
                <tr>
                    <td align="center"><input type="submit"value="submit"></td>
                    
                </tr>
                </table>
                
            <a href="registration.jsp">New User?</a>
            
             
            
        </form>
        <%
            String em=request.getParameter("em");
            String ps=request.getParameter("pass");
            try
            {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tutorial","root","kankani123");
            String q="select * from registration where email=? and password=?";
            PreparedStatement p=con.prepareStatement(q);
            p.setString(1,em);
            p.setString(2,ps);
            ResultSet rs=p.executeQuery();
            if(rs.next())
            {
            response.sendRedirect("explore.jsp");
        }
        else
        {
        out.println("invalid login");
        }
        }
        catch(Exception e)
        {
        out.println(e);
        }
        %>
    </body>
</html>
