<%-- 
    Document   : modifymember
    Created on : 6 déc. 2017, 22:58:27
    Author     : Alexis
--%>
<%@page import="com.efrei.model.Member"%>
<%@page import="java.io.Console"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.efrei.model.*"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
    </head>
    <body>
        <%
    // Retrieve data from index.jsp forms ......................................
    String connectionUrl = "jdbc:derby://localhost:1527/JEEProjectDataBase";
    String userId = "jee";
    String password = "jee";
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    
    try{ 
        connection = DriverManager.getConnection(connectionUrl, userId, password);
        statement = connection.createStatement();
        String sql =    "UPDATE MEMBER "
                        + "SET NAME = '" + request.getParameter("Lastname") + "', "
                        + "FIRSTNAME = '" + request.getParameter("Firstname") + "', "
                        + "EMAIL = '" + request.getParameter("Email") + "', "
                        + "PHONE_HOME = '" + request.getParameter("PhoneHome") + "', "
                        + "PHONE_MOBILE = '" + request.getParameter("PhoneMobile") + "', "
                        + "PHONE_WORK = '" + request.getParameter("PhoneWork") + "', "
                        + "ADDRESS = '" + request.getParameter("address") + "', "
                        + "ZIP_CODE = '" + request.getParameter("Zipcode") + "', "
                        + "CITY = '" + request.getParameter("City") + "' "
                        + "WHERE ID = " + request.getParameter("id")
                        ;

        statement.executeUpdate(sql);
    }
    catch (Exception e) {
        e.printStackTrace();
    }
    response.sendRedirect("memberselector.jsp");
    
%>
    </body>
</html>


