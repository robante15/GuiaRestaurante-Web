<%-- 
    Document   : restaurantes
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
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="shortcut icon" href="favicon.png">
    </head>
    
    <main role="main" class="container">
    <body>
        <div class="container">

        <nav class="navbar navbar-light bg-light">
            <img src="resources/ues.png"  alt="Banner" class="align-self-start mr-3">
            <span class="navbar-brand mb-0 h1">Programacion III - UES FMO</span>
        </nav>

        <nav class="navbar navbar-expand-sm bg-light navbar-light">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="main.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="registro.jsp">Registro</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="restaurantes.jsp">Tabla de Restaurantes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="modificar.jsp">Modificar Registro</a>
                </li>
            </ul>
        </nav>
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

            <div>
                <form id="Mod_Del" action="Eliminar_Servlet" method="POST">
                    <div class="container">
                        <form class="form-horizontal" role="form" method="POST" action="/login">        
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-6">
                                    <h2>Eliminar un registro</h2><hr>
                                </div>
                            </div>
                                    
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-6">
                                    <div class="form-group has-danger">
                                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                            <input type="text" class="form-control" name="ID" placeholder="ID" required>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                    <div class="row" style="padding-top: 1rem">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <input class="btn btn-warning btn-lg btn-block" onclick="submitForm('modificar.jsp')" value="Modificar">
                            <input class="btn btn-danger btn-lg btn-block" onclick="submitForm('Eliminar_Servlet')" value="Eliminar">
                        </div>
                    </div>
                </form>
            </div>
            
                <%
                String ID;
                ID = request.getParameter("ID");
                %>

            <script>
                function submitForm(action)
                    {
                        document.getElementById('Mod_Del').action = action;
                        document.getElementById('Mod_Del').submit();
                    }
            </script>

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
