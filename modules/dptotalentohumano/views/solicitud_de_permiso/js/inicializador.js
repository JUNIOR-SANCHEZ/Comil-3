function Permisos() {
  this.envioAjax = function(_data) {
    $.ajax({
      url: _root_ + _data.url,
      data: _data.data,
      type: "POST",
      dataType: "json",
      success: function(response) {
        _data.retorno(response);
      },
      error: function(jqXHR, status, error) {
        console.log(jqXHR);
        console.log(status);
        console.log(error);
      }
    });
  };
  this.paginacion = function(data) {
    var pagina = data.pagina;
    $.post(_root_ + data.url, pagina, function(response) {
      $(data.elem).html("");
      $(data.elem).html(response);
    });
  };
}

permiso = new Permisos();

$(document).ready(function() {


  $(".pagina").on("click", function() {
    var paginaNum = "pagina=" + $(this).attr("pagina");
    permiso.paginacion({
      url: "DptoTalentoHumano/solicitud_de_permiso/datosPersonaAjax",
      elem: "#th_btn_lista_persona_contenedor",
      pagina: paginaNum
    });
  });

  // $(".pagina").live(function() {
  //   var paginaNum = "pagina=" + $(this).attr("pagina");
  //   permiso.paginacion({
  //     url: "DptoTalentoHumano/solicitud_de_permiso/datosPersonaAjax",
  //     elem: "#th_btn_lista_persona_contenedor",
  //     pagina: paginaNum
  //   });
  // });



  $(".th_dato_fila_persona").on("click", function() {
    $("#th_permiso_lista_persona_modal").modal("hide");
    $(this)
      .find(".th_nombre_persona")
      .each(function() {
        $("#th_permiso_nombres").val($(this).html());
      });
    $(this)
      .find(".th_id_persona")
      .each(function() {
        $("#th_permiso_id_persona").val($(this).html());
      });
  });



  $("#th_permiso_buscar_persona").on("keyup", function() {
    var paginaNum = { pagina: $(this).attr("pagina"), buscar: $(this).val() };
    permiso.paginacion({
      url: "DptoTalentoHumano/solicitud_de_permiso/datosPersonaAjax",
      elem: "#th_btn_lista_persona_contenedor",
      pagina: paginaNum
    });
  });



  $("#th_permiso_guardar_btn").on("click", function(e) {
    e.preventDefault();
    var elem = document.getElementById("th_permiso_form");
    form = new FormData(elem);
    $data = $("#th_permiso_form").serializeArray()
    permiso.envioAjax({
      url: 'DptoTalentoHumano/solicitud_de_permiso/agregarSolicitudPermiso/',
      data: $data,
      retorno: function(response) {
        if (response) {
          console.log("se registro con exito");
        } else {
          console.log("ha ocurrido un error");
        }
          
      }
    });
    
  });
});
