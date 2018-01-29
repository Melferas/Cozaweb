/* 
 Created on : 15-ene-2018, 18:16:26
 Author     : Julio Sorroche García
 */
$(document).ready(function () {

    $.post('siteController.jsp', {
        temp: ""
    }, function (responseText) {
        $('#currentTemp').text(responseText);
    });

    $.post('siteController.jsp', {
        light: ""
    }, function (responseText) {
        $('#currentLight').text(responseText);
    });

    $.post('siteController.jsp', {
        pres: ""
    }, function (responseText) {
        $('#currentPres').text(responseText);
    });


    $('#controlTempplus').click(function ()
    {
        $.post('siteController.jsp', {
            temp: "subir"
        }, function (responseText) {
            $('#currentTemp').text(responseText);
        });

    });

    $('#controlTempless').click(function ()
    {
        $.post('siteController.jsp', {
            temp: "bajar"
        }, function (responseText) {
            $('#currentTemp').text(responseText);
        });

    });

    $('#controlLuzplus').click(function ()
    {
        $.post('siteController.jsp', {
            light: "subir"
        }, function (responseText) {
            $('#currentLight').text(responseText);
        });

    });

    $('#controlLuzless').click(function ()
    {
        $.post('siteController.jsp', {
            light: "bajar"
        }, function (responseText) {
            $('#currentLight').text(responseText);
        });

    });

    $('#controlPresChange').click(function ()
    {
        $.post('siteController.jsp', {
            pres: "cambiar"
        }, function (responseText) {
            $('#currentPres').text(responseText);
        });

    });


});
