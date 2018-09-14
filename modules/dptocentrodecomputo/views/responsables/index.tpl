<div class="container">
    {if isset($_mesajes) && !empty($_mensajes)}
    <div class="alert alert-warning alert-dismissible fade show" role="alert">
        <strong>{$_mensajes}</strong>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    {/if}
    <div class="card mb-2">
        <form action="{$_layoutParams.root}DptoCentroDeComputo/Responsables" method="POST" id="form-responsable"
            required>
            <input type="hidden" name="guardar" value="1">
            <div class="card-header">
                Responsables
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group  ">
                            <label for="cp_responsable_nombres">Nombres:</label>
                            <input type="text" name="cp_nombres" id="cp_responsable_nombres" class="form-control form-control-sm"
                                required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group  ">
                            <label for="cp_responsable_apellidos">Apellidos:</label>
                            <input type="text" name="cp_apellidos" id="cp_responsable_apellidos" class="form-control form-control-sm"
                                required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="cp_dependencia">Dependencia:</label>
                            <input type="text" name="cp_dependencia" id="cp_dependencia" class="form-control form-control-sm"
                                required>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group  ">
                            <label for="cp_cargo_funcion">Cargo/funcion:</label>
                            <input type="text" name="cp_cargo" id="cp_cargo_funcion" class="form-control form-control-sm"
                                required>
                        </div>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary btn-sm">Registrar</button>
            </div>
        </form>
    </div>

    <div class="card ">
        <div class="card-body">
            <table class="table">
                <thead>
                    <tr>
                        <th>NOMBRES</th>
                        <th>APELLIDOS</th>
                        <th>DEPENDENCIAS</th>
                        <th>CARGO/FUNCION</th>
                    </tr>
                </thead>
                <tbody>
                    {foreach item=list from=$_responsables}
                    <tr>
                        <td>{$list['nombres']}</td>
                        <td>{$list['apellidos']}</td>
                        <td>{$list['dependencias']}</td>
                        <td>{$list['cargos']}</td>
                    </tr>
                    {/foreach}
                </tbody>
            </table>
        </div>
    </div>

</div>