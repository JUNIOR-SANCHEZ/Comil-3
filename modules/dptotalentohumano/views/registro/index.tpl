<div class="row  mx-1 mt-3">
    <div class="col-lg-12 d-flex justify-content-center flex-column align-items-center border mb-4 text-center">
        <h2 class="display py-2">HOJA DE VIDA PERSONAL</h2>
        <p class="lead d-none d-md-block">DIRECCIÓN GENERAL DE TALENTO HUMANO</p>
    </div>
    <hr>
    <form action="" id="th_form">
        <!-- Datos de la  Persona -->
        <div class="col-lg-12 border mb-4">
            <div class="row">
                <div class="col-lg-12 mb-4">
                    <p class="lead">1.- Datos personales </p>
                </div>
                <div class="col-lg-6 d-block d-md-none">
                    <div class="text-center">
                        <img src="{$_layoutParams.root}public/img/user/user.png" class="img-fluid mx-auto mt-1 rounded-circle" alt="imagen de la persona">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group row ">
                        <div class="col-lg-4 mr-2">
                            <label for="th_per_nombres">Nombres:</label>
                        </div>
                        <input type="text" name="th_per_nombres" id="th_per_nombres" class="form-control col-lg-6 form-control-sm">
                    </div>
                    <div class="form-group row ">
                        <div class="col-lg-4 mr-2">
                            <label for="th_per_apellidos">Apellido:</label>
                        </div>
                        <input type="text" name="th_per_apellidos" id="th_per_apellidos" class="form-control col-lg-6 form-control-sm">
                    </div>
                    <div class="form-group row ">
                        <div class="col-lg-4 mr-2">
                            <label for="th_per_cargo">Cargo:</label>
                        </div>
                        <select class="custom-select custom-select-sm col-10 col-sm-10 col-lg-6" id="th_per_cargo" name="th_per_cargo" required>
                            <option value="0">Selecciona un elemento de la lista</option>
                        </select>
                        <div class="col-sm-2 col-2 col-lg-1 pl-0 pl-sm-3 ">
                            <button type="button" class="btn btn-success btn-sm" data-url="DptoTalentoHumano/registro/agregarCargo" id="th_per_cargo_btn" data-toggle="modal" data-target="#newModal">Nuevo</button>
                        </div>

                    </div>
                    <div class="form-group row ">
                        <div class="col-lg-4 mr-2">
                            <label for="th_per_estado_laboral">Estado laboral:</label>
                        </div>
                        <select class="custom-select custom-select-sm col-lg-6" id="th_per_estado_laboral" name="th_per_estado_laboral" required>
                            <option value="0">Selecciona un elemento de la lista</option>
                            <option value="1">Activo</option>
                            <option value="2">Inactivo</option>
                        </select>
                    </div>
                    <div class="form-group row ">
                        <div class="col-lg-4 mr-2">
                            <label for="th_per_fecha_nacimiento">Fecha/Nacimiento:</label>
                        </div>
                        <input type="date" name="th_per_fecha_nacimiento" id="th_per_fecha_nacimiento" class="form-control col-lg-6 form-control-sm">
                    </div>
                    <div class="form-group row ">
                        <div class="col-lg-4 mr-2">
                            <label for="th_per_genero">Género:</label>
                        </div>
                        <select class="custom-select custom-select-sm col-lg-6" id="th_per_genero" required>
                            <option value="0">Selecciona un elemento de la lista</option>

                        </select>
                    </div>
                </div>
                <div class="col-lg-6 d-none d-md-block">
                    <div class="text-center">
                        <img src="{$_layoutParams.root}public/img/user/user.png" class="img-fluid mx-auto mt-1 rounded-circle" alt="imagen de la persona">
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group row ">
                                <div class="col-lg-4 mr-2">
                                    <label for="th_per_direccion_domiciliaria">Cédula:</label>
                                </div>
                                <input type="text" name="th_per_cedula" id="th_per_cedula" class="form-control col-lg-6 form-control-sm">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group row ">
                                <div class="col-lg-4 mr-2">
                                    <label for="th_per_estado_civil">Estado Civil:</label>
                                </div>
                                <select class="custom-select custom-select-sm col-lg-6" name="th_per_estado_civil" id="th_per_estado_civil" required>
                                    <option value="0">Seleccione un elemento de la lista</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group row ">
                                <div class="col-lg-4 mr-2">
                                    <label for="th_per_tipo_sangre">Tipo/Sangre:</label>
                                </div>
                                <select class="custom-select custom-select-sm col-lg-6" id="th_per_tipo_sangre" name="th_per_tipo_sangre" required>
                                    <option value="0">Selecciona un elemento de la lista</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group row ">
                                <div class="col-lg-4 mr-2">
                                    <label for="th_per_direccion_domiciliaria">Dirección Domiciliaria:</label>
                                </div>
                                <input type="text" name="th_per_direccion_domiciliaria" id="th_per_direccion_domiciliaria" class="form-control col-lg-6 form-control-sm">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group row ">
                                <div class="col-lg-4 mr-2">
                                    <label for="th_per_celular">Celular:</label>
                                </div>
                                <input type="text" name="th_per_celular" id="th_per_celular" class="form-control col-lg-6 form-control-sm">
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group row ">
                                <div class="col-lg-4 mr-2">
                                    <label for="th_per_email">Email:</label>
                                </div>
                                <input type="text" name="th_per_email" id="th_per_email" class="form-control col-lg-6 form-control-sm">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group row ">
                                <div class="col-lg-4 mr-2">
                                    <label for="th_per_telefono">Teléfono:</label>
                                </div>
                                <input type="text" name="th_per_telefono" id="th_per_telefono" class="form-control col-lg-6 form-control-sm">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group row ">
                                <div class="col-lg-4 mr-2">
                                    <label for="th_per_email_institucional">Email Institucional:</label>
                                </div>
                                <input type="text" name="th_per_email_institucional" id="th_per_email_institucional" class="form-control col-lg-6 form-control-sm">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Fin Datos de la  Persona -->

        <!-- Datos del Conyuge de la persona -->
        <div class="col-lg-12 border mb-4">
            <div class="row">
                <div class="col-lg-12 mb-2 d-flex">
                    <p class="lead">2.- Datos del conyuge</p>
                    <div class="custom-control custom-checkbox ml-auto p-2">
                        <input type="checkbox" class="custom-control-input" id="th_datos_conyuge">
                        <label class="custom-control-label" for="th_datos_conyuge">Inactivo</label>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group row px-2">
                        <label for="th_conyuge_nombre">Nombres del conyuge</label>
                        <input type="text" class="form-control form-control-sm" id="th_conyuge_nombre" name="th_conyuge_nombre" placeholder="" disabled>
                    </div>
                    <div class="form-group row px-2">
                        <label for="th_conyuge_apellidos">Apellidos del conyuge</label>
                        <input type="text" class="form-control form-control-sm" id="th_conyuge_apellidos" name="th_conyuge_apellidos" disabled/>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group row px-2">
                        <label for="th_conyuge_cedula">Cédula</label>
                        <input type="text" class="form-control form-control-sm" id="th_conyuge_cedula" name="th_conyuge_cedula" placeholder="" disabled>
                    </div>
                    <div class="form-group row px-2">
                        <label for="th_conyuge_fecha_nacimiento">Fecha/Nacimieto:</label>
                        <input type="text" class="form-control form-control-sm" id="th_conyuge_fecha_nacimiento" name="th_conyuge_fecha_nacimiento"
                            disabled />
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group row px-2">
                        <label for="th_conyuge_email">Email</label>
                        <input type="text" class="form-control form-control-sm" id="th_conyuge_email" name="th_conyuge_email" disabled/>
                    </div>
                    <div class="form-group row px-2">
                        <label for="th_conyuge_ocupacion">Teléfono</label>
                        <input type="text" class="form-control form-control-sm" id="th_conyuge_ocupacion" name="th_conyuge_ocupacion" placeholder=""
                            disabled>
                    </div>
                </div>
            </div>
        </div>
        <!-- Fin Datos del Conyuge de la persona -->

        <!-- Datos de los hijos de la persona -->
        <div class="col-lg-12 border mb-4">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-lg-4 d-flex justify-content-center flex-column align-items-start">
                            <p class="lead">3.- Datos de Hijos</p>
                        </div>
                        <div class="col-lg-4 d-flex justify-content-center flex-column align-items-center">
                            <div class="from-group form-inline">
                                <input type="text" class="form-control form-control-sm text-center" id="th_hijo_numero" placeholder="Nº" style="width: 50px">
                            </div>
                        </div>
                        <div class="col-lg-4 d-flex justify-content-center flex-column align-items-end">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="th_datos_hijos">
                                <label class="custom-control-label" for="th_datos_hijos">Inactivo</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group row px-2">
                        <label for="th_hijo_nombre">Nombres</label>
                        <input type="text" class="form-control form-control-sm" id="th_hijo_nombre" name="th_hijo_nombre" placeholder="" disabled>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group row px-2">
                        <label for="th_hijo_apellido">Apellidos</label>
                        <input type="text" class="form-control form-control-sm" id="th_hijo_apellido" name="th_hijo_apellido" placeholder="" disabled>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group row px-2">
                        <label for="th_hijo_cedula">Cedula</label>
                        <input type="text" class="form-control form-control-sm" id="th_hijo_cedula" name="th_hijo_cedula" placeholder="" disabled>
                    </div>
                </div>
            </div>
        </div>
        <!-- Fin Datos de los hijos de la persona -->
</div>

</form>
</div>