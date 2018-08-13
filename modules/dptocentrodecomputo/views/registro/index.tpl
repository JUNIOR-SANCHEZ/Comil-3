<div class="text-01 d-flex justify-content-center align-items-center text-center w-100">
    <h2 class="display">DEPARTAMENTO INFORMATICO DE LA U.E DE FF.AA COMIL-3
        <br>"HEROES DEL41"</h2>

</div>

<form id="form1" action="" class="">
    <div class="col-12 mt-4">
        <h3 class="display text-center">HOJA DE VIDA DE EQUIPOS INFORMATICOS</h3>
    </div>
    <!-- row -->
    <div class="row">
        <div class="col-sm-12 col-md-6">
            <div class="form-group row">
                <div class="col-sm-12 col-md-12 col-lg-3">
                    <label for="cp_dependencia">Dependencia:</label>
                </div>
                <select id="cp_dependencia" class="custom-select custom-select-sm col-sm-12 col-md-12 col-lg-5">
                    <option>Opciones:</option>
                    {if isset($_dependencia)} {foreach item=dato from=$_dependencia }
                    <option> {$dato.nombre}</option>{/foreach} {/if}
                </select>
            </div>
            <div class="form-group row ">
                <div class="col-sm-12 col-md-12 col-lg-3">
                    <label for="cp_responsable">Responsable:</label>
                </div>
                <select id="cp_responsable" class="custom-select custom-select-sm col-sm-12 col-md-12 col-lg-5">
                    <option>Opciones:</option>
                    {if isset($_personal)} {foreach item=dato from=$_personal }
                    <option> {$dato.nombres_apellidos}</option>{/foreach} {/if}
                </select>
            </div>
            <div class="form-group row ">
                <div class="col-sm-12 col-md-12 col-lg-3">
                    <label for="cp_cargo_funcion">Cargo/funcion:</label>
                </div>
                <select id="cp_cargo_funcion" class="custom-select custom-select-sm col-sm-12 col-md-12 col-lg-5 ">
                    <option>Opciones:</option>
                    {if isset($_cargos_funciones)} {foreach item=dato from=$_cargos_funciones }
                    <option> {$dato.nombre}</option>{/foreach} {/if}
                </select>
            </div>
        </div>

        <div class="col-sm-12 col-md-6">
            <div class="form-group  row ">
                <div class="col-sm-12 col-md-12 col-lg-3">
                    <label for="cp_fecha_emision">Fecha:</label>
                </div>
                <input type="date" name="" id="" class="form-control form-control-sm col-sm-12 col-md-12 col-lg-5 ">
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
</form>

