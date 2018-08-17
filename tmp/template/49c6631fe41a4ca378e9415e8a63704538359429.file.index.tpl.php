<?php /* Smarty version Smarty-3.1.8, created on 2018-08-16 15:52:39
         compiled from "C:\xampp\htdocs\Comil-3\modules\dptotalentohumano\views\index\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:8793700275b6af52426d4a7-55339908%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '49c6631fe41a4ca378e9415e8a63704538359429' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Comil-3\\modules\\dptotalentohumano\\views\\index\\index.tpl',
      1 => 1534427557,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8793700275b6af52426d4a7-55339908',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_5b6af52478c1c7_58519089',
  'variables' => 
  array (
    '_layoutParams' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b6af52478c1c7_58519089')) {function content_5b6af52478c1c7_58519089($_smarty_tpl) {?>
<div id="fondo" class="container-fluid">
<div class="container d-flex text-center justify-content-center flex-column flex-center align-items-center h-100" >
<h1>DEPARTAMENTO DE TALENTO HUMANO</h1>
<img src="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
public/img/images/escudo.jpg" class="img-fluid" alt="">
<p class="lead">
    Bienvenido a la pagina <strong><?php echo Session::get("usuario");?>
</strong>
</p>
</div>
</div><?php }} ?>