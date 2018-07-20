<?php /* Smarty version Smarty-3.1.8, created on 2018-07-20 16:57:57
         compiled from "C:\xampp\htdocs\Comil-3\modules\usuarios\views\login\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:17122069545b4cab43324056-42281717%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '74c7e0b855214046b8bdca7b038fed52b12a66ce' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Comil-3\\modules\\usuarios\\views\\login\\index.tpl',
      1 => 1532098674,
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
          <form>
              <div class="form-group">
                  <input type="text" class="form-control" placeholder="Ingresar Usuario o email">
              </div>
              <div class="form-group">
                  <input type="password" class="form-control" placeholder="Ingresar Contraseña">
              </div>
              <button type="submit" class="btn btn-success" >Login</button>
          </form>
      </div>

    </div>
  </div>
</div><?php }} ?>