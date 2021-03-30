<%-- 
    Document   : editar
    Created on : 30-03-2021, 03:02:24 PM
    Author     : RonaldMollericona
--%>

<%@page import="com.emergentes.modelo.Nota"%>
<%
   Nota reg = (Nota)request.getAttribute("miobjper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Agendar-Personal</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    </head>
    <body class="row justify-content-center">
        <h1 align="center">Registro de Agenda Personal</h1>
        <div class="col-md-4">
            <form action="MainServlet" method="post" class="form-control p-3">
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">ID:</label>
                <input type="text" name="id" class="form-control" readonly="readonly" value="<%= reg.getId()%>">
            </div>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Fecha y Hora:</label>
                <input type="datetime-local" class="form-control" name="nombres" value="<%= reg.getHora()%>"></div>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Actividad:</label>
                <input type="text" class="form-control"  name="apellidos" value="<%= reg.getActividad()%>">
            </div>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Completado:</label>
                <input type="number" class="form-control" name="edad" value="<%= reg.getCompletado()%>">
            </div>
            <input type="submit" class="btn btn-primary" value="Enviar">
        </form>
        </div>
    </body>
</html>
