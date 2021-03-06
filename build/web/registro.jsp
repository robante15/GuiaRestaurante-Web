<%-- 
    Document   : registro
    Created on : 11-16-2017, 10:50:57 PM
    Author     : roban
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Registro de Restaurante</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.0.0-beta.4/dist/css/bootstrap-material-design.min.css" integrity="sha384-R80DC0KVBO4GSTw+wZ5x2zn2pu4POSErBkf8/fSFhPXHxvHJydT0CSgAP2Yo2r4I" crossorigin="anonymous">
        <link rel="shortcut icon" href="favicon.png">
    </head>

    <body>
        <main role="main" class="container">

        <nav class="navbar navbar-dark bg-dark">
            <img src="resources/ues.png"  alt="Banner" class="align-self-start mr-3">
            <span class="navbar-brand mb-0 h1">Guia de Restaurantes</span>
        </nav>

        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="registro.jsp">Registro</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="restaurantes.jsp">Tabla de Restaurantes</a>
                </li>
            </ul>
        </nav>
        <hr>
        <form action="Enviar_Servlet" method="POST" autocomplete="off">        
            <div class="container">
                <form class="form-horizontal" role="form" method="POST" action="/login">
                
                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <h2>Registro de Restaurantes</h2>
                            <hr>
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-3"></div>
                            <div class="col-md-6">
                                <div class="form-group has-danger">
                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                        <input type="text" class="form-control" name="nombre" placeholder="Nombre" required>
                                    </div>
                                </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <div class="form-group">
                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                        <input type="text" class="form-control" name="tipoComida" placeholder="Tipo de Comida" required>
                                    </div>
                            </div>
                        </div>
                    </div>
                
                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <div class="form-group">
                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                        <input type="text" class="form-control" name="direccion" placeholder="Direccion" required>
                                    </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <div class="form-group">
                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                        <input type="text" class="form-control" name="numTel" placeholder="Numero de telefono" required>
                                    </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <div class="form-group">
                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                        <input type="text" class="form-control" name="horarios" placeholder="Horarios" required>
                                    </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <div class="form-group">
                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                        <input type="text" class="form-control" name="propietario" placeholder="Propietario (Opcional)">
                                    </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <div class="form-group">
                                    <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                        <input type="text" class="form-control" name="coordenadas" placeholder="Coordenadas (Opcional)">
                                    </div>
                            </div>
                        </div>
                    </div>

                
                    <div class="row" style="padding-top: 1rem">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <input class="btn btn-primary btn-lg btn-block" type="submit" value="Registrar">
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
