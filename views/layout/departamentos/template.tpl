<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/png" href="{$_layoutParams.root}public/img/images/escudo.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{$titulo|default:""}</title>
    <link rel="stylesheet" href="{$_layoutParams.ruta_css}bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="{$_layoutParams.ruta_icon}css/all.min.css">
    <link rel="stylesheet" href="{$_layoutParams.ruta_css}sb-admin.css">
    <link rel="stylesheet" href="{$_layoutParams.ruta_css}style.css">

</head>

<body>
    {if isset($widgets.nav)} {foreach item=tp from=$widgets.nav} {$tp} {/foreach} {/if}
    <div id="wrapper">
        <!-- Sidebar -->
        {if isset($widgets.departamentos)} {foreach item=tp from=$widgets.departamentos} {$tp} {/foreach} {/if}
        <!-- Sidebar -->
        <div id="content-wrapper">
            <div class="container-fluid">
                {include file=$_contenido}
            </div>
        </div>
    </div>

    <div class="container-fluid" id="contentModal">
        <div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="Label" aria-hidden="false">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        
                            <div class="form-group">
                                <label >Cargo</label>
                                <input type="text" class="form-control" id="data-add">
                            </div>
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" id="btnModal" class="btn btn-primary">Guardar cambios</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- VARIABLES GLOBALES -->
    <script type="text/javascript">
        var _root_ = '{$_layoutParams.root}';
    </script>
    <script src="{$_layoutParams.ruta_js}jquery/jquery.min.js"></script>
    <script src="{$_layoutParams.ruta_js}bootstrap/bootstrap.bundle.min.js"></script>
    <script src="{$_layoutParams.ruta_js}jquery-easing/jquery.easing.min.js"></script>
    <script src="{$_layoutParams.ruta_js}sb-admin.min.js"></script>
    <!-- RUTAS AUTOMATICAS DE ARCHIVO JS CREADOS -->
    {if isset($_layoutParams.js) && count($_layoutParams.js)} {foreach item=js from=$_layoutParams.js}
    <script src="{$js}" type="text/javascript"></script> {/foreach} {/if}
</body>

</html>