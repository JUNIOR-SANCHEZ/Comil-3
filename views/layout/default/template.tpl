<!DOCTYPE html>
<html lang="en">
    <head>
         <meta charset="utf-8">
         <link rel="icon" type="image/png" href="{$_layoutParams.root}public/img/images/escudo.png" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>{$titulo|default:""}</title>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
        <!-- Bootstrap core CSS -->
        <link href="{$_layoutParams.root}public/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="{$_layoutParams.root}public/css/mdb.min.css" rel="stylesheet">

        <link href="https://fonts.googleapis.com/css?family=Song+Myung" rel="stylesheet">
        <!-- Your custom styles (optional) -->
        <link href="{$_layoutParams.root}public/css/style.css" rel="stylesheet">

        <!-- RUTAS AUTOMATICAS -->
        {if isset($_layoutParams.css) && count($_layoutParams.css)}
            {foreach item=css from=$_layoutParams.css}
                <link href="{$css}" rel="stylesheet">
            {/foreach}
        {/if}
            
        
    </head>
    <body class="">

<!-- MENU DE NAVEGACION -->        
               {if isset($widgets.top)}  
                    {foreach item=tp from=$widgets.top}
                        {$tp}
                    {/foreach}
               {/if}
           
<!-- MENSAJES DE ERROR -->
{if isset($_error)}<div class="alert alert-success text-center"> {$_error} </div> {/if}
{if isset($_mensaje)}<div class="alert alert-success text-center"> {$_mensaje} </div> {/if}

<!-- CUERPO DE LA APLICACION -->       
{include file=$_contenido}
        
<!-- VARIABLES GLOBALES -->        
<script type="text/javascript">
        var _root_ = '{$_layoutParams.root}';
</script>

<!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="{$_layoutParams.root}public/js/jquery-3.3.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="{$_layoutParams.root}public/js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="{$_layoutParams.root}public/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="{$_layoutParams.root}public/js/mdb.min.js"></script>
    <script>
        new WOW().init();
        $('.carousel').carousel({
        interval: 2000
        })
    </script>
<!-- SCRIPTS -->

<!-- RUTAS AUTOMATICAS DE LIBRERIAS JS QUE NECESITEMOS EN LA APLICACION -->
{if isset($_layoutParams.jsPlugin) && count($_layoutParams.jsPlugin)}
    {foreach item=js from=$_layoutParams.jsPlugin}
        <script src="{$js}" type="text/javascript"></script>
    {/foreach}
{/if}   

<!-- RUTAS AUTOMATICAS DE ARCHIVO JS CREADOS -->
{if isset($_layoutParams.js) && count($_layoutParams.js)}
    {foreach item=js from=$_layoutParams.js}
        <script src="{$js}" type="text/javascript"></script>
    {/foreach}
{/if}

<!-- SECCION DEL FOOTER-->
        
        {if isset($widgets.footer)}
         {foreach item=tp from=$widgets.footer }
                {$tp}
         {/foreach}
        {/if}
        

</body>
</html>
 