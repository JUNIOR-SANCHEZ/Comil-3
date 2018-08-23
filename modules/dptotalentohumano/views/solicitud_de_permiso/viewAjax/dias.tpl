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