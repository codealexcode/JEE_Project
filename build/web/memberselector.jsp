<%-- 
    Document   : bienvenue
    Created on : 21 nov. 2017, 16:35:14
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>memberselector.jsp</title>
    </head>
    <body>
        <%
            String connectionUrl = "jdbc:derby://localhost:1527/JEEProjectDataBase";
            String userId = "jee";
            String password = "jee";
            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
            try{
                connection = DriverManager.getConnection(connectionUrl, userId, password);
                statement=connection.createStatement();
                String sql = "SELECT * FROM LOGIN";
                resultSet = statement.executeQuery(sql);
                String userName = null;
                String pWd = null;
                while(resultSet.next()){

                    userName= resultSet.getString("USERNAME");
                    pWd = resultSet.getString("PASSWORD");
                }    
                String str1=request.getParameter("login");
                String str2=request.getParameter("pwd");
                connection.close();
                System.out.println(str2 + " "+pWd);
                System.out.println(str1 +" "+ userName);
                if(str1.equals(userName) && str2.equals(pWd))
                {
                  out.println("<h3>Your Login is Successful</h3>");    
                  System.out.println("GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG");
        %>
            <form name="members_form" action="dispatcher.jsp">
                <table>
                    <tr>
                        <td>
                            Sel
                        </td>
                        <td>
                            Firstname
                        </td>
                        <td>
                            Lastname
                        </td>
                        <td>
                            Email
                        </td>
                    </tr>
        <%
                    //Retrieve data from the JeeBase JavaDataBase ..............................

                    try{ 
                        connection = DriverManager.getConnection(connectionUrl, userId, password);
                        statement=connection.createStatement();
                        String sql1 = "SELECT * FROM MEMBER";
                        resultSet = statement.executeQuery(sql1);

                        while(resultSet.next()){
                            int DBId = resultSet.getInt("ID");
                            String DBName= resultSet.getString("NAME");
                            String DBFirstname = resultSet.getString("FIRSTNAME");
                            String DBEmail = resultSet.getString("EMAIL");

                            Member member = new Member();
                            member.set_id(DBId);
                            member.set_name(DBName);
                            member.set_firstname(DBFirstname);
                            member.set_email(DBEmail);

        %>
                        <br>
                        <tr>
                            <td>
                                <input type="radio" name="form_member" value="<%= member.get_id() %>">
                            </td>
                            <td>
                                <%= member.get_firstname() %>
                            </td>
                            <td>
                                <%= member.get_name() %>
                            </td>
                            <td>
                                <%= member.get_email() %>
                            </td>
                        </tr><br>        
        <%
                    }
        %>
                    <tr>
                        <input type="submit" name="selector" value="Details" /> 
                    </tr>
                    <tr>
                        <input type="submit" name="selector" value="Delete" /> 
                    </tr>
                    <tr>
                        <input type="submit" name="selector" value="Add" /> 
                    </tr>
                </table>
            </form>
        <%    
                    } 
                    catch (NullPointerException e) {
                        e.printStackTrace();
                    }
                    System.out.println("dddddddddddddddddddd");
                }
                else
                {
                    out.println("<h3>Sorry, your Login is Failed</h3>"); 
        %>
                    fail
        <%
                }
            } 
            catch (NullPointerException e) {
                e.printStackTrace();
            }
            System.out.println("fail");

%>
               
    </body>
</html>





