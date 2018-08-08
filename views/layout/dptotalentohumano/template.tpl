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
</head>

<body>
    {if isset($widgets.administracion)} {foreach item=tp from=$widgets.administracion} {$tp} {/foreach} {/if}
    <div id="wrapper">
        <!-- Sidebar -->
        <ul class="sidebar navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="index.html">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Comil-3</span>
                </a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                    aria-expanded="false">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>Pages</span>
                </a>
                <div class="dropdown-menu" aria-labelledby="pagesDropdown">
                    <h6 class="dropdown-header">Login Screens:</h6>
                    <a class="dropdown-item" href="login.html">Login</a>
                    <a class="dropdown-item" href="register.html">Register</a>
                    <a class="dropdown-item" href="forgot-password.html">Forgot Password</a>
                    <div class="dropdown-divider"></div>
                    <h6 class="dropdown-header">Other Pages:</h6>
                    <a class="dropdown-item" href="404.html">404 Page</a>
                    <a class="dropdown-item" href="blank.html">Blank Page</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="charts.html">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Charts</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="tables.html">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Tables</span>
                </a>
            </li>
        </ul>
        <div id="content-wrapper">
            <div class="container-fluid">
                {include file=$_contenido}
            </div>
        </div>
    </div>



    <script src="{$_layoutParams.ruta_js}jquery/jquery.min.js"></script>
    <script src="{$_layoutParams.ruta_js}bootstrap/bootstrap.bundle.min.js"></script>
    <script src="{$_layoutParams.ruta_js}jquery-easing/jquery.easing.min.js"></script>
    <script src="{$_layoutParams.ruta_js}sb-admin.min.js"></script>
</body>

</html>