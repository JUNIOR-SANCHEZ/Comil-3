<!-- navBar -->
<div class="container-fluid bg-dark text-center">
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark container">
    <a class="navbar-brand" href="<?=BASE_URL ?>">
      <img src="<?=BASE_URL?>public/img/images/escudo.png" width="30" height="30" class="d-inline-block align-top"
        alt=""> 
        <strong>COMIL-3</strong>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
      aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <?php if (isset($menu) && sizeof($menu) > 0) : ?>
      <div class="navbar-nav ml-auto">
        <?php foreach ($menu as $item): ?>
        <a class="nav-link" href="<?=$item["enlace"]?>">
          <?=$item["titulo"]?>
        </a>
        <?php endforeach; ?>

      </div>
      <?php endif; ?>
    </div>
  </nav>
</div>
<!-- navBar -->