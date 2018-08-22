<div class="container">
    <div class="row">
        <div class="col-12 text-center">
            <h3 class="display ">SOLICITUD DE PERMISO POR DIAS</h3>
            <p class="lead">PERSONAL DOCENTE, ADMINISTRATIVO Y SERVICIO</p>
        </div>
    </div>

    <form action="" class=" ">

        <div class="row mt-5 border">
            <div class="col-12">
                <div class="col-12 mt-1">
                    <button type="button" class="btn btn-success btn-sm " id="th_btn_lista_persona">Lista</button>
                </div>
            </div>
            <div class="col-12 col-md-6">
                <div class="row">
                    <div class="col-12">
                        <p class="lead">Datos:</p>
                    </div>
                    <div class="col-12">
                        <div class="form-group row">
                            <div class="col-12 col-md-3 ">
                                <label for="">Apellidos Nombres:</label>
                            </div>
                            <input type="text" class="form-control col-12 col-md-7" placeholder="Ingrese el apellido">
                        </div>
                    </div>
                    <div class="col-12 ">
                        <div class="form-group row ">
                            <div class="col-12 col-md-3">
                                <label for="">Fecha/hora:</label>
                            </div>
                            <input type="date" class="form-control col-12 col-md-7">
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group row">
                            <div class="col-12 col-md-3">
                                <label for="">Días</label>
                            </div>
                            <input type="number" class="form-control col-12 col-md-7" min="1">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-3">
                <div class="row">
                    <div class="col-12">
                        <P class="lead">Motivo de la salida</P>
                    </div>
                </div>
                {if isset($motivos)} {foreach item=mt from=$motivos}
                <div class="custom-control custom-radio row">
                    <input type="radio" class="custom-control-input" name="th_permiso_motivo_radio" id="th_permiso_motivo_radio_{$mt.id_motivo_permisos}"
                        value="{$mt.id_motivo_permisos}">
                    <label for="th_permiso_motivo_radio_{$mt.id_motivo_permisos}" class="custom-control-label">{$mt.motivo}</label>
                </div>
                {/foreach} {/if}

            </div>
        </div>
    </form>

    <table class="table table-hover">
        <thead>
            <tr>
                <th>items</th>
                <th>items</th>
                <th>items</th>
                <th>items</th>
            </tr>
        </thead>
        <tbody>
            <tr id="datos_persona">
                <td>items</td>
                <td>items</td>
                <td>items</td>
                <td>items</td>
            </tr>
        </tbody>
    </table>
</div>