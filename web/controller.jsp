<%-- 
    Document   : controller
    Created on : 21 nov. 2017, 16:04:47
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

<%
    // Retrieve data from index.jsp forms ......................................
    User myUser = new User();
    myUser.setLogin(request.getParameter("loginForm"));
    myUser.setPwd(request.getParameter("passForm"));
    
    //Retrieve data from the JeeBase JavaDataBase ..............................
    String connectionUrl = "jdbc:derby://localhost:1527/JEEProjectDataBase";
    String userId = "jee";
    String password = "jee";
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    
    try{ 
        connection = DriverManager.getConnection(connectionUrl, userId, password);
        statement=connection.createStatement();
        String sql ="SELECT * FROM CREDENTIALS";

        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
            String DBLogin = resultSet.getString("LOGIN");
            String DBPwd = resultSet.getString("PWD");
            
            if (myUser.getLogin().equals(DBLogin) && myUser.getPwd().equals(DBPwd)){
                response.sendRedirect("bienvenue.jsp");
            }
            else{
                response.sendRedirect("index.jsp");
            }
        }
    } 
    catch (Exception e) {
        e.printStackTrace();
    }
    %>











