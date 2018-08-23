<div class="container">
    <div class="row">
        <div class="col-12 text-center">
            <h3 class="display ">SOLICITUD DE PERMISO POR DIAS</h3>
            <p class="lead">PERSONAL DOCENTE, ADMINISTRATIVO Y SERVICIO</p>
        </div>
    </div>
    <div class="d-flex my-3 justify-content-end">
            <button type="button" class="btn btn-success btn-sm " id="th_btn_lista_persona" data-toggle="modal" data-target="#th_permiso_lista_persona_modal">Lista</button>
    </div>
    <form action="" class="" id="th_permiso_form">
        <input type="hidden" name="th_permiso_id_persona" id="th_permiso_id_persona" value="0">
        <div class="row  border">
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
                            <input type="text" id="th_permiso_nombres" class="form-control col-12 col-md-7" disabled>
                        </div>
                    </div>
                    <div class="col-12 ">
                        <div class="form-group row ">
                            <div class="col-12 col-md-3">
                                <label for="">Fecha/hora:</label>
                            </div>
                            <input type="date" class="form-control col-12 col-md-7" name="th_permiso_fecha_inicio">
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="form-group row">
                            <div class="col-12 col-md-3">
                                <label for="">Días</label>
                            </div>
                            <input type="number" class="form-control col-12 col-md-7" name="th_permiso_dias" min="1">
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
            <div class="col-12 d-flex justify-content-start my-3">
                <button id="th_permiso_guardar_btn" class="btn btn-sm btn-success">Guardar Cambios</button>
            </div>
        </div>
    </form>
</div>
<div class="modal fade" id="th_permiso_lista_persona_modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
    aria-hidden="true">
    <div class="modal-dialog  modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">LISTA DEL PERSONAL</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <input type="text" placeholder="Filtrar persona" id="th_permiso_buscar_persona" class="form-control">
            </div>
            <div id="th_btn_lista_persona_contenedor">
                <div class="modal-body">
                    <table class="table table-hover table-responsive">
                        <thead>
                            <tr>
                                <th>Nombres Completos</th>
                                <th>Dirección</th>
                                <th>Email</th>
                                <th>Email Institucional</th>
                                <th>Cedula</th>
                            </tr>
                        </thead>
                        <tbody id="">
                            {if isset($personal)} {foreach item=ps from=$personal}
                            <tr class="th_dato_fila_persona">
                                <td class="th_id_persona" style="display: none;">{$ps.id}</td>
                                <td class="th_nombre_persona">{$ps.nombres}</td>
                                <td>{$ps.direccion}</td>
                                <td>{$ps.email}</td>
                                <td>{$ps.correo_institucional}</td>
                                <td>{$ps.cedula}</td>
                            </tr>

                            {/foreach} {/if}
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer">
                    {if isset($paginacion)} {$paginacion} {/if}
                </div>
            </div>
        </div>
    </div>
</div>