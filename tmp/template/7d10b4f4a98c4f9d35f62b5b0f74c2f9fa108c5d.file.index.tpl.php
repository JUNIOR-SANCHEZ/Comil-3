<?php /* Smarty version Smarty-3.1.8, created on 2018-07-16 16:23:17
         compiled from "C:\xampp\htdocs\Comil-3\views\galeria\index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:4622883635b4caa55a5b312-68432381%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7d10b4f4a98c4f9d35f62b5b0f74c2f9fa108c5d' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Comil-3\\views\\galeria\\index.tpl',
      1 => 1523483599,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4622883635b4caa55a5b312-68432381',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    '_acl' => 0,
    '_layoutParams' => 0,
    'galeria' => 0,
    'con' => 0,
    'gl' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_5b4caa55b7c5d5_70685282',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5b4caa55b7c5d5_70685282')) {function content_5b4caa55b7c5d5_70685282($_smarty_tpl) {?><br/><br/>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            
            <?php if ($_smarty_tpl->tpl_vars['_acl']->value->permiso("nuevo_publ")){?>
            <a href="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
galeria/nuevo" class="btn btn-blue pull-right"><i class="glyphicon glyphicon-new-window"></i> INGRESAR GALERIA</a>
            <?php }?>
            <h2 class="text-center my-5 py-5">GALERIA</h2>
            <div class="clearfix"></div>
            <div class="row">
                <section id="projects">
                    <ul id="thumbs" class="portfolio">
                        <?php $_smarty_tpl->tpl_vars['con'] = new Smarty_variable(0, null, 0);?>
                        <?php  $_smarty_tpl->tpl_vars['gl'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['gl']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['galeria']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['gl']->key => $_smarty_tpl->tpl_vars['gl']->value){
$_smarty_tpl->tpl_vars['gl']->_loop = true;
?>
                            
                            <!-- Item Project and Filter Name -->
                        <li class="item-thumbs col-lg-3 design" data-id="id-<?php echo $_smarty_tpl->tpl_vars['con']->value;?>
" data-type="web">
                            
                        <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                        <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="<?php echo $_smarty_tpl->tpl_vars['gl']->value['tema'];?>
" href="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
public/img/galeria/thumb/thumb_<?php echo $_smarty_tpl->tpl_vars['gl']->value['imagen'];?>
">
                        <span class="overlay-img"></span>
                        <span class="overlay-img-thumb font-icon-plus"></span>
                        </a>
                        <!-- Thumb Image and Description -->
                        <img src="<?php echo $_smarty_tpl->tpl_vars['_layoutParams']->value['root'];?>
public/img/galeria/thumb/thumb_<?php echo $_smarty_tpl->tpl_vars['gl']->value['imagen'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['gl']->value['descripcion'];?>
">
                        
                        </li>
                        <!-- End Item Project -->
                        <?php $_smarty_tpl->tpl_vars['con'] = new Smarty_variable($_smarty_tpl->tpl_vars['con']->value+1, null, 0);?>
                        <?php } ?>
                    </ul>
                </section>
            </div>
        </div>
    </div>
</div>
    <?php }} ?>