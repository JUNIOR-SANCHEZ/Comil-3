<div class="container">

    <!-- row 1 -->
    <div class="row">
        <!-- col-md-4 col-1 -->
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <ul class="nav nav-tabs card-header-tabs">
                        <li class="nav-item">
                            <a class="nav-link active" href="#">Marcas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Modelos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Velocidad</a>
                        </li>
                    </ul>
                </div>
                <div class="card-body">
                    <form action="{$_layoutParams.root}DptoCentroDeComputo/Otros/nueva_marcas" method="post" id="form-marcas"
                        class="view-form">
                        <div class="mensaje"></div>
                        <input type="hidden" name="guardar" value="1">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">Marcas</label>
                                    <input type="text" name="marca" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="">hardware</label>
                                    <select name="dispositivo" class="form-control">
                                        <option value="0">SELECCIONE:</option>
                                        <option value="processor">Procesador</option>
                                        <option value="disk">Disco Duro</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success btn-sm">Registrar</button>
                    </form>
                </div>
            </div>
        </div>
        <!-- col-md-4 col-1 -->

    </div>
    <!-- row 1 -->
    <br>
    <!-- row 2 -->
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    PC
                </div>
                <div class="card-body">
                    <form action="{$_layoutParams.root}DptoCentroDeComputo/Otros/nueva_pc" method="post" id="form-pc">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="">Serie:</label>
                                    <input type="text" name="serie" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="">Nombre:</label>
                                    <input type="text" name="nombre" class="form-control" required>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="">Marcas:</label>
                                    <select name="marca" class="form-control" id="marca-pc" required>
                                        <option value="" selected disabled>Seleccione:</option>
                                    </select>
                                </div>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="">Modelos:</label>
                                    <select name="modelo" class="form-control" required>
                                        <option value="" selected disabled>Seleccione:</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-success btn-sm">Agregar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- row 2 -->
    <br>
    <!-- row 3 -->
    <div class="row">
        <!-- col-1 -->
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    PROCESADOR
                </div>
                <div class="card-body">
                    <form action="{$_layoutParams.root}DptoCentroDeComputo/Otros/nuevo_procesador" method="post" id="form-procesor">
                        <div class="mensaje"></div>
                        <input type="hidden" name="guardar" value="1">
                        <div class="row align-items-center">
                            <div class="col-md-4">
                                <div class="from-group">
                                    <label for="">Marcas:</label>
                                    <select name="marca" id="marca-procesador" class="form-control" required>
                                        <option value="">Selecciene la marca</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="from-group">
                                    <label for="">Modelo:</label>
                                    <input type="text" name="modelo" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="from-group">
                                    <label for="">velocidad:</label>
                                    <div class="input-group">
                                        <input type="text" name="velocidad" class="form-control">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">MHz</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <button type="submit" class="btn btn-success btn-sm">REGISTRAR</button>
                    </form>
                </div>
            </div>
        </div>
        <!-- col-1 -->
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    DISCO DURO
                </div>
                <div class="card-body">
                    <form action="" method="post">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="">Marcas</label>
                                    <select name="marca" id="marca-disco" class="form-control" required>
                                        <option value="">SELECCIONE:</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="">Capacidad</label>
                                    <select name="capacidad" id="capacidad-disco" class="form-control" required>
                                        <option value="">SELECCIONE:</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="">Tecnologia</label>
                                    <select name="tecnologia" id="capacidad-disco" class="form-control" required>
                                        <option value="">SELECCIONE:</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- row 3 -->
</div>