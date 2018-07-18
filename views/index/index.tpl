<!-- Main navigation -->
<header class="">
  <!--Navbar-->
  <nav class="navbar navbar-expand-lg navbar-dark  fixed-top scrolling-navbar ">
    <div class="container">
      <a class="navbar-brand text-dark" href="{$_layoutParams.root}">
        <strong>COMIL-3</strong>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-7" aria-controls="navbarSupportedContent-7" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent-7">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item ">
            <a class="nav-link text-dark" href="#">Inicio
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link text-dark" href="{$_layoutParams.root}Noticias">Noticias</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-dark" href="#">Galeria</a>
          </li>
          <li class="nav-item dropdown ">
            <a class="nav-link text-dark dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Otros</a>
            <div class="dropdown-menu bg-gris" aria-labelledby="navbarDropdown">
              <a class="dropdown-item " href="https://loja.ecuahosting.net:2096/?_task=login" target="_black">Correo Institucional</a>
              <a class="dropdown-item" href="http://ecuanotas.net/ecuanotas/index.php" target="_black">Sistema Académico</a>
            </div>
          </li>
        </ul>
        
      </div>
    </div>
  </nav>

   <!-- Carrusel -->
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active ">
      <img class="d-block w-100" src="{$_layoutParams.root}public/img/images/images.jpg" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="{$_layoutParams.root}public/img/images/images.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="{$_layoutParams.root}public/img/images/images.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <button class= "btn indigo lighten-5 btn-circle btn-xl" aria-hidden="true"><i class= "fa fa-angle-left fa-2x text-dark"></i></button>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <button class= "btn indigo lighten-5 btn-circle btn-xl" aria-hidden="true"><i class= "fa fa-angle-right fa-2x text-dark"></i></button>
    <span class="sr-only">Next</span>
  </a>
</div>
<!-- Carrusel -->
</header>
<!-- Main navigation -->


<!-- Section: Autoridades -->
<div class="">
<section class="team-section text-center pb-5  container">
  <!-- Section heading -->
  <h2 class="h1-responsive font-weight-bold py-5">PRINCIPALES AUTORIDADES DE LA INSTITUCIÓN</h2>
  <!-- Section description -->

  <!-- Grid row -->
  <div class="row">

    <!-- Grid column -->
    <div class="col-lg-3 col-md-6 mb-lg-0 mb-5">
      <div class="avatar mx-auto">
        <img src="{$_layoutParams.root}public/img/autoridades/rector.gif" width="150" class="rounded-circle z-depth-1 img-circle-d" alt="Sample avatar">
      </div>
      <h5 class="font-weight-bold mt-4 mb-2">MARCIAL AREVALO L.CRNL. DE C.S.M.</h5>
      <p class="text-uppercase blue-text"><strong>Rector</strong></p>
      
    </div>
    <!-- Grid column -->

    <!-- Grid column -->
    <div class="col-lg-3 col-md-6 mb-lg-0 mb-5">
      <div class="avatar mx-auto">
        <img src="{$_layoutParams.root}public/img/autoridades/vicerrector.gif"  class="rounded-circle z-depth-1 img-circle-d" alt="Sample avatar">
      </div>
      <h5 class="font-weight-bold mt-4 mb-2">VICTOR HUGO RAMOS P. MAYO DE CC.EE</h5>
      <p class="text-uppercase blue-text"><strong>VICERRECTOR</strong></p>
      
    </div>
    <!-- Grid column -->

    <!-- Grid column -->
    <div class="col-lg-3 col-md-6 mb-md-0 mb-5">
      <div class="avatar mx-auto">
        <img src="{$_layoutParams.root}public/img/autoridades/jefe-administrativo.gif" width="150" class="rounded-circle z-depth-1" alt="Sample avatar">
      </div>
      <h5 class="font-weight-bold mt-4 mb-2">JAVIER JARAMILLO P. CAPT. DE CB.</h5>
      <p class="text-uppercase blue-text"><strong>JEFE ADMINISTRATIVO</strong></p>
    </div>
    <!-- Grid column -->

    <!-- Grid column -->
    <div class="col-lg-3 col-md-6">
      <div class="avatar mx-auto">
        <img src="https://mdbootstrap.com/img/Photos/Avatars/img%20(32).jpg" width="150" class="rounded-circle z-depth-1" alt="Sample avatar">
      </div>
      <h5 class="font-weight-bold mt-4 mb-2">LUIS VILLAROEL A. CAPT. DE CB.</h5>
      <p class="text-uppercase blue-text"><strong>INSPECTOR GENERAL</strong></p>
    </div>
    <!-- Grid column -->
  </div>
  <!-- Grid row -->
</section>
</div>
<!-- Section: Autoridades -->



<!-- Section: Comunicados -->
<div class="py-3  amber  lighten-5">
<div class="card  text-center hoverable container  amber  lighten-5">
    <div class="card-body">
        <!--Grid row-->
        <div class="row">

            <!--Grid column-->
            <div class="col-md-4 offset-md-1 mx-3 my-3">
                <!--Featured image-->
                <div class="view overlay">
                    <img src="{$_layoutParams.root}public/img/diseño/fondo.gif" class="img-fluid" alt="Sample image for first version of blog listing">
                    <a>
                        <div class="mask rgba-white-slight"></div>
                    </a>
                </div>
            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-md-7 text-left ml-3 mt-3">
                <!--Excerpt-->
                <a href="" class="green-text">
                    <h6 class="font-bold pb-1"><i class="fa fa-desktop"></i> Comunicados</h6>
                </a>
                <h4 class="mb-4"><strong>COMUNICADO IMPORTANTE</strong></h4>
                <p>Se comunica a los Señores Padres de Familia y/o Representante Legal, que se encuentra habilitado el sistema pago de pensiones en el Banco General Rumiñahui, desde el 5 hasta el 26 de Julio del presente año, a fin de brindar las facilidades para cancelar los valores adeudados a la institución.</p>
                <p><a><strong>Rector</strong></a>, 06-jul-18</p>
            </div>
            <!--Grid column-->
        </div>
        <!--Grid row-->
    </div>
</div>
</div>
<!-- Section: Comunicados -->



<!-- Section: Noticias -->
<section class="text-center my-5 container">

  <!-- Section heading -->
  <h2 class="h1-responsive font-weight-bold my-5">Noticias Recientes</h2>
  <!-- Section description -->

  <!-- Grid row -->
  <div class="row">

    <!-- Grid column -->
    <div class="col-lg-4 col-md-6 mb-0">

      <!-- Featured image -->
      <div class="view overlay rounded z-depth-2 mb-4">
        <img class="img-fluid img-noticias-t" src="{$_layoutParams.root}public/img/inicio/foto2.gif" alt="Sample image">
        <a>
          <div class="mask rgba-white-slight"></div>
        </a>
      </div>

      <!-- Category -->
      <a href="#!" class="blue-text"><h6 class="font-weight-bold mb-3"><i class="fa fa-fire pr-2"></i>Actividades</h6></a>
      <!-- Post title -->
      <h4 class="font-weight-bold mb-3"><strong>CADETE DE ACERO</strong></h4>
      <!-- Post data -->
      <p>by <a class="font-weight-bold">Billy Forester</a>, 11/07/2018</p>
      <!-- Excerpt -->
      <p class="dark-grey-text">Con motivo de celebrar las festividades del colegio, en días pasados se realizo CADETE DE ACERO,
       con los estudiantes del Nivel Básico Superior y Bachillerato, donde participaron estudiantes, tutores, inspectores y 
       padres de familia. Demostrando el trabajo en grupo...</p>
      <!-- Read more button -->
      <a class="btn btn-info btn-rounded btn-md">Read more</a>

    </div>
    <!-- Grid column -->

    <!-- Grid column -->
    <div class="col-lg-4 col-md-12 mb-lg-0 mb-4">

      <!-- Featured image -->
      <div class="view overlay rounded z-depth-2 mb-4">
        <img class="img-fluid img-noticias-t" src="{$_layoutParams.root}public/img/inicio/foto1.gif" alt="Sample image">
        <a>
          <div class="mask rgba-white-slight"></div>
        </a>
      </div>

      <!-- Category -->
      <a href="#!" class="pink-text"><h6 class="font-weight-bold mb-3"><i class="fa fa-map pr-2"></i> Actividades</h6></a>
      <!-- Post title -->
      <h4 class="font-weight-bold mb-3"><strong>SESIÓN SOLEMNE, MISA Y COLOCACIÓN DE OFRENDA FLORAL</strong></h4>
      <!-- Post data -->
      <p>by <a class="font-weight-bold">Billy Forester</a>, 15/07/2018</p>
      <!-- Excerpt -->
      <p class="dark-grey-text">La Unidad Educativa de Fuerzas Armadas Colegio Militar Nº3 “Héroes del 41” por motivo de cumplir el Vigésimo Sexto Aniversario de Creación al servicio de la educación machaleña y orense.</p>
      <!-- Read more button -->
      <a class="btn btn-pink btn-rounded btn-md">Read more</a>

    </div>
    <!-- Grid column -->

    <!-- Grid column -->
    <div class="col-lg-4 col-md-6 mb-md-0 mb-4">

      <!-- Featured image -->
      <div class="view overlay rounded z-depth-2 mb-4">
        <img class="img-fluid img-noticias-t" src="{$_layoutParams.root}public/img/diseño/presidenteconsej.gif" alt="Sample image">
        <a>
          <div class="mask rgba-white-slight"></div>
        </a>
      </div>

      <!-- Category -->
      <a href="#!" class="deep-orange-text"><h6 class="font-weight-bold mb-3"><i class="fa fa-graduation-cap pr-2"></i>Education</h6></a>
      <!-- Post title -->
      <h4 class="font-weight-bold mb-3"><strong>POSESIÓN DEL CONSEJO ESTUDIANTIL</strong></h4>
      <!-- Post data -->
      <p>by <a class="font-weight-bold">Billy Forester</a>, 13/07/2018</p>
      <!-- Excerpt -->
      <p class="dark-grey-text">Con un programa especial se cumplió se proclamó y posesionó al nuevo Consejo Estudiantil del Comil Nº3 “Héroes del 41”, luego de los escrutinios realizados  donde resulto triunfadora la lista # 3 IEC..</p>
      <!-- Read more button -->
      <a class="btn btn-deep-orange btn-rounded btn-md">Read more</a>

    </div>
    <!-- Grid column -->

    

  </div>
  <!-- Grid row -->

</section>
<!-- Section: Noticias -->
