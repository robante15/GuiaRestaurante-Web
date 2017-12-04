<%-- 
    Document   : main
    Created on : 11-16-2017, 08:40:14 PM
    Author     : roban
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Clase Programacion III</title>
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
                  <li class="nav-item active">
                    <a class="nav-link" href="main.jsp">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="cliente.jsp">Tabla de Restaurantes</a>
                  </li>
                </ul>
            </nav>

            <hr>
            <div class="panel panel-default">
                <div class="row">    

                        
                        <h1>Directorio de restaurantes para la ciudad de San Miguel</h1>
                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                  <li data-target="#myCarousel" data-slide-to="1"></li>
                                  <li data-target="#myCarousel" data-slide-to="2"></li>
                                </ol>
                                <div class="carousel-inner">
                                  <div class="carousel-item active">
                                    <img class="first-slide" src="resources/Hamburguesa.jpg" alt="First slide">
                                    <div class="container">
                                      <div class="carousel-caption d-none d-md-block text-left">
                                        <h1>Degusta los mejores platillos</h1>
                                        <p>Disfruta de los mejores restaurantes en San Miguel</p>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="carousel-item">
                                    <img class="second-slide" src="resources/Pizza.jpg" alt="Second slide">
                                    <div class="container">
                                      <div class="carousel-caption d-none d-md-block">
                                        <h1>Pasa una tarde entre amigos</h1>
                                        <p>Comiendo y compartiendo en nuestros restoranes</p>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="carousel-item">
                                    <img class="third-slide" src="resources/Pollofrito.jpg" alt="Third slide">
                                    <div class="container">
                                      <div class="carousel-caption d-none d-md-block text-right">
                                        <h1>Accesible para todos los bolsillos</h1>
                                        <p>Contamos con los mejores precios en toda la zona</p>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                  <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                  <span class="sr-only">Next</span>
                                </a>
                              </div>
                          

                    
                    <p>La guia con los mejores restaurantes para disfrutar de un rico alimento junto a la familia y amigos</p>
                </div>
            </div>
            

    </main>
            <footer class="footer">
                <div class="container">
                    <span class="text-muted">Realizado por Roberto Antonio Ortiz Acevedo - OA14002</span>
                </div>
            </footer>
     
</div>
        <script src="js/jquery-3.1.1.slim.min.js"></script>
        <script src="js/tether.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
