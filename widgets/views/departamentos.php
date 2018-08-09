<!-- Sidebar -->

<ul class="sidebar navbar-nav">
    <?php if (isset($menu) && !empty($menu) && sizeof($menu) > 0) : ?>
    <?php foreach ($menu as $index): ?>

    <?php  if (isset($index['sub']) && sizeof($index['sub']) > 0) : ?>
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">
            <i class="fas fa-fw <?=$index['icon']?> "></i>
            <span><?=$index['titulo']?></span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">Opciones:</h6>
            <?php foreach ($index['sub'] as $subindex): ?>
            <a class="dropdown-item" href="login.html"><?=$subindex['titulo']?></a>
            <?php endforeach; ?>
            
        </div>
    </li>
    <?php else: ?>
    <li class="nav-item">
        <a class=" nav-link" href="index.html">
            <i class="fas fa-fw <?=$index['icon']?> "></i>
            <span>
                <?=$index['titulo']?>
            </span>
        </a>
    </li>
    <?php endif; ?>
    <?php endforeach; ?>
    <?php endif; ?>
</ul>