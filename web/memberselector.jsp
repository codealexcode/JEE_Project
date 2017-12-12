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
            String connectionUrl = "jdbc:derby://localhost:1527/JEEProjectDataBase";
            String userId = "jee";
            String password = "jee";
            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;

            try{ 
                connection = DriverManager.getConnection(connectionUrl, userId, password);
                statement=connection.createStatement();
                String sql = "SELECT * FROM MEMBER";
                resultSet = statement.executeQuery(sql);
                
                while(resultSet.next()){
                    int DBId = resultSet.getInt("ID");
                    String DBName= resultSet.getString("NAME");
                    String DBFirstname = resultSet.getString("FIRSTNAME");
                    String DBEmail = resultSet.getString("EMAIL");
                    
                    Member member = new Member();
                    member.setId(DBId);
                    member.setName(DBName);
                    member.setFirstname(DBFirstname);
                    member.setEmail(DBEmail);
                    
                    %>
                    <br>
                    <tr>
                        <td>
                            <input type="radio" name="form_member" value="<%= member.getId() %>">
                        </td>
                        <td>
                            <%= member.getFirstname() %>
                        </td>
                        <td>
                            <%= member.getName() %>
                        </td>
                        <td>
                            <%= member.getEmail() %>
                        </td>
                    </tr><br>        
                    <%
                }%>
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
            catch (Exception e) {
                e.printStackTrace();
            }
            System.out.println("VDQMOVUHqvmuh");
        %>
               
    </body>
</html>





