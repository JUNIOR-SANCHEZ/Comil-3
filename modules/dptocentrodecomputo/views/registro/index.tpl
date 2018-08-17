<div class="text-01 d-flex justify-content-center align-items-center text-center w-100 ">
    <h2 class="display">DEPARTAMENTO INFORMATICO DE LA U.E DE FF.AA COMIL-3
        <br>"HEROES DEL41"</h2>
</div>
<form id="form1" action="" class="">

    <!-- row -->
    <div class="row mr-3 ml-1">
        <div class="col-12 mt-4">
            <h3 class="display text-center">HOJA DE VIDA DE EQUIPOS INFORMATICOS</h3>
        </div>
        <div class="col-sm-12 col-md-6">
            <div class="form-group row">
                <div class="col-sm-12 col-md-12 col-lg-3">
                    <label for="cp_dependencia">Dependencia:</label>
                </div>
                <select id="cp_dependencia" class="custom-select custom-select-sm col-9 col-sm-10 col-md-10 col-lg-5">
                    <option>Opciones:</option>
                    {if isset($_dependencia)} {foreach item=dato from=$_dependencia }
                    <option> {$dato.nombre}</option>{/foreach} {/if}
                </select>
                <div class="col-3 col-sm-2 col-md-2 col-lg-2 px-0 ">
                    <button class="btn btn-sm btn-success">Nueva</button>
                </div>
            </div>
            <div class="form-group row ">
                <div class="col-sm-12 col-md-12 col-lg-3">
                    <label for="cp_responsable">Responsable:</label>
                </div>
                <select id="cp_responsable" class="custom-select custom-select-sm col-9 col-sm-10 col-md-10 col-lg-5">
                    <option>Opciones:</option>
                    {if isset($_personal)} {foreach item=dato from=$_personal }
                    <option> {$dato.nombres_apellidos}</option>{/foreach} {/if}
                </select>
                <div class="col-3 col-sm-2 col-md-2 col-lg-2 px-0 ">
                    <button class="btn btn-sm btn-success">Nueva</button>
                </div>
            </div>
            <div class="form-group row ">
                <div class="col-sm-12 col-md-12 col-lg-3">
                    <label for="cp_cargo_funcion">Cargo/funcion:</label>
                </div>
                <select id="cp_cargo_funcion" class="custom-select custom-select-sm col-9 col-sm-10 col-md-10 col-lg-5 ">
                    <option>Opciones:</option>
                    {if isset($_cargos_funciones)} {foreach item=dato from=$_cargos_funciones }
                    <option> {$dato.nombre}</option>{/foreach} {/if}
                </select>
                <div class="col-3 col-sm-2 col-md-2 col-lg-2 px-0 ">
                    <button class="btn btn-sm btn-success">Nueva</button>
                </div>
            </div>
        </div>

        <div class="col-sm-12 col-md-6">
            <div class="form-group  row ">
                <div class="col-sm-12 col-md-12 col-lg-3">
                    <label for="cp_fecha_emision">Fecha:</label>
                </div>
                <input type="date" name="" id="cp_fecha_emision" class="form-control form-control-sm col-sm-12 col-md-12 col-lg-5 ">
            </div>
            <div class="form-group row">
                <div class="col-sm-12 col-md-12 col-lg-3">
                    <label for="cp_codigo">Codigo:</label>
                </div>
                <input type="text" name="" id="cp_codigo" class="form-control form-control-sm col-sm-12 col-md-12 col-lg-5">
            </div>
        </div>
    </div>
    <!-- fin row -->

    <!-- row -->
    <div class="row mr-3 ml-1">
        <div class="col-12 mt-4">
            <h3 class="display text-center">DATOS DEL EQUIPO</h3>
            <p class="lead">CONFIGURACION DE HARDWARE</p>
        </div>
        <div class="col-md-6 col-lg-6">
            <!-- caracteristicas de pc -->
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-4">
                            <label for="cp_marca_pc">Marca:</label>
                        </div>
                        <select id="cp_marca_pc" class="custom-select custom-select-sm col-9 col-sm-10 col-md-9 col-lg-6">
                            <option>Opciones:</option>
                            {if isset($_marcas_equipo)} {foreach item=dato from=$_marcas_equipo }
                            <option> {$dato.marca_nombre}</option>{/foreach} {/if}
                        </select>
                        <div class="col-3 col-sm-2 col-md-2 col-lg-2 px-0">
                            <button class="btn btn-sm btn-success">Nueva</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-4">
                            <label for="cp_placa_pc">Placa:</label>
                        </div>
                        <input type="text" name="cp_placa_pc" id="cp_placa_pc" class="form-control form-control-sm col-sm-12 col-md-12 col-lg-8">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-4">
                            <label for="cp_modelo_pc">Modelo:</label>
                        </div>
                        <select id="cp_modelo_pc" class="custom-select custom-select-sm col-9 col-sm-10 col-md-9 col-lg-6">
                            <option>Opciones:</option>
                            {if isset($_marcas_equipo)} {foreach item=dato from=$_marcas_equipo }
                            <option> {$dato.marca_nombre}</option>{/foreach} {/if}
                        </select>
                        <div class="col-3 col-sm-2 col-md-2 col-lg-2 px-0">
                            <button class="btn btn-sm btn-success">Nueva</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-4">
                            <label for="cp_serial_pc">Serial:</label>
                        </div>
                        <input type="text" name="cp_serial_pc" id="cp_serial_pc" class="form-control form-control-sm col-sm-12 col-md-12 col-lg-8">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-5">
                            <label for="cp_procesador_pc">Procesador:</label>
                        </div>
                        <select id="cp_procesador_pc" class="custom-select custom-select-sm col-9 col-sm-10 col-md-9 col-lg-5">
                            <option>Opciones:</option>
                            {if isset($_marcas_equipo)} {foreach item=dato from=$_marcas_equipo }
                            <option> {$dato.marca_nombre}</option>{/foreach} {/if}
                        </select>
                        <div class="col-3 col-sm-2 col-md-2 col-lg-2 px-0">
                            <button class="btn btn-sm btn-success">Nueva</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-4">
                            <label for="cp_velocidad_procesador_pc">Velocidad:</label>
                        </div>
                        <input type="text" name="cp_velocidad_procesador_pc" id="cp_velocidad_procesador_pc" class="form-control form-control-sm col-sm-12 col-md-12 col-lg-8">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-5">
                            <label for="cp_ram_pc">RAM:</label>
                        </div>
                        <select id="cp_ram_pc" class="custom-select custom-select-sm col-9 col-sm-10 col-md-9 col-lg-5">
                            <option>Opciones:</option>
                            {if isset($_marcas_equipo)} {foreach item=dato from=$_marcas_equipo }
                            <option> {$dato.marca_nombre}</option>{/foreach} {/if}
                        </select>
                        <div class="col-3 col-sm-2 col-md-2 col-lg-2 px-0">
                            <button class="btn btn-sm btn-success">Nueva</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-4">
                            <label for="cp_velocidad_ram_pc">Velocidad:</label>
                        </div>
                        <input type="text" name="cp_velocidad_ram_pc" id="cp_velocidad_ram_pc" class="form-control form-control-sm col-sm-12 col-md-12 col-lg-8">
                    </div>
                </div>
            </div>
            <!-- fin caracteristicas de pc -->
            <!-- caracteristicas de DISCO DURO -->
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-5">
                            <label for="cp_marca_disco_duro">Marca HHD:</label>
                        </div>
                        <select id="cp_marca_disco_duro" class="custom-select custom-select-sm col-9 col-sm-10 col-md-9 col-lg-5">
                            <option>Opciones:</option>
                            {if isset($_marcas_equipo)} {foreach item=dato from=$_marcas_equipo }
                            <option> {$dato.marca_nombre}</option>{/foreach} {/if}
                        </select>
                        <div class="col-3 col-sm-2 col-md-2 col-lg-2 px-0">
                            <button class="btn btn-sm btn-success">Nueva</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-5">
                            <label for="cp_marca_disco_duro">Tecnologia:</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="cp_tecnoligia_disco_duro" id="cp_tecnoligia_disco_duro_ide" value="option1">
                            <label class="form-check-label" for="cp_tecnoligia_disco_duro_ide">IDE</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="cp_tecnoligia_disco_duro" id="cp_tecnoligia_disco_duro_sata" value="option2">
                            <label class="form-check-label" for="cp_tecnoligia_disco_duro_sata">SATA</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-4">
                            <label for="cp_capacidad_disco_duro">Capacidad HHD:</label>
                        </div>
                        <select id="cp_capacidad_disco_duro" class="custom-select custom-select-sm col-9 col-sm-10 col-md-9 col-lg-6">
                            <option>Opciones:</option>
                            {if isset($_marcas_equipo)} {foreach item=dato from=$_marcas_equipo }
                            <option> {$dato.marca_nombre}</option>{/foreach} {/if}
                        </select>
                        <div class="col-3 col-sm-2 col-md-2 col-lg-2">
                            <button class="btn btn-sm btn-success">Nueva</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- caracteristicas de DISCO DURO -->

        </div>
        <div class="col-md-6 col-lg-6">
            <div class="row">
                <div class="col-lg-6">
                    <!-- caracteristicas del monitor -->
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-5">
                            <label for="cp_marca_monitor">Marca Mon.:</label>
                        </div>
                        <select id="cp_marca_monitor" class="custom-select custom-select-sm col-9 col-sm-10 col-md-9 col-lg-5">
                            <option>Opciones:</option>
                            {if isset($_marcas_equipo)} {foreach item=dato from=$_marcas_equipo }
                            <option> {$dato.marca_nombre}</option>{/foreach} {/if}
                        </select>
                        <div class="col-3 col-sm-2 col-md-2 col-lg-2 px-0 ">
                            <button class="btn btn-sm btn-success">Nueva</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-4">
                            <label for="cp_sereal_monitor">Serial:</label>
                        </div>
                        <input type="text" name="cp_sereal_monitor" id="cp_sereal_monitor" class="form-control form-control-sm col-sm-12 col-md-12 col-lg-8">
                    </div>
                </div>
            </div>
            <!-- fin caracteristicas del monitor -->
            <!-- caracteristicas del teclado -->
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-5">
                            <label for="cp_marca_teclado">Marca tecl.:</label>
                        </div>
                        <select id="cp_marca_teclado" class="custom-select custom-select-sm col-9 col-sm-10 col-md-9 col-lg-5">
                            <option>Opciones:</option>
                            {if isset($_marcas_equipo)} {foreach item=dato from=$_marcas_equipo }
                            <option> {$dato.marca_nombre}</option>{/foreach} {/if}
                        </select>
                        <div class="col-3 col-sm-2 col-md-2 col-lg-2 px-0 ">
                            <button class="btn btn-sm btn-success">Nueva</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-4">
                            <label for="cp_sereal_teclado">Serial:</label>
                        </div>
                        <input type="text" name="cp_sereal_teclado" id="cp_sereal_teclado" class="form-control form-control-sm col-sm-12 col-md-12 col-lg-8">
                    </div>
                </div>
            </div>
            <!-- fin caracteristicas del teclado -->
            <!-- fin caracteristicas del mouse -->
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-5">
                            <label for="cp_marca_mouse">Marca Mou.:</label>
                        </div>
                        <select id="cp_marca_mouse" class="custom-select custom-select-sm col-9 col-sm-10 col-md-9 col-lg-5">
                            <option>Opciones:</option>
                            {if isset($_marcas_equipo)} {foreach item=dato from=$_marcas_equipo }
                            <option> {$dato.marca_nombre}</option>{/foreach} {/if}
                        </select>
                        <div class="col-3 col-sm-2 col-md-2 col-lg-2 px-0 ">
                            <button class="btn btn-sm btn-success">Nueva</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-4">
                            <label for="cp_serial_mouse">Serial:</label>
                        </div>
                        <input type="text" name="cp_serial_mouse" id="cp_serial_mouse" class="form-control form-control-sm col-sm-12 col-md-12 col-lg-8">
                    </div>
                </div>
            </div>
            <!-- fin caracteristicas del mouse -->
            <!-- caracteristicas del CD-ROM -->
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-5">
                            <label for="cp_cd_rom">CD-ROM:</label>
                        </div>
                        <select id="cp_cd_rom" class="custom-select custom-select-sm col-9 col-sm-10 col-md-9 col-lg-5">
                            <option>Opciones:</option>
                            {if isset($_marcas_equipo)} {foreach item=dato from=$_marcas_equipo }
                            <option> {$dato.marca_nombre}</option>{/foreach} {/if}
                        </select>
                        <div class="col-3 col-sm-2 col-md-2 col-lg-2 px-0 ">
                            <button class="btn btn-sm btn-success">Nueva</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-4">
                            <label for="cp_serial_cd_rom">Serial:</label>
                        </div>
                        <input type="text" name="cp_serial_cd_rom" id="cp_serial_cd_rom" class="form-control form-control-sm col-sm-12 col-md-12 col-lg-8">
                    </div>
                </div>
            </div>
            <!-- fin caracteristicas del CD-ROM -->
            <!-- caracteristicas del Unidad DVD -->
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-5">
                            <label for="cp_unidad_dvd">Uni. DVD:</label>
                        </div>
                        <select id="cp_unidad_dvd" class="custom-select custom-select-sm col-9 col-sm-10 col-md-9 col-lg-5">
                            <option>Opciones:</option>
                            {if isset($_marcas_equipo)} {foreach item=dato from=$_marcas_equipo }
                            <option> {$dato.marca_nombre}</option>{/foreach} {/if}
                        </select>
                        <div class="col-3 col-sm-2 col-md-2 col-lg-2 px-0 ">
                            <button class="btn btn-sm btn-success">Nueva</button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-4">
                            <label for="cp_serial_dvd">Serial:</label>
                        </div>
                        <input type="text" name="cp_serial_dvd" id="cp_serial_dvd" class="form-control form-control-sm col-sm-12 col-md-12 col-lg-8">
                    </div>
                </div>
            </div>
            <!-- fin caracteristicas del Unidad DVD -->
            <!-- caracteristicas de otros dispositivos -->
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-4">
                            <label for="cp_otros_dispositivos">Otros:</label>
                        </div>
                        <input type="text" name="cp_otros_dispositivos" id="cp_otros_dispositivos" class="form-control form-control-sm col-sm-12 col-md-12 col-lg-8">

                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-4">
                            <label for="cp_serial_otros_dispositivos">Serial:</label>
                        </div>
                        <input type="text" name="cp_serial_otros_dispositivos" id="cp_serial_otros_dispositivos" class="form-control form-control-sm col-sm-12 col-md-12 col-lg-8">
                    </div>
                </div>
            </div>
            <!-- fin caracteristicas de otros dispositivos -->
        </div>
    </div>
    <!-- fin row -->
    <!-- row -->
    <div class="row mr-3 ml-1">
        <div class="col-12 mt-4">
            <p class="lead">CONFIGURACION DE RES Y SISTEMA OPERATIVO</p>
        </div>
        <div class="col-sm-12 col-md-12">
            <div class="row">
                <div class="col-lg-3">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-4">
                            <label for="cp_nombre_equipo">Nombre:</label>
                        </div>
                        <input type="text" name="cp_nombre_equipo" id="cp_nombre_equipo" class="form-control form-control-sm col-sm-12 col-md-12 col-lg-8">
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-6">
                            <label for="cp_direccion_ip">Direccion IP:</label>
                        </div>
                        <input type="text" name="cp_direccion_ip" id="cp_direccion_ip" class="form-control form-control-sm col-sm-12 col-md-12 col-lg-6">
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-6">
                            <label for="cp_direccion_mac">Direccion MAC:</label>
                        </div>
                        <input type="text" name="cp_direccion_mac" id="cp_direccion_mac" class="form-control form-control-sm col-sm-12 col-md-12 col-lg-6">
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-5">
                            <label for="cp_red">En red:</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="cp_red" id="cp_red_si" value="option1">
                            <label class="form-check-label" for="cp_red_si">SI</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="cp_red" id="cp_red_no" value="option2">
                            <label class="form-check-label" for="cp_red_no">NO</label>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="form-group  row ">
                        <div class="col-sm-12 col-md-12 col-lg-2">
                            <label for="cp_sistema_operativo">SO:</label>
                        </div>
                        <select id="cp_sistema_operativo" class="custom-select custom-select-sm col-9 col-sm-10 col-md-9 col-lg-4">
                            <option>Opciones:</option>
                            {if isset($_marcas_equipo)} {foreach item=dato from=$_marcas_equipo }
                            <option> {$dato.marca_nombre}</option>{/foreach} {/if}
                        </select>
                        <div class="col-3 col-sm-2 col-md-2 col-lg-2 px-0">
                            <button class="btn btn-sm btn-success">Nueva</button>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="cp_so" id="cp_so_32" value="option1">
                            <label class="form-check-label" for="cp_so_32">32-Bits</label>
                        </div>
                        <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="cp_so" id="cp_so_64" value="option2">
                            <label class="form-check-label" for="cp_red_no">64-Bits</label>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- fin row -->
    <!-- row -->
    <div class="row mr-3 ml-1">
        <div class="col-lg-12 mt-4">
            <p class="lead">TIPO SE ASQUISICION</p>
        </div>
        <div class="col-lg-3">
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="cp_adquisicion" id="cp_adquisicion_compra" value="option1">
                <label class="form-check-label" for="cp_adquisicion_compra">Compra</label>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="cp_adquisicion" id="cp_adquisicion_comondado" value="option1">
                <label class="form-check-label" for="cp_adquisicion_comondado">Comodado</label>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="form-check form-check-inline">
                <input class="form-check-input" type="radio" name="cp_adquisicion" id="cp_adquisicion_donacion" value="option1">
                <label class="form-check-label" for="cp_adquisicion_donacion">Donacion</label>
            </div>
        </div>
        <div class="col-lg-3">
                <button class="btn btn-sm btn-success btn-block">Otros</button>
        </div>
    </div>
    <!-- fin row -->
</form>