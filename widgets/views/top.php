
<header class="">
  <!--Navbar-->
  <!-- <nav class="navbar  navbar-dark  fixed-top scrolling-navbar ">
    <div class="container">
      <a class="navbar-brand text-dark" href="<?=BASE_URL ?>">
        <strong>COMIL-3</strong>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-7" aria-controls="navbarSupportedContent-7" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent-7">
      <?php if (isset($menu) && sizeof($menu) > 0) : ?>
        <ul class="navbar-nav ml-auto">
        <?php foreach ($menu as $item): ?>
        <li class="nav-item <?=$_item_style?> ">
            <a class="nav-link text-dark" href="<?=$item["enlace"]?>"><?=$item["titulo"]?>
              
            </a>
          </li>
        <?php endforeach; ?>
          
          <li class="nav-item dropdown ">
            <a class="nav-link text-dark dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Otros</a>
            <div class="dropdown-menu bg-gris" aria-labelledby="navbarDropdown">
              <a class="dropdown-item " href="https://loja.ecuahosting.net:2096/?_task=login" target="_black">Correo Institucional</a>
              <a class="dropdown-item" href="http://ecuanotas.net/ecuanotas/index.php" target="_black">Sistema Académico</a>
            </div>
          </li>
        </ul>
        <?php endif; ?>
      </div>
    </div>
  </nav>
</header> -->
<!-- Main navigation -->
<div class="bg-amarillo">
<nav class="navbar navbar-expand-lg">
<div class=" container">
  <a class="navbar-brand text-dark" href="<?=BASE_URL ?>">COMIL-3</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
  <?php if (isset($menu) && sizeof($menu) > 0) : ?>
    <ul class="navbar-nav ml-auto">
    <?php foreach ($menu as $item): ?>
        <li class="nav-item <?=$_item_style?> ">
            <a class="nav-link text-dark" href="<?=$item["enlace"]?>"><?=$item["titulo"]?>
              
            </a>
          </li>
        <?php endforeach; ?>
     
      <li class="nav-item dropdown ">
            <a class="nav-link text-dark dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Otros</a>
            <div class="dropdown-menu bg-gris" aria-labelledby="navbarDropdown">
              <a class="dropdown-item " href="https://loja.ecuahosting.net:2096/?_task=login" target="_black">Correo Institucional</a>
              <a class="dropdown-item" href="http://ecuanotas.net/ecuanotas/index.php" target="_black">Sistema Académico</a>
            </div>
          </li>
    </ul>
    <?php endif; ?>
    </div>
  </div>
</nav>
</div>