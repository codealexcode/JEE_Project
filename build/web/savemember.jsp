
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
            if( session.getAttribute("user") == null)
                response.sendRedirect("login.jsp");
            
            else {             
                // Retrieve data from index.jsp forms ......................................
                String connectionUrl = "jdbc:derby://localhost:1527/JEEProjectDataBase";
                String userId = "jee";
                String password = "jee";
                Connection connection = null;
                Statement statement = null;
                ResultSet resultSet = null;

                try{ 
                    connection = DriverManager.getConnection(connectionUrl, userId, password);
                    statement=connection.createStatement();
                    String sql =    "INSERT INTO MEMBER (NAME, FIRSTNAME, EMAIL, TELHOME, TELMOB, TELPRO, ADDRESS, POSTALCODE, CITY)"
                                    + "VALUES('" + request.getParameter("Lastname") + "', "
                                    + "'" + request.getParameter("Firstname") + "',"
                                    + "'" + request.getParameter("Email") + "',"
                                    + "'" + request.getParameter("PhoneHome") + "',"
                                    + "'" + request.getParameter("PhoneMobile") + "',"
                                    + "'" + request.getParameter("PhoneWork") + "',"
                                    + "'" + request.getParameter("address") + "',"
                                    + "'" + request.getParameter("Zipcode") + "',"
                                    + "'" + request.getParameter("City") + "')"
                                    ;
                    statement.executeUpdate(sql);
                }
                catch (Exception e) {
                    e.printStackTrace();
                }

                response.sendRedirect("memberselector.jsp");
                }
%>
    </body>
</html>


