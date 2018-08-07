<?php /* Smarty version Smarty-3.1.8, created on 2018-08-07 22:09:17
         compiled from "C:\xampp\htdocs\Comil-3\views\acl\nuevo_permiso.tpl" */ ?>
<?php /*%%SmartyHeaderCode:11260185225b69fc6d758369-93366851%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a81faeba08cd93935a339d7edfec7fc3833a3dc4' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Comil-3\\views\\acl\\nuevo_permiso.tpl',
      1 => 1523483599,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11260185225b69fc6d758369-93366851',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'datos' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_5b69fc6da25e21_05081407',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b69fc6da25e21_05081407')) {function content_5b69fc6da25e21_05081407($_smarty_tpl) {?><div class="container">
<style type="text/css">
    table.table td { vertical-align: middle; }
    table.table td input { margin: 0; }
</style>

<h2>Nuevo Permiso</h2>

<form name="form1" method="post" action="">
    <input type="hidden" name="guardar" value="1">
    
    <table class="table table-bordered" style="width: 350px;">
        <tr>
            <td style="text-align: right;">Permiso: </td>
            <td><input type="text" name="permiso" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['datos']->value['permiso'])===null||$tmp==='' ? '' : $tmp);?>
"></td>
        </tr>

        <tr>
            <td style="text-align: right;">Key: </td>
            <td><input type="text" name="key" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['datos']->value['key'])===null||$tmp==='' ? '' : $tmp);?>
"></td>
        </tr>
    </table>
        
    <p><button type="submit" class="btn btn-primary">Guardar</button></p>
</form>
        
</div><?php }} ?>