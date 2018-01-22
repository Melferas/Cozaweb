<%-- 
    Document   : tempController
    Created on : 15-ene-2018, 18:38:35
    Author     : Melferas
--%>

<%@page import="connector.AmazonRaspberry" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Control Cozita</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="resources/css/controlstyle.css" type="text/css">
  <script type="text/javascript" src="resources/scripts/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="resources/scripts/controldynamic.js" ></script>
    </head>
    <%
        AmazonRaspberry arp = new AmazonRaspberry();
     %>
    <body>
        <!-- Control de temperatura -->
        <div class="supercontainer">
            <div class="titulecontainer">
                <h1 class="temptext"> Control de temperatura </h1>
            </div>
            <div>
                <p class="currentText"><%= arp.getTemp() %></p>
            </div>
            <div class="buttoncontainer">
                <button class="controlTempplus">
                   +
                </button>
                 <button class="controlTempless">
                    -
                </button>
            </div>
        </div>
        <!-- Espacios -->
        <br/>
        <br/>
        <br/>
        <br/>        
        <!-- Control de luz -->
        <div class="supercontainer">
            <div class="titulecontainer">
                <h1 class="lighttext"> Control de luz </h1>   
            </div>
            <div>
                <p class="currentText"><%= arp.getLightLvl()*100%>%</p>
            </div>
            <div class="buttoncontainer">
                <button class="controlLuzplus">
                   +
                </button>
                 <button class="controlLuzless">
                    -
                </button>
            </div>
        </div>
        <!-- Espacios -->
        <br/>
        <br/>
        <br/>
        <br/>        
        <div class="supercontainer">
            <div class="titulecontainer">
                <h1 class="prestext"> Presencia </h1>   
            </div>
            <div>
                <p class="currentText"><%= arp.getState() %></p>
            </div>
            <div class="buttoncontainer">
                <button class="controlPresChange" action="<% arp.switchMode(); %>">
                    Cambiar
                </button>
            </div>
        </div>
    </body>
</html>
