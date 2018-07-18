<?php /* Smarty version Smarty-3.1.8, created on 2018-07-16 16:27:15
         compiled from "C:\xampp\htdocs\Comil-3\modules\usuarios\views\login\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:17122069545b4cab43324056-42281717%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '74c7e0b855214046b8bdca7b038fed52b12a66ce' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Comil-3\\modules\\usuarios\\views\\login\\index.tpl',
      1 => 1523483599,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '17122069545b4cab43324056-42281717',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_layoutParams' => 0,
    'datos' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_5b4cab4337ab69_98298789',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b4cab4337ab69_98298789')) {function content_5b4cab4337ab69_98298789($_smarty_tpl) {?><style>
    .contenedor-login {
  width: 500px;
  height: 350px;
  text-align: center;
  background-color: rgba(0, 0, 0, 0.3);
  border-radius: 4px;
  margin: 0 auto;
  margin-top: 70px;
}

.contenedor-login img {
  width: 120px;
  height: 120px;
  margin-top: -60px;
  margin-bottom: 30px;
  border-radius: 50%;
  box-shadow: 0px 0px 40px 5px white;
}

.login-inputs {
  height: 45px;
  width: 300px;
  font-size: 18px;
  margin-bottom: 20px;
  background-color: white;
  padding-left: 30px;
}

.btn-Ingresar {
  padding: 15px 30px;
  color: white;
  border-radius: 4px;
  border: none;
  background-color: blue;
  border-bottom: 4px solid red;
  font-size: 20px;
  cursor: pointer;
}

@media screen and (max-width:800px) {
  .contenedor-login {
    width: 100%;
    height: 350px;
    text-align: center;
    background-color: rgba(0, 0, 0, 0.3);
    border-radius: 4px;
    margin: 0 auto;
    margin-top: 140px;
  }
  .error{
    width:100%;    
  }
}

</style>

<div class="contenedor-login">
    <img src="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['ruta_img'];?>
User-icon.png" alt="">
    <form id="formLogin" action="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
usuarios/login" method="POST">
        <input type="hidden" name="enviar" value="1"/>
        <div class="form-inputs">
            <input type="text" id="usuario" class="login-inputs" name="user" placeholder="Usuario" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['datos']->value['user'])===null||$tmp==='' ? '' : $tmp);?>
">
        </div>
        <div class="form-inputs">
            <input type="password" id="clave" class="login-inputs" name="password" placeholder="Contraseña" value="<?php echo (($tmp = @$_smarty_tpl->tpl_vars['datos']->value['password'])===null||$tmp==='' ? '' : $tmp);?>
">
        </div>

        <input class="btn-Ingresar" type="submit" value="ENTRAR"/>
        <br>
        <br>
        <a href="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
usuarios/registro">¿Necesitas una cuenta?</a>
    </form>
</div><?php }} ?>