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
                User user = new User();
                String str1 = null;
                String str2 = null;
                if (session.getAttribute("user") == null) {
                   
                    connection = DriverManager.getConnection(connectionUrl, userId, password);
                    statement=connection.createStatement();
                    String sql = "SELECT * FROM LOGIN";
                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next()){
                        user.set_login(resultSet.getString("USERNAME"));
                        user.set_pwd(resultSet.getString("PASSWORD"));
                    }
                    connection.close();
                    session.setAttribute("user", user);
                    str1=request.getParameter("login");
                    str2=request.getParameter("pwd");
                }
                else {
                    user = (User) session.getAttribute("user");
                    str1=user.get_login();
                    str2=user.get_pwd();
                }
                if(str1.equals(user.get_login()) && str2.equals(user.get_pwd()))
                {
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
                        if(resultSet != null) {
                            while(resultSet.next()) {
                                int DBId = resultSet.getInt("ID");
                                String DBName= resultSet.getString("NAME");
                                String DBFirstname = resultSet.getString("FIRSTNAME");
                                String DBEmail = resultSet.getString("EMAIL");

                                Member member = new Member();
                                member.set_id(DBId);
                                member.set_name(DBName);
                                member.set_firstname(DBFirstname);
                                member.set_email(DBEmail);
                                System.out.println(member);
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
                        connection.close();
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
                    System.out.println("fail2");
                }
                else
                {
                    out.println("<h3>Sorry, your Login Failed</h3>"); 
                }
            } 
            catch (NullPointerException e) {
                e.printStackTrace();
            }
            System.out.println("fail");
%>
               
    </body>
</html>





