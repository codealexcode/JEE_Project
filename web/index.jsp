<%-- 
    Document   : index
    Created on : 21 nov. 2017, 15:35:18
    Author     : Alexis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>index.jsp</title>
    </head>
    <body>
        <h1>Enter your credentials</h1>
            <form name="indexform" action="memberselector.jsp">
                <table>
                    <tr>
                        <td>
                            Name: 
                        </td>
                        <td>
                            <input type="text" name="login" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password: 
                        </td>
                        <td>
                            <input type="text" name="pwd" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Submit" /> 
                        </td>
                    </tr>
                </table>                      
            </form>
        </body>
</html>
