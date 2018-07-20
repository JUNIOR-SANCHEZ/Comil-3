<?php /* Smarty version Smarty-3.1.8, created on 2018-07-19 16:57:28
         compiled from "C:\xampp\htdocs\Comil-3\modules\usuarios\views\registro\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:20367890135b4f5a0d3b1ce3-70538054%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3b85d7d6717395c10799ae48fa57b0eb0d704e19' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Comil-3\\modules\\usuarios\\views\\registro\\index.tpl',
      1 => 1532012245,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20367890135b4f5a0d3b1ce3-70538054',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_5b4f5a0d536565_15861204',
  'variables' => 
  array (
    '_layoutParams' => 0,
    'datos' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b4f5a0d536565_15861204')) {function content_5b4f5a0d536565_15861204($_smarty_tpl) {?>
<style>

</style>


<div class="my-content" >
        <div class="container" > 
            <div class="row">
                <div class="col-sm-12" >
                  <h1><strong>Comil</strong> Formulario de Registro</h1>
                  <div class="mydescription">
                    <p> </p>
                  </div>
                </div>
            </div>
            <div class="row">
              <div class="col-sm-6 offset-sm-3 myform-cont" >
                    <div class="myform-top">
                        <div class="myform-top-left">
                          <h3>Regístro de Usuarios .</h3>
                            <p>Por favor ingresar los datos:</p>
                        </div>
                        <div class="myform-top-right">
                          <i class="fa fa-user"></i>
                        </div>
                    </div>
                    <div class="myform-bottom">
                      <form role="form" action="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
usuarios/registro" method="post" class="">
                      <input type="hidden" name="registro" value="1">
                        <div class="form-group">
                            <input type="text" name="user" class="form-control" id="inputUser" placeholder="Ingrese el Usuario" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['datos']->value['user'])===null||$tmp==='' ? '' : $tmp);?>
">
                        </div>
                        <div class="form-group">
                            <input type="email" name="email" class="form-control" id="inputEmail" aria-describedby="emailHelp" placeholder="Ingrese el email"  value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['datos']->value['email'])===null||$tmp==='' ? '' : $tmp);?>
">
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" class="form-control" id="inputPassword" placeholder="Ingrese una contraseña" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['datos']->value['password'])===null||$tmp==='' ? '' : $tmp);?>
">
                        </div>
                        <div class="form-group">
                            <input type="password" name="confirmPassword" class="form-control" id="inputConfirmPassword" placeholder="Confirme la contraseña" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['datos']->value['confirmPassword'])===null||$tmp==='' ? '' : $tmp);?>
">
                        </div>
                        <input type="submit" class="mybtn " value="Registrar">
                      </form>
                    </div>
              </div>
            </div>
           
        </div>
      </div><?php }} ?>