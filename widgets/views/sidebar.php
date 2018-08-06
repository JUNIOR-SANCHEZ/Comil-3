        
    <div class="list-group">
        <h1 class="display">Menu</h1>
        <?php foreach ($menu as $m): ?>
        <?php if (isset($id)): ?>
        <?php $_style = 'active'; ?>
        <?php else: ?>
        <?php $_style = ''; ?>
        <?php endif; ?>
        <!-- <a  href="<?php echo $m['enlace']; ?>"><i class="<?php echo $m['imagen']; ?>"> </i> <?php echo $m['titulo']; ?></a> -->
        <a href="<?php echo $m['enlace'];?>" class="list-group-item list-group-item-action">
            <?php echo $m['titulo']; ?>
        </a>
        <?php endforeach; ?>
    </div>
</div>