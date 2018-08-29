$(document).ready(function(){
    var pdf = function(dato) {
        $.post(
          _root_ + "DptoTalentoHumano/reportes/persmisoReporte",
          "id="+dato,
          function(response) {
            $("#pdf").html("");
            $("#pdf").html(response);
          }
        );
      };
    $('a.embed').on('click',function(e){
        e.preventDefault();
        var id = $(this).attr("data-num")
        $("#pdf").children().attr("src", _root_ + "DptoTalentoHumano/reportes/persmisoReporte/"+id);
        $('#exampleModalLong').modal('hide')
    });

});