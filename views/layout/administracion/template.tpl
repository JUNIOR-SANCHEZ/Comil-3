<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Latest compiled and minified CSS -->
    <link href="{$_layoutParams.root}public/css/bootstrap.min.css" rel="stylesheet">
    <!-- Optional theme -->
    
    <link rel="stylesheet" href="{$_layoutParams.root}public/css/bootstrap.css" /> 
    {if isset($_layoutParams.css) && count($_layoutParams.css)} 
    {foreach item=css from=$_layoutParams.css}
    <link href="{$css}" rel="stylesheet"> 
    {/foreach} 
    {/if}
</head>

<body style="margin: 64px 0;">
    {if isset($widgets.top)} {foreach item=tp from=$widgets.top} {$tp} {/foreach} {/if}
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                {include file=$_contenido}
            </div>
            <div class="col-lg-4">
                {if isset($widgets.sidebar)} {foreach item=sr from=$widgets.sidebar} {$sr} {/foreach} {/if}
            </div>
        </div>
    </div>
    <script type="text/javascript">
        var _root_ = '{$_layoutParams.root}';
    </script>
    {if isset($_layoutParams.js) && count($_layoutParams.js)} {foreach item=js from=$_layoutParams.js}
    <script src="{$js}" type="text/javascript"></script>
    {/foreach} {/if}

</body>
</html>