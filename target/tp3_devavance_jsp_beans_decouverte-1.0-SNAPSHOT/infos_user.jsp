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
            <div class="titres" style="display: flex">
                <h3 style="margin-right: 10px">UserName</h3>
                <h3 style="margin-left: 10px">Authorized</h3>
            </div>
            
            <div class="utilisateurs" style="display: flex">
                <p style="margin-right: 45px">
                    <jsp:scriptlet
                        
                    />
                </p>
                <p style="margin-left: 45px">
                    
                </p>
                
            </div>
            
        </div>
        
    </body>
</html>
