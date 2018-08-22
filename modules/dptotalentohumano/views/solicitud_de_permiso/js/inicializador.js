function Permisos(){
    this.consultaPersona = function(_data){
        $.ajax({
            url:_root_+_data.url,
            // data:_data.data,
            type:"POST",
            dataType:"json",
            success:function(response){
                $(response).each(function(index,elem){
                    _data.retorno(elem);
                });
            },
            error:function(){
                alert("ha ocurrido un error");
            }

        });
    }
}

permiso = new Permisos();

$('#th_btn_lista_persona').on('click',function(){

    permiso.consultaPersona({
        url:"DptoTalentoHumano/solicitud_de_permiso/datosPersonas",
        retorno:function(elem){
            console.log(elem);
        }
    });
    console.log("hola");
    

});