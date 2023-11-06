<%-- 
    Document   : infos_user
    Created on : 10 oct. 2023, 10:48:43
    Author     : bouchaib.lemaire
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="fr.devavance.metier.beans.User, fr.devavance.metier.beans.Users" %>



<%-- Déclaration des des beans qui sont utilisés --%>
<jsp:useBean id="User" scope="request" class="fr.devavance.metier.beans.User"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Informations des utilisateurs</title>
    </head>
    <body>
        
        <div class="info_user">
            <p>
                Username : <jsp:getProperty name="User" property="userName"/>
            </p>
            <p>
                Password : <jsp:getProperty name="User" property="password"/>
            </p>
            <p>
                Profil : <jsp:getProperty name="User" property="profil"/>
            </p>
            <p>
                Authentification : <jsp:getProperty name="User" property="auth"/>
            </p>
        </div>
     
        <div class="credentials">
            <h1>Utilisateurs</h1>
            <table>
                <tr>
                    <th>UserName</th>
                    <th>Authorized</th>
                </tr>
                <!-- 
                    Il faut faire un scriptlet JSP qui récupère l'ArrayList stocké dans la session 
                    et qui affiche sur une ligne (<tr>) les username et les auth dans des <td> 
                -->
                <% 
                    Users users = (Users) request.getSession().getAttribute("users");
                    for (int i = 0; i < users.size(); i++) {
                        out.println("<tr>");
                        out.println("<td>" + users.get(i).getUserName() + "</td>");
                        out.println("<td>" + users.get(i).getAuth() + "</td>");
                        out.println("</tr>");
                    }
                %>  
            </table>
        </div>
    </body>
</html>
