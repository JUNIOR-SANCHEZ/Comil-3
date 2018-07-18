<?php /* Smarty version Smarty-3.1.8, created on 2018-07-12 20:31:23
         compiled from "C:\xampp\htdocs\Comil-3\views\layout\default\template.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6620270685b44e058077307-20935005%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9b31ecab942028932b4d86d36a8a4fb294ed8e4e' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Comil-3\\views\\layout\\default\\template.tpl',
      1 => 1531420280,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6620270685b44e058077307-20935005',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_5b44e058220988_59198136',
  'variables' => 
  array (
    '_layoutParams' => 0,
    'widgets' => 0,
    'tp' => 0,
    '_error' => 0,
    '_mensaje' => 0,
    '_contenido' => 0,
    'js' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b44e058220988_59198136')) {function content_5b44e058220988_59198136($_smarty_tpl) {?><!DOCTYPE html>
<html lang="en">
    <head>
         <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Comil-3</title>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Bootstrap core CSS -->
        <link href="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
public/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
public/css/mdb.min.css" rel="stylesheet">

        <link href="https://fonts.googleapis.com/css?family=Song+Myung" rel="stylesheet">
        <!-- Your custom styles (optional) -->
        <link href="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
public/css/style.css" rel="stylesheet">
            
        
    </head>

    <body class="grey lighten-5">
        
               <?php if (isset($_smarty_tpl->tpl_vars['widgets']->value['top'])){?>
                    <?php  $_smarty_tpl->tpl_vars['tp'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['tp']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['widgets']->value['top']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['tp']->key => $_smarty_tpl->tpl_vars['tp']->value){
$_smarty_tpl->tpl_vars['tp']->_loop = true;
?>
                        <?php echo $_smarty_tpl->tpl_vars['tp']->value;?>

                    <?php } ?>
               <?php }?>
           

        <?php if (isset($_smarty_tpl->tpl_vars['_error']->value)){?><div class="alert alert-success text-center"> <?php echo $_smarty_tpl->tpl_vars['_error']->value;?>
 </div> <?php }?>
        <?php if (isset($_smarty_tpl->tpl_vars['_mensaje']->value)){?><div class="alert alert-success text-center"> <?php echo $_smarty_tpl->tpl_vars['_mensaje']->value;?>
 </div> <?php }?>
        
        <?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['_contenido']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

        


        
<script type="text/javascript">
        var _root_ = '<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
';
</script>

<!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
public/js/jquery-3.3.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
public/js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
public/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
public/js/mdb.min.js"></script>
    <script>
        new WOW().init();
        $('.carousel').carousel({
        interval: 2000
        })
    </script>

<?php if (isset($_smarty_tpl->tpl_vars['_layoutParams']->value['jsPlugin'])&&count($_smarty_tpl->tpl_vars['_layoutParams']->value['jsPlugin'])){?>
    <?php  $_smarty_tpl->tpl_vars['js'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['js']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['_layoutParams']->value['jsPlugin']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['js']->key => $_smarty_tpl->tpl_vars['js']->value){
$_smarty_tpl->tpl_vars['js']->_loop = true;
?>
        <script src="<?php echo $_smarty_tpl->tpl_vars['js']->value;?>
" type="text/javascript"></script>
    <?php } ?>
<?php }?>        

<?php if (isset($_smarty_tpl->tpl_vars['_layoutParams']->value['js'])&&count($_smarty_tpl->tpl_vars['_layoutParams']->value['js'])){?>
    <?php  $_smarty_tpl->tpl_vars['js'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['js']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['_layoutParams']->value['js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['js']->key => $_smarty_tpl->tpl_vars['js']->value){
$_smarty_tpl->tpl_vars['js']->_loop = true;
?>
        <script src="<?php echo $_smarty_tpl->tpl_vars['js']->value;?>
" type="text/javascript"></script>
    <?php } ?>
<?php }?>


<!-- SECCION DEL FOOTER-->
        
        <?php if (isset($_smarty_tpl->tpl_vars['widgets']->value['footer'])){?>
        
         <?php  $_smarty_tpl->tpl_vars['tp'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['tp']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['widgets']->value['footer']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['tp']->key => $_smarty_tpl->tpl_vars['tp']->value){
$_smarty_tpl->tpl_vars['tp']->_loop = true;
?>
                <?php echo $_smarty_tpl->tpl_vars['tp']->value;?>

         <?php } ?>
        
        <?php }?>
        

</body>
</html>
 <?php }} ?>