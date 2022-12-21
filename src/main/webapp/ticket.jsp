<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rodrigo Pereyra</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    
    <link rel="stylesheet" href="CSS/estilosTickets.css">
</head>
<body>

    <header class="header-principal header-fijo">
        <div class="nav">
            <nav class="nav-logo">
                <a href="index.html"><img src="img/codoacodo.png" alt="" class="img-logo"></a>
                <h1 class="titulo-logo"><a href="">Conf Bs As</a></h1>
            </nav>
            <ul class="listas-navegacion">
                <li><a href="index.html">La Conferencia</a></li>
                <li><a href="index.html">Los Oradores</a></li>
                <li><a href="index.html">El Lugar y La Fecha</a></li>
                <li><a href="index.html">Conviertete en Orador</a></li>
                <li><a href="tickets.html">Comprar Tickets</a></li>
            </ul>
        </div>
    </header>
     <nav class="navbar navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
          <a href="" class="conf-bs"><img src="img/codoacodo.png" alt="" class="img-logo" width="90px">Conf Bs As</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
            <div class="offcanvas-header">
              <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Conf Bs As</h5>
              <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#">La Conferencia</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Los Oradores</a>
                </li>
                <li class="nav-item"><a href="" class="nav-link">El Lugar y La Fecha</a></li>

                <li class="nav-item"><a href="" class="nav-link">Conviertete en Orador</a></li>

                <li class="nav-item"><a href="" class="nav-link">Comprar Tickets</a></li>
              </ul>
              <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Buscar" aria-label="Search">
                <button class="btn btn-success" type="submit">Buscar</button>
              </form>
            </div>
          </div>
        </div>
      </nav>



      
    <main class="main-container">
        <div class="row row-cols-1 row-cols-md-3 g-4 contenedor-tickets">
            <div class="col">
              <div class="card card-1">
                <div class="card-body">
                  <h5 class="card-title">Estudiante</h5>
                  <p><b>80%</b></p>
                  <p class="card-text">Tiene un descuento</p>
                  <p><small>*presentar documentacion</small></p>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card card-2">
                <div class="card-body">
                  <h5 class="card-title">Trainee</h5>
                  <p><b>50%</b></p>
                  <p class="card-text">Tiene un descuento</p>
                  <p><small>*presentar documentacion</small></p>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card card-3">
                <div class="card-body">
                  <h5 class="card-title">Junior</h5>
                  <p><b>15%</b></p>
                  <p class="card-text">Tiene un descuento</p>
                  <p><small>*presentar documentacion</small></p>
                </div>
              </div>
            </div>
          </div>


          <div class="descripcion-venta">
            <h7>VENTA</h7>
            <h2>VALOR DE TICKET $200</h2>
          </div>
    </main>

    <form action="update.jsp" class="container-fluid" style="width: 73%">
      <div class="row gx-2">
          <div class="col-md mb-3">
              <input type="text" name="nombre" value="<%= request.getParameter("nombre") %>" class="form-control" placeholder="Nombre" aria-label="Nombre" id="nombre" required>
          </div>
          <div class="col-md mb-3">
              <input type="text" name="apellido" value="<%= request.getParameter("apellido") %>" class="form-control" placeholder="Apellido" aria-label="Apellido" id="apellido" required>
          </div>
      </div>
      <div class="row">
          <div class="col mb-3">
              <input type="email" name="mail" value="<%= request.getParameter("mail") %>" class="form-control" placeholder="Email" aria-label="Email" id="mail" required>
          </div>
      </div>
      <div class="row gx-2">
          <div class="col-md mb-3">
              <label for="cantidadTickets" class="form-label">Cantidad</label>
              <input type="number" name="cantidad" value="<%= request.getParameter("cantidad") %>" class="form-control" placeholder="Cantidad" aria-label="Cantidad" id="cantidadTickets" min="1" required>
          </div>
          <div class="col-md mb-3">
              <label for="categoriaSelect" class="form-label">Categor�a</label>
              <input name="categoria" value="<%= request.getParameter("categoria") %>" class="form-select" aria-label="Categor�a" id="categoriaSelect">
             
          </div>
      </div>
      <div class="alert alert-primary mt-2 mb-4" role="alert">
          Total a pagar: $ <span id="totalPago" class="align-middle"></span>
      </div>
      <div class="row gx-2">
          <div class="col-md mb-3">
              <button type="button" class="w-100 btn btn-lg btn-form" onclick="location.href='delete.jsp'" id="btnDelete">Borrar</button>
          </div>
          <div class="col-md mb-3">
              <button type="sumbit" class="w-100 btn btn-lg btn-form" id="btnUpdate">Modificar</button>
          </div>
          <div class="col-md mb-3">
              <button type="sumbit" onclick="location.href='index.html'" class="w-100 btn btn-lg btn-form" id="btnResumen">Confirmar</button>
          </div>
          
      </div>
  </form>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>


      <footer class="footer-principal footer-fijo">
        <ul class="listas-footer">
            <li><a href="">Preguntas Frecuentes</a></li>
            <li><a href="">Contactanos</a></li>
            <li><a href="">Prensa</a></li>
            <li><a href="">Conferencia</a></li>
            <li><a href="">Terminos y Condiciones</a></li>
            <li><a href="">Privacidad</a></li>
            <li><a href="">Estudiantes</a></li>
        </ul>
      </footer>





      <script src="JS/tickets.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
    </body>