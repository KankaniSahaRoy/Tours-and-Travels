<%-- 
    Document   : registration
    Created on : 19-Nov-2023, 11:57:15 am
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>registration form</title>
        <link rel="stylesheet" href="reg.css"/>
    </head>
    <body bgcolor="pink">
        <h1 align="center">REGISTRATION FORM</h1>
        <form method="post" align="center">
            <table align="center">
                <tr>
                <a href="index.html"></a>
                    <td>Enter your email id</td>
                    <td><input type="text"name="em"required></td>
                </tr>
                <tr>
                    <td>Enter your name</td>
                    <td><input type="text"name="nm"required></td>
                </tr>
                <tr>
                    <td>Enter your address</td>
                    <td><input type="text"name="ad"required></td>
                </tr>
                <tr>
                    <td>Enter your password</td>
                    <td><input type="password"name="pass"required></td>
                </tr>
                <tr>
                    
                    <td><input type="submit"value="submit"></td>
                </tr>
                
            </table>
            <br>
            <br>
            <a href="login.jsp">Already a user?login here</a>
        </form>
        <%
            String mail=request.getParameter("em");
            String uname=request.getParameter("nm");
            String add=request.getParameter("ad");
            String pass=request.getParameter("pass");
            try
            {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tutorial","root","kankani123");
            String  ins="insert into registration (email,name,address,password) values (?,?,?,?)";
            PreparedStatement p=con.prepareStatement(ins);
            p.setString(1,mail);
            p.setString(2,uname);
            p.setString(3,add);
            p.setString(4,pass);
            p.executeUpdate();
            con.close();
            response.sendRedirect("login.jsp");
           
            
           
        }catch(Exception e)
{
out.println(e.getMessage());
}%>
           
    </body>
</html>
