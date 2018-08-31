<div class="container">

    <form action="" class="card p-4 mb-3">
        <div class="row">
            <div class="input-group col-3  ">
                <div class="input-group-prepend ">
                    <div class="input-group-text bg-dark text-white" id="">
                        <i class="far fa-address-card"></i>
                    </div>
                </div>
                <input type="text" class="form-control" id="th_permiso_nombres">
            </div>
            <div class="input-group col-3  ">
                <div class="input-group-prepend ">
                    <div class="input-group-text bg-dark text-white" id="">
                        <i class="far fa-calendar-alt"></i>
                    </div>
                </div>
                <input type="text" class="form-control" id="th_permiso_nombres">
            </div>
            <div class="input-group col-3  ">
                <div class="input-group-prepend ">
                    <div class="input-group-text bg-dark text-white" id="">
                        <i class="far fa-calendar-alt"></i>
                    </div>
                </div>
                <input type="text" class="form-control" id="th_permiso_nombres">
            </div>
            <div class="input-group col-3  ">
                <button class="btn btn-outline-primary btn-block ">
                    <i class="fa fa-bug"> GENERAR</i>
                </button>
            </div>
        </div>
    </form>

    <div class="container-fluid ">
        <div id="pdf" style="height:600px">
            <embed src="{$_layoutParams.root}DptoTalentoHumano/reportes/reporteGeneral" class="w-100 h-100">
        </div>
    </div>

</div>