<%-- 
    Document   : cliente
    Created on : 11-16-2017, 10:51:24 PM
    Author     : roban
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Factory.Factory"%>
<%@ page import="Procesos.*"%>
<%@ page import="Entidades.*"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Listado de Restaurantes</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.0.0-beta.4/dist/css/bootstrap-material-design.min.css" integrity="sha384-R80DC0KVBO4GSTw+wZ5x2zn2pu4POSErBkf8/fSFhPXHxvHJydT0CSgAP2Yo2r4I" crossorigin="anonymous">
        <link rel="shortcut icon" href="favicon.png">
    </head>
    
    <main role="main" class="container">
    <body>
        <div class="container">

        <nav class="navbar navbar-dark bg-dark">
            <img src="resources/ues.png"  alt="Banner" class="align-self-start mr-3">
            <span class="navbar-brand mb-0 h1">Guia de Restaurantes</span>
        </nav>

        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="main.jsp">Home</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="restaurantes.jsp">Tabla de Restaurantes</a>
                </li>
            </ul>
        </nav>
        <hr>
        <h1>Restaurantes registrados</h1>

        

        <table class="table table-striped table-bordered">
                <thead class="thead-dark">
                  <tr>
                    <th>#</th>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Tipo de Comida</th>
                    <th>Direccion</th>
                    <th>Telefono</th>
                    <th>Horarios</th>
                    <th>Propietario</th>
                    <th>Coordenadas</th>
                    <th>Clasificacion</th>
                  </tr>
                </thead>
                
                <tbody>
                <%
                    try {
                        Class.forName("org.postgresql.Driver");
                    } catch (ClassNotFoundException ex) {
                        ex.printStackTrace();
                    }
                    
                    BaseDatos base = new BaseDatos();
                    ArrayList<Restaurante> listaRestaurantes = base.obtenerRestaurantes();
                    int numRestaurantes = listaRestaurantes.size();
                    //modeloTabla.setNumRows(numeroVendedores);
        
                    for(int i =0;i<numRestaurantes;i++){
                    Restaurante restaurantes = listaRestaurantes.get(i);
                    
                    int id = restaurantes.getId();
                    String nombre = restaurantes.getNombre();
                    String tipoComida = restaurantes.getTipoComida();
                    String direccion = restaurantes.getDireccion();
                    int telefono = restaurantes.getTelefono(); 
                    String horarios = restaurantes.getHorarios();
                    String propietarios = restaurantes.getPropietarios();
                    String coordenadas = restaurantes.getCoordenadas();
                    Double clasificacion = restaurantes.getClasificacion();                   
            
                    out.println("<tr>");
                        out.println("<th scope=\"row\">"+i+"</th>");
                        out.println("<td>"+id+"</td>");
                        out.println("<td>"+nombre+"</td>");
                        out.println("<td>"+tipoComida+"</td>");
                        out.println("<td>"+direccion+"</td>");
                        out.println("<td>"+telefono+"</td>");
                        out.println("<td>"+horarios+"</td>");
                        out.println("<td>"+propietarios+"</td>");
                        out.println("<td>"+coordenadas+"</td>");
                        out.println("<td>"+clasificacion+"</td>");
                    out.println("</tr>");
                    }
                %>     
                </tbody>
              </table>
    </main>
                
        <footer class="footer">
            <div class="container">
                <span class="text-muted">Realizado por Roberto Antonio Ortiz Acevedo - OA14002</span>
            </div>
        </footer>
                
        <script src="js/jquery-3.1.1.slim.min.js"></script>
        <script src="js/tether.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </body>
</html>
