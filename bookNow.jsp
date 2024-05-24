<%-- 
    Document   : bookNow
    Created on : 03-Feb-2024, 1:05:45 pm
    Author     : ASUS
--%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking Page</title>
    </head>
    <body bgcolor="skyblue">
        <h1 align="center">Booking Details</h1>
        <form method="post" align="left" action="payment.html">
    <table align="center" cellpadding="5" cellspacing="5">
        <tr>
            <td>Tour ID</td>
            <td><input type="text" name="tourid" value="${sessionScope.tourid}" readonly></td>
        </tr>
        <tr>
            <td>Tour Name</td>
            <td><input type="text" name="tourname" value="${sessionScope.tourname}" readonly></td>
        </tr>
        <tr>
            <td>Tour Cost</td>
            <td><input type="text" name="tourcost" value="${sessionScope.tourcost}" readonly></td>
        </tr>
        <tr>
            <td>Name</td>
            <td><input type="text" name="nm" required></td>
        </tr>
        <tr>
            <td>Age</td>
            <td><input type="text" name="age" required></td>
        </tr>
        <tr>
            <td>Residential Proof: </td>
        
            <td><input type="radio" name="radio1" required>Adhaar Card</td>
            <td><input type="radio" name="radio1" required>Voter Card</td>
            <td><input type="radio" name="radio1" required>PAN Card</td>
            
        </tr>
        <tr>
            <td>Enter Adhaar/PAN/EPIC number:</td> 
            <td><input type="number" name="proof_num" required></td>
        </tr>
        <tr>
            <td>Enter your phone number:</td>
            <td><input type="number" name="phno" required></td>
        </tr>
            
            <tr>
                <td>Number of adult members:</td>
                <td><input type="number" name="memno" required></td>
            
            </tr>
            <tr>
                
                <td>Number of child members(below 18yrs age):</td>
                <td><input type="number" name="childmem" required></td>
            </tr>
            <tr>
                <td><input type="submit" value="payment now"></td>
            </tr>
            
            
          

    </table>
</form>

    </body>
</html>
