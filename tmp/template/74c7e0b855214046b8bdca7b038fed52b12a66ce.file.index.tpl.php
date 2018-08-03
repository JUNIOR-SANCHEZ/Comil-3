<?php /* Smarty version Smarty-3.1.8, created on 2018-08-03 16:48:28
         compiled from "C:\xampp\htdocs\Comil-3\modules\usuarios\views\login\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:17122069545b4cab43324056-42281717%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '74c7e0b855214046b8bdca7b038fed52b12a66ce' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Comil-3\\modules\\usuarios\\views\\login\\index.tpl',
      1 => 1533307703,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '17122069545b4cab43324056-42281717',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_5b4cab4337ab69_98298789',
  'variables' => 
  array (
    '_layoutParams' => 0,
    'datos' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b4cab4337ab69_98298789')) {function content_5b4cab4337ab69_98298789($_smarty_tpl) {?>
<div class="modal-dialog text-center">
  <div class="col-sm-9 main-section">
    <div class="modal-content">

      <div class="col-12 user-img">
        <img src="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
public/img/face.png">
      </div>
      
      <div class="col-12 form-input">
          <form method="post" action="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
usuarios/login">
              <input type="hidden" name="login" value="1">
              <div class="form-group">
                  <input type="text" class="form-control" name="user" placeholder="Ingresar Usuario o email" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['datos']->value['user'])===null||$tmp==='' ? '' : $tmp);?>
">
              </div>
              <div class="form-group">
                  <input type="password" class="form-control" name="password" placeholder="Ingresar Contraseña" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['datos']->value['password'])===null||$tmp==='' ? '' : $tmp);?>
">
              </div>
              <button type="submit" class="btn btn-success" >Login</button>
          </form>
      </div>

    </div>
  </div>
</div><?php }} ?>