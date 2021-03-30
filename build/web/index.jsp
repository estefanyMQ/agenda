<%-- 
    Document   : index
    Created on : 30-03-2021, 01:10:15 PM
    Author     : RonaldMollericona
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Nota"%>

<%
    if(session.getAttribute("listaper")==null){
        ArrayList<Nota> la = new ArrayList<Nota>();
        session.setAttribute("listaper", la);
    }
    ArrayList<Nota> lista = (ArrayList<Nota>) session.getAttribute("listaper");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agenda Personal</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    </head>
    <body class="row justify-content-center">
        <h1 align="center">Listado de Agenda Personal</h1>
        <div align="center" style="margin-bottom: 10px;">
            <a href="MainServlet?op=nuevo">
                <button type="button" class="btn btn-primary">
                    Nuevo Registro
                </button>
            </a>
        </div>
        <div class="col-md-6">
        <table border="1" class="table">
            <tr>
                <th>Id</th>
                <th>Horario</th>
                <th>Actividad</th>
                <th>Completado</th>
                <th class="text-center">Acciones</th>
            </tr>
            <%
                if(lista != null){
                    for(Nota item : lista){
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getHora()%></td>
                <td><%= item.getActividad()%></td>
                <td><%= item.getCompletado()%></td>
                <td class="text-center">
                    <a href="MainServlet?op=editar&id=<%= item.getId()%>" 
                       class="btn btn-info">Editar</a>
                
                    <a href="MainServlet?op=eliminar&id=<%= item.getId()%>" 
                       onclick="return (confirm('Esta seguro de eliminar??'))" 
                       class="btn btn-danger">Eliminar</a>
                </td>
            </tr>
            <%
                    }
                }
            %>
        </table>
        </div>
    </body>
</html>
