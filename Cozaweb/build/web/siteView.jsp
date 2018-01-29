<%-- 
    Document   : tempController
    Created on : 15-ene-2018, 18:38:35
    Author     : Melferas
--%>

<%@page import="java.io.File"%>
<%@page import="com.amazonaws.services.iot.client.sample.sampleUtil.SampleUtil.KeyStorePasswordPair"%>
<%@page import="com.amazonaws.services.iot.client.sample.sampleUtil.SampleUtil"%>
<%@page import="com.amazonaws.services.iot.client.*"%>
<%@page import="connector.AmazonRaspberry" contentType="text/html" pageEncoding="UTF-8"%>
<%--@include file="/resources/cert/f4dafc24ae-certificate.pem.crt"--%>
<%-- @include file="/resources/cert/f4dafc24ae-private.pem.key" --%>

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
        String clientEndpoint = "a3hsjmb0q4i06f.iot.eu-west-1.amazonaws.com";       // replace <prefix> and <region> with your own
        String clientId = "webapplicosa";                              // replace with your own client ID. Use unique client IDs for concurrent connections.
        String certificateFile = "/resources/cert/f4dafc24ae-certificate.pem.crt";                       // X.509 based certificate file
        String privateKeyFile = "/resources/cert/f4dafc24ae-private.pem.key";                        // PKCS#1 or PKCS#8 PEM encoded private key file


        
// SampleUtil.java and its dependency PrivateKeyReader.java can be copied from the sample source code.
// Alternatively, you could load key store directly from a file - see the example included in this README.
/*
   KeyStorePasswordPair pair = SampleUtil.getKeyStorePasswordPair(certificateFile, privateKeyFile);
   AWSIotMqttClient client = new AWSIotMqttClient(clientEndpoint, clientId, pair.keyStore, pair.keyPassword);

// optional parameters can be set before connect()
        client.connect();
        
        client.onConnectionSuccess();
*/

    %>
    <body>
        <!-- Control de temperatura -->
        <div class="supercontainer">
            <div class="titulecontainer">
                <h1 class="temptext">Control de temperatura</h1>
            </div>
            <div>
                <p id="currentTemp" class="currentText"></p>
            </div>
            <div class="buttoncontainer">
                <button id="controlTempplus" class="controlButton">
                    +
                </button>
                <button id="controlTempless" class="controlButton">
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
                <p id="currentLight" class="currentText"></p>%
            </div>
            <div class="buttoncontainer">
                <button id="controlLuzplus" class="controlButton">
                    +
                </button>
                <button id="controlLuzless" class="controlButton">
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
                <p id="currentPres" class="currentText"></p>
            </div>
            <div class="buttoncontainer">
                <button id="controlPresChange" class="controlButton">
                    Cambiar
                </button>
            </div>
        </div>
    </body>
</html>
