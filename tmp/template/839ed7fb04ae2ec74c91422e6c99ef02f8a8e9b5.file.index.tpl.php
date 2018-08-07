<?php /* Smarty version Smarty-3.1.8, created on 2018-08-07 03:36:44
         compiled from "C:\xampp\htdocs\Comil-3\views\acl\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:17506494845b68ad293e39f0-35266388%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '839ed7fb04ae2ec74c91422e6c99ef02f8a8e9b5' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Comil-3\\views\\acl\\index.tpl',
      1 => 1532832565,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '17506494845b68ad293e39f0-35266388',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_5b68ad2941ac17_69441017',
  'variables' => 
  array (
    '_layoutParams' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b68ad2941ac17_69441017')) {function content_5b68ad2941ac17_69441017($_smarty_tpl) {?><h2>Listas de control de acceso</h2>

<ul>
    <li><a href="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
acl/roles">Roles</a></li>
    <li><a href="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
acl/permisos">Permisos</a></li>
</ul><?php }} ?>