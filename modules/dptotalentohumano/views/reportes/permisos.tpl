<div class="container">
    <div class="card p-2">
        <div class="card-body">
            <div class="table-responsive ">
                <table class="table table-hover table-bordered">
                    <thead>
                        <tr>
                            <th scope="col">FECHA DE REGISTRO</th>
                            <th scope="col">NOMBRES COMPLETOS</th>
                            <th scope="col">SALIDA DE LA PERSONA</th>
                            <th scope="col">INGRESO DE LA PERSONA</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        {foreach item=list from=$lista}
                        <tr>
                            <td>{$list.fecha}</td>
                            <td>{$list.nombres}</td>
                            <td>{$list.salida}</td>
                            <td>{$list.ingreso}</td>
                            <td class="text-center">
                                <a target="_blank" href="{$_layoutParams.root}DptoTalentoHumano/reportes/persmisoReporte/{$list.id}" class="btn btn-outline-info btn-sm">
                                    <i class="fa fa-clipboard"></i> Reporte</a>
                            </td>
                        </tr>
                        {/foreach}
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>