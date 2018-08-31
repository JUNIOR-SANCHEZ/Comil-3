<div class="container">
    <div class="card p-5 my-5">
        <div class="card-body">
            <h5 class="card-title text-center">SOLICITUD DE PERMISOS POR DÍA</h5>
            <h6 class="card-subtitle  text-muted text-center mb-4 ">PERSONAL, DOCENTE, ADMINISTRATIVO Y SERVICIOS</h6>
            <form class="row" id="th_permiso_form">
                <input type="hidden" name="th_permiso_id_persona" id="th_permiso_id_persona" value="0">
                <div class="col-12 mb-4">
                    <div class="btn-group btn-group-toggle  " data-toggle="buttons">
                        <label class="btn btn-success btn-sm active">
                            <input type="radio" name="th_permiso_tipo_solicitud" value="dias" id="th_permiso_dia" checked > Días
                        </label>

                        <label class="btn btn-success btn-sm">
                            <input type="radio" name="th_permiso_tipo_solicitud" id="th_permiso_hora" value="horas" > Horas
                        </label>
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <!-- Fila 1 -->
                    <div class="row" id="">
                        <!-- Nombres -->
                        <div class="input-group col-12  mb-3">
                            <div class="input-group-prepend ">
                                <div class="input-group-text bg-dark text-white" id="">
                                    <i class="fa fa-user"></i>
                                </div>
                            </div>
                            <input type="text" class="form-control" id="th_permiso_nombres" disabled >
                            <div class="input-group-prepend">
                                <button class="btn btn-outline-success" type="button" id="th_btn_lista_persona" data-toggle="modal" data-target="#th_permiso_lista_persona_modal">Lista</button>
                            </div>
                        </div>
                        <!-- Fin Nombres -->
                        <!-- Fecha Permiso -->
                        <div class="input-group col-12  mb-3">
                            <div class="input-group-prepend ">
                                <div class="input-group-text bg-dark text-white" id="">
                                    <i class="fa fa-calendar-alt"></i>
                                </div>
                            </div>
                            <input type="date" class="form-control" name="th_permiso_fecha_permiso" required >
                        </div>
                        <!-- Fin Fecha Permiso -->
                        <!-- Numero de horas o Fecha -->
                        <!-- <div   col-12 mb-3"> -->
                        <div class="input-group  col-12 mb-3" id="remove">
                            <div class="input-group-prepend ">
                                <div class="input-group-text bg-dark text-white" id="">
                                    <i class="fa fa-calendar-alt"></i>
                                </div>
                            </div>
                            <input type="number" class="form-control" name="th_permiso_num_dias" min="1" required >
                        </div>
                    <!-- </div> -->
                        <!-- Fin Numero de horas o Fecha -->
                    </div>
                    <!-- Fila 1 -->
                </div>
                <div class="col-12 col-md-6">
                    <!-- Fila 2 -->
                    <div class="row">

                        <!-- Motivos de Salida -->
                        <div class="input-group mb-3 col-12 ">
                            <div class="input-group-prepend ">
                                <label class="input-group-text bg-dark text-white" for="inputGroupSelect01">
                                    <i class="fas fa-comment-dots"></i>
                                </label>
                            </div>
                            <select class="custom-select" name="th_permiso_motivo" required >
                                <option selected disabled class="text-muted" >Motivo de salida</option>
                                {if isset($motivos)} {foreach item=mt from=$motivos}
                                <option value="{$mt.id_motivo_permisos}">{$mt.motivo}</option>
                                {/foreach} {/if}

                            </select>
                        </div>
                        <!-- FIn Motivos de Salida -->
                        <!-- Imputable y no Imputable -->
                        <div class="input-group mb-3 col-12">
                            <div class="input-group-prepend ">
                                <label class="input-group-text bg-dark text-white" for="inputGroupSelect01">
                                    <i class="fa fa-money-bill-alt"></i>
                                </label>
                            </div>
                            <select class="custom-select" name="th_permiso_tipo_permiso" required >
                                <option value="0" disabled selected class="text-muted">Tipo de permiso</option>
                                {foreach item=list from=$tipo_permiso}
                                <option value="{$list.id_tipo_permisos}">{$list.tipo_permiso}</option>
                                {/foreach}
                            </select>
                        </div>
                        <!-- Fin Imputable y no Imputable -->
                    </div>
                    <!-- Fin Fila 2 -->

                </div>
                <div class="col-12">
                    <button type="button" id="th_permiso_guardar_btn" class="btn btn-sm btn-success">Guardar Cambios</button>
                </div>
            </form>
        </div>
    </div>
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