<?php /* Smarty version Smarty-3.1.8, created on 2018-08-07 22:06:02
         compiled from "C:\xampp\htdocs\Comil-3\views\layout\administracion\template.tpl" */ ?>
<?php /*%%SmartyHeaderCode:16192277815b5fe2819daff1-75521546%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cf67add2ab87b2c0045393200775fbb8a0f81971' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Comil-3\\views\\layout\\administracion\\template.tpl',
      1 => 1533672360,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '16192277815b5fe2819daff1-75521546',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_5b5fe281a1e946_29127897',
  'variables' => 
  array (
    '_layoutParams' => 0,
    'css' => 0,
    'widgets' => 0,
    'tp' => 0,
    'sr' => 0,
    '_contenido' => 0,
    'js' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b5fe281a1e946_29127897')) {function content_5b5fe281a1e946_29127897($_smarty_tpl) {?><html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Latest compiled and minified CSS -->
    <link href="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
public/css/bootstrap.min.css" rel="stylesheet">
    <!-- Optional theme -->

    <link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
public/css/bootstrap.css" /> <?php if (isset($_smarty_tpl->tpl_vars['_layoutParams']->value['css'])&&count($_smarty_tpl->tpl_vars['_layoutParams']->value['css'])){?> <?php  $_smarty_tpl->tpl_vars['css'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['css']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['_layoutParams']->value['css']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['css']->key => $_smarty_tpl->tpl_vars['css']->value){
$_smarty_tpl->tpl_vars['css']->_loop = true;
?>
    <link href="<?php echo $_smarty_tpl->tpl_vars['css']->value;?>
" rel="stylesheet"> <?php } ?> <?php }?>
</head>

<body>
    <?php if (isset($_smarty_tpl->tpl_vars['widgets']->value['top'])){?> <?php  $_smarty_tpl->tpl_vars['tp'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['tp']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['widgets']->value['top']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['tp']->key => $_smarty_tpl->tpl_vars['tp']->value){
$_smarty_tpl->tpl_vars['tp']->_loop = true;
?> <?php echo $_smarty_tpl->tpl_vars['tp']->value;?>
 <?php } ?> <?php }?>
    <div class="container">
        <div class="row my-4">

            <div class="col-md-3">
                <?php if (isset($_smarty_tpl->tpl_vars['widgets']->value['sidebar'])){?> <?php  $_smarty_tpl->tpl_vars['sr'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['sr']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['widgets']->value['sidebar']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['sr']->key => $_smarty_tpl->tpl_vars['sr']->value){
$_smarty_tpl->tpl_vars['sr']->_loop = true;
?> <?php echo $_smarty_tpl->tpl_vars['sr']->value;?>
 <?php } ?> <?php }?>
            </div>
            <div class="col-md-9">
                <?php echo $_smarty_tpl->getSubTemplate ($_smarty_tpl->tpl_vars['_contenido']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

            </div>

        </div>
    </div>
    <script type="text/javascript">
        var _root_ = '<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
';
    </script> <?php if (isset($_smarty_tpl->tpl_vars['_layoutParams']->value['js'])&&count($_smarty_tpl->tpl_vars['_layoutParams']->value['js'])){?> <?php  $_smarty_tpl->tpl_vars['js'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['js']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['_layoutParams']->value['js']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['js']->key => $_smarty_tpl->tpl_vars['js']->value){
$_smarty_tpl->tpl_vars['js']->_loop = true;
?>
    <script src="<?php echo $_smarty_tpl->tpl_vars['js']->value;?>
" type="text/javascript"></script> <?php } ?> <?php }?>

</body>

</html><?php }} ?>