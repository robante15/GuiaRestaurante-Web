<%-- 
    Document   : modificar
    Created on : 12-03-2017, 05:25:07 PM
    Author     : roban
--%>

<%@ page import="Factory.Factory"%>
<%@ page import="Procesos.*"%>
<%@ page import="Entidades.*"%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Modificar Registro</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="shortcut icon" href="favicon.png">
</head>
<body>

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
                            <li class="nav-item">
                                <a class="nav-link" href="restaurantes.jsp">Tabla de Estudiantes</a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="modificar.jsp">Modificar Registro</a>
                            </li>
                        </ul>
                    </nav>

                        <%!
                        String S_ID;
                        %>
                        
                        <%
                            S_ID = request.getParameter("ID");
                            int ID = Integer.parseInt(S_ID);
                            
                            try {
                                Class.forName("org.postgresql.Driver");
                            } catch (ClassNotFoundException ex) {
                                ex.printStackTrace();
                            }
                    
                            BaseDatos base = new BaseDatos();
                            Restaurante restaurantes = base.restauranteByID(ID);
                    
                    int id = restaurantes.getId();
                    String nombre = restaurantes.getNombre();
                    String tipoComida = restaurantes.getTipoComida();
                    String direccion = restaurantes.getDireccion();
                    int telefono = restaurantes.getTelefono(); 
                    String horarios = restaurantes.getHorarios();
                    String propietarios = restaurantes.getPropietarios();
                    String coordenadas = restaurantes.getCoordenadas();
                    Double clasificacion = restaurantes.getClasificacion();                   
            
                    out.println("<h2>"+id+"</h2>");
                    out.println("<h2>"+nombre+"</h2>");
                    out.println("<h2>"+tipoComida+"</h2>");
                    out.println("<h2>"+direccion+"</h2>");
                    out.println("<h2>"+telefono+"</h2>");
                    out.println("<h2>"+horarios+"</h2>");
                    out.println("<h2>"+propietarios+"</h2>");
                    out.println("<h2>"+coordenadas+"</h2>");
                    out.println("<h2>"+clasificacion+"</h2>");
                        %>
                        
                        <h1> <%=S_ID %></h1>
                        
                    <form action="Modificar_Servlet" method="POST">        
                            <div class="container">
                                <form class="form-horizontal" role="form" method="POST" action="/login">
                                
                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-6">
                                            <h2>Modificar registro de restaurante</h2>
                                            <hr>
                                        </div>
                                    </div>
                                    
                                    <div class="row">
                                            <div class="col-md-3"></div>
                                                <div class="col-md-6">
                                                    <div class="form-group has-danger">
                                                        <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                            <input id="ID" type="text" class="form-control" name="ID" placeholder="ID" disabled required>
                                                        </div>
                                                    </div>
                                            </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-3"></div>
                                            <div class="col-md-6">
                                                <div class="form-group has-danger">
                                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                        <input id="nombre" type="text" class="form-control" name="nombre" placeholder="Nombre" required>
                                                    </div>
                                                </div>
                                        </div>
                                    </div>
                
                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                        <input id="tipoComida" type="text" class="form-control" name="tipoComida" placeholder="Tipo de Comida" required>
                                                    </div>
                                            </div>
                                        </div>
                                    </div>
                                
                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                        <input id="direccion" type="text" class="form-control" name="direccion" placeholder="Direccion" required>
                                                    </div>
                                            </div>
                                        </div>
                                    </div>
                
                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                        <input id="numTel" type="text" class="form-control" name="numTel" placeholder="Numero de telefono" required>
                                                    </div>
                                            </div>
                                        </div>
                                    </div>
                
                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                        <input id="horarios" type="text" class="form-control" name="horarios" placeholder="Horarios" required>
                                                    </div>
                                            </div>
                                        </div>
                                    </div>
                
                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                        <input id="propietario" type="text" class="form-control" name="propietario" placeholder="Propietario (Opcional)">
                                                    </div>
                                            </div>
                                        </div>
                                    </div>
                
                                    <div class="row">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                                        <input id="coordenadas" type="text" class="form-control" name="coordenadas" placeholder="Coordenadas (Opcional)">
                                                    </div>
                                            </div>
                                        </div>
                                    </div>
                
                                
                                    <div class="row" style="padding-top: 1rem">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-6">
                                            <input class="btn btn-primary btn-lg btn-block" type="submit" value="Modificar">
                                        </div>
                                    </div>
                                    
                                </form>
                            </div>
                        </form>

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
