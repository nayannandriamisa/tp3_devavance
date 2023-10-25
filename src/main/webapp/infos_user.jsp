<%-- 
    Document   : infos_user
    Created on : 10 oct. 2023, 10:48:43
    Author     : bouchaib.lemaire
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%-- Déclaration des des beans qui sont utilisés --%>
<jsp:useBean id="User" scope="request" class="fr.devavance.metier.beans.User"/>
<jsp:useBean id="Users" scope="session" class="fr.devavance.metier.beans.Users"/>
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
                <jsp:scriptlet 
                    
                />
            </table>
            
        </div>
        
    </body>
</html>
