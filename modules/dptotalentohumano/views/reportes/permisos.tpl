<div class="container mb-4">
    <div class="row">
        <div class="col-12">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
                Lista de personal
            </button>
        </div>
    </div>
</div>

<div class="container-fluid ">
    <div id="pdf" style="height:600px">
        <embed src="" class="w-100 h-100">
    </div>
</div>


<div class="container">
    <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-12">
                            <div class="card p-2">
                                <div class="card-body">
                                    <div class="table-responsive ">
                                        <table class="table table-hover table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th scope="col">CEDULA</th>
                                                    <th scope="col">NOMBRES COMPLETOS</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                {$con=1} {foreach item=list from=$lista}
                                                <tr>
                                                    <td>{$con}</td>
                                                    <td>{$list.cedula}</td>
                                                    <td>{$list.nombres}</td>
                                                    <td class="text-center">
                                                        <a target="_blank" data-num="{$list.id_p}" class="btn btn-outline-info btn-sm embed">
                                                            <i class="fa fa-clipboard"></i> Reporte</a>
                                                    </td>
                                                </tr>
                                                {$con=$con+1} {/foreach}
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>





</div>