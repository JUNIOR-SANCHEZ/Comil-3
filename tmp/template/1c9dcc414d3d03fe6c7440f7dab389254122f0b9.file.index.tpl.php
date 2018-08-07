<?php /* Smarty version Smarty-3.1.8, created on 2018-08-07 06:31:05
         compiled from "C:\xampp\htdocs\Comil-3\modules\usuarios\views\index\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:17979304815b6897507ae5a9-99536197%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1c9dcc414d3d03fe6c7440f7dab389254122f0b9' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Comil-3\\modules\\usuarios\\views\\index\\index.tpl',
      1 => 1533616257,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '17979304815b6897507ae5a9-99536197',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_5b689750f0b1d3_32951378',
  'variables' => 
  array (
    '_layoutParams' => 0,
    'usuarios' => 0,
    'us' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b689750f0b1d3_32951378')) {function content_5b689750f0b1d3_32951378($_smarty_tpl) {?><div class="container">
    
            <h2>Usuarios</h2>
        <div class="row">
        <div class="col-12 my-4">
            <form class="form-inline justify-content-center" action="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
usuarios" method="POST" role="search">
                <div class="form-group mr-3">
                    <input type="text" class="form-control" placeholder="Buscar por usuario" name="share" id="share">
                </div>

                <input type="submit" class="btn btn-danger" value="Buscar">
            </form>
        </div>
    </div>
    <?php if (isset($_smarty_tpl->tpl_vars['usuarios']->value)&&count($_smarty_tpl->tpl_vars['usuarios']->value)){?>
    <table class="table table-bordered table-striped table-condensed">
        <tr>
            <th>ID</th>
            <th>Usuario</th>
            <th>Role</th>
            <th></th>
            <th></th>
        </tr>
        <?php  $_smarty_tpl->tpl_vars['us'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['us']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['usuarios']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['us']->key => $_smarty_tpl->tpl_vars['us']->value){
$_smarty_tpl->tpl_vars['us']->_loop = true;
?>
        <tr>
            <td><?php echo $_smarty_tpl->tpl_vars['us']->value['id'];?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['us']->value['usuario'];?>
</td>
            <td><?php echo $_smarty_tpl->tpl_vars['us']->value['role'];?>
</td>
            <td>
                <a href="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
usuarios/index/permisos/<?php echo $_smarty_tpl->tpl_vars['us']->value['id'];?>
">
                    Permisos
                </a>
            </td>
            <td>
                <?php if ($_smarty_tpl->tpl_vars['us']->value['role']!="Administrador"){?>
                <a href="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
usuarios/index/eliminarUsuario/<?php echo Cifrado::encryption($_smarty_tpl->tpl_vars['us']->value['id']);?>
">Eliminar</a><?php }?>
            </td>
        </tr>
        <?php } ?>
    </table>
    <?php }?>
</div><?php }} ?>