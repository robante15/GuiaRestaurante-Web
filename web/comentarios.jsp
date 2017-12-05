<%-- 
    Document   : comentarios
    Created on : 12-04-2017, 08:44:49 PM
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
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.0.0-beta.4/dist/css/bootstrap-material-design.min.css" integrity="sha384-R80DC0KVBO4GSTw+wZ5x2zn2pu4POSErBkf8/fSFhPXHxvHJydT0CSgAP2Yo2r4I" crossorigin="anonymous">
    <link rel="shortcut icon" href="favicon.png">
</head>
<body>
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
                            <a class="nav-link" href="cliente.jsp">Tabla de Restaurantes</a>
                        </li>
                    </ul>
                </nav>

            <%!
                String S_ID;
            %>
                        
            <% 
                S_ID = request.getParameter("ID");
                int I_ID = Integer.parseInt(S_ID);
                //out.println(I_ID);
            %>
       
            <div class="row">
                <div class="col-sm-4">
                    <div class="container">                                           
                        <h2>Informacion del restaurante</h2><hr>

                        <div class="form-group">
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <input id="IDForm" type="text" class="form-control" name="IDForm" value="" readonly required>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <input id="nombre" type="text" class="form-control" name="nombre" placeholder="Nombre" value="" readonly required>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <input id="tipoComida" type="text" class="form-control" name="tipoComida" placeholder="Tipo de Comida" value="" readonly required>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <input id="direccion" type="text" class="form-control" name="direccion" placeholder="Direccion" value="" readonly required>
                            </div>
                        </div>
                                       
                        <div class="form-group">
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <input id="numTel" type="text" class="form-control" name="numTel" placeholder="Numero de telefono" value="" readonly required>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <input id="horarios" type="text" class="form-control" name="horarios" placeholder="Horarios" value="" readonly required>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <input id="propietario" type="text" class="form-control" name="propietario" placeholder="Propietario" readonly value="">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <input id="coordenadas" type="text" class="form-control" name="coordenadas" placeholder="Coordenadas" readonly value="">
                            </div>
                        </div>         
                        
                    </div>
                </div>

                <div class="col-sm-8">
                    <div class="container">
                        <h2>Comentarios del restaurante</h2><hr>

                        <div class="form-group">
                                <label for="comment">Comentarios por otros clientes:</label>
                                <textarea class="form-control" rows="21" id="UltimosComentarios" readonly></textarea>
                        </div> 

                        <div class="form-group">
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <input id="cliente" type="text" class="form-control" name="cliente" placeholder="Tu Nombre" value="">
                            </div>
                        </div>    

                        <label for="sel1">Calificación:</label>
                        <select class="form-control" id="calificacion">
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>

                        <div class="form-group">
                            <label for="comment">Dejar un comentario:</label>
                            <textarea class="form-control" rows="2" id="comentario"></textarea>
                        </div>
                        

                        <input class="btn btn-success btn-lg btn-block" onclick="submitForm('modificar.jsp')" value="Enviar comentario">
                      
                    </div>
                </div>
            
            </div>        

            <%
                try {
                    Class.forName("org.postgresql.Driver");
                } catch (ClassNotFoundException ex) {
                    ex.printStackTrace();
                }
                    
                BaseDatos base = new BaseDatos();
                Restaurante restaurantes = base.restauranteByID(I_ID);
                    
                            
                            
                int id = restaurantes.getId();
                String nombre = restaurantes.getNombre();
                String tipoComida = restaurantes.getTipoComida();
                String direccion = restaurantes.getDireccion();
                int telefono = restaurantes.getTelefono(); 
                String horarios = restaurantes.getHorarios();
                String propietarios = restaurantes.getPropietarios();
                String coordenadas = restaurantes.getCoordenadas();
                Double clasificacion = restaurantes.getClasificacion();
                
                out.println("<script>");
                out.println("document.getElementById('IDForm').value ='"+id+"'");
                out.println("document.getElementById('nombre').value = '"+nombre+"'");
                out.println("document.getElementById('tipoComida').value = '"+tipoComida+"'");
                out.println("document.getElementById('direccion').value = '"+direccion+"'");
                out.println("document.getElementById('numTel').value = '"+telefono+"'");
                out.println("document.getElementById('horarios').value = '"+horarios+"'");
                out.println("document.getElementById('propietario').value = '"+propietarios+"'");
                out.println("document.getElementById('coordenadas').value = '"+coordenadas+"'"); 
                out.println("</script>");                  
            %>
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