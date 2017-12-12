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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>dispatcher.jsp</title>
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
    String selection = request.getParameter("selector");
    
            if (selection.equals("Details")){
            
                try{ 
                    connection = DriverManager.getConnection(connectionUrl, userId, password);
                    statement=connection.createStatement();
                    String sql = "SELECT * FROM MEMBER where ID = "+request.getParameter("form_member");
                    resultSet = statement.executeQuery(sql);
                    
                    while(resultSet.next()){
                        int DBId = resultSet.getInt("ID");
                        String DBName= resultSet.getString("NAME");
                        String DBFirstname = resultSet.getString("FIRSTNAME");
                        String DBEmail = resultSet.getString("EMAIL");
                        String DBPhoneHome = resultSet.getString("PHONE_HOME");
                        String DBPhoneWork = resultSet.getString("PHONE_WORK");
                        String DBPhoneMobile = resultSet.getString("PHONE_MOBILE");
                        String DBAddress = resultSet.getString("ADDRESS");
                        String DBZipCode = resultSet.getString("ZIP_CODE");
                        String DBCity = resultSet.getString("CITY");
                        Member member = new Member(DBId,DBName,DBFirstname,DBEmail,DBPhoneHome,DBPhoneMobile,DBPhoneWork,DBAddress,DBZipCode,DBCity); 
                        
                        %>
                                <form name="dispatcherform" action="modifymember.jsp">
                                    <table>
                                            <input type="hidden" name="id" value="<%=member.getId()  %>" >
                                            <tr>
                                                <td>Lastname: </td>
                                                <td><input type="text" name="Lastname" value="<%=member.getName()  %>" ></td>
                                                <td>Firstname: </td>
                                                <td><input type="text" name="Firstname" value="<%=member.getFirstname()  %>" ></td>
                                            </tr>
                                            <tr><td>Phone Numbers:</td></tr>
                                            <tr>
                                                <td>Home:</td>
                                                <td><input type="text" name="PhoneHome" value="<%=member.getPhoneHome()  %>">  </td>
                                            </tr>
                                            <tr>
                                                <td>Mobile:</td>
                                                <td><input type="text" name="PhoneMobile" value="<%=member.getPhoneMobile()  %>">  </td>
                                            </tr>
                                            <tr>
                                                <td>Work:</td>
                                                <td><input type="text" name="PhoneWork" value="<%=member.getPhoneWork()  %>">  </td>
                                            </tr>
                                            <tr>
                                                <td>Address:</td>
                                                <td><input type="text" name="address" value="<%=member.getAddress()  %>">  </td>
                                            </tr>
                                            <tr>
                                                <td>Postal Code:</td>
                                                <td><input type="text" name="Zipcode" value="<%=member.getZipcode()  %>">  </td>
                                                <td><input type="text" name="City" value="<%=member.getCity()  %>">  </td>
                                            </tr>
                                            <tr>
                                                <td>Email:</td>
                                                <td><input type="text" name="Email" value="<%=member.getEmail()  %>">  </td>
                                            </tr>
                                            <tr>
                                                <td><input type="submit" value="Save" /> </td>
                                                <td><input type="reset" ></td>
                                            </tr>
                                    </table> 
                                </form>     
                    <%
                    }  
                }
                catch (Exception e) {
                    e.printStackTrace();
                }
            }
            else if (selection.equals("Delete")){
                try{ 
                    connection = DriverManager.getConnection(connectionUrl, userId, password);
                    statement = connection.createStatement();
                    String sql = "DELETE FROM MEMBER where ID = "+request.getParameter("form_member");
                    statement.executeUpdate(sql);
                }
                catch (Exception e) {
                    e.printStackTrace();
                }
                response.sendRedirect("memberselector.jsp");

            }
            else if (selection.equals("Add")){
            %>
                <form name="dispatcherform" action="savemember.jsp">
                                    <table>
                                            <tr>
                                                <td>Lastname: </td>
                                                <td><input type="text" name="Lastname" ></td>
                                                <td>Firstname: </td>
                                                <td><input type="text" name="Firstname" ></td>
                                            </tr>
                                            <tr><td>Phone Numbers:</td></tr>
                                            <tr>
                                                <td>Home:</td>
                                                <td><input type="text" name="PhoneHome">  </td>
                                            </tr>
                                            <tr>
                                                <td>Mobile:</td>
                                                <td><input type="text" name="PhoneMobile">  </td>
                                            </tr>
                                            <tr>
                                                <td>Work:</td>
                                                <td><input type="text" name="PhoneWork">  </td>
                                            </tr>
                                            <tr>
                                                <td>Address:</td>
                                                <td><input type="text" name="address">  </td>
                                            </tr>
                                            <tr>
                                                <td>Postal Code:</td>
                                                <td><input type="text" name="Zipcode">  </td>
                                                <td><input type="text" name="City">  </td>
                                            </tr>
                                            <tr>
                                                <td>Email:</td>
                                                <td><input type="text" name="Email">  </td>
                                            </tr>
                                            <tr>
                                                <td><input type="submit" name="Save" value="Save"> </td>
                                                <td><input type="reset" ></td>
                                            </tr>
                                    </table> 
                    </  form>
            <%}
        %>
    </body>
</html>








