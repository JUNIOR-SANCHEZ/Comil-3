$(document).ready(function() {
  /**
   * Funcion paginacion
   */
  var paginacion = function(dato) {
    $.post(
      _root_ + "DptoTalentoHumano/solicitud_de_permiso/datosPersonaAjax",
      dato,
      function(response) {
        $("#th_btn_lista_persona_contenedor").html("");
        $("#th_btn_lista_persona_contenedor").html(response);
      }
    );
  };
  $("#th_permiso_hora").on("change", function() {
    $("input.fecha").removeAttr("type");
    $("input.fecha").prop("type", "time");
  });
  $("#th_permiso_dia").on("change", function() {
    $("input.fecha").removeAttr("type");
    $("input.fecha").prop("type", "date");
  });
  /**
   * funcion buscar
   */
  var buscar = function(dato) {
    $.post(
      _root_ + "DptoTalentoHumano/solicitud_de_permiso/datosPersonaAjax",
      dato,
      function(response) {
        $("#th_btn_lista_persona_contenedor").html("");
        $("#th_btn_lista_persona_contenedor").html(response);
      }
    );
  };
  /**
   * Busqueda con input[type=text]
   */
  $("#th_permiso_buscar_persona").on("keyup", function() {
    var dato = "buscar=" + $(this).val();
    buscar(dato);
  });
  /**
   * Paginador
   */

  $(document).delegate(".pagina", "click", function() {
    var pag = "pagina=" + $(this).attr("pagina");
    paginacion(pag);
  });
  /**
   * Seleccionar fila de la tabla
   */
  $(document).delegate(".th_dato_fila_persona", "click", function() {
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
  /**
   * Guardar registro
   */
  $("#th_permiso_guardar_btn").on("click", function(e) {
    e.preventDefault();
    dato = $("#th_permiso_form").serializeArray();
    $.ajax({
      url:
        _root_ +
        "DptoTalentoHumano/solicitud_de_permiso/agregarSolicitudPermiso/",
      data: dato,
      type: "POST",
      dataType: "json",
      success: function(response) {
        if (response) {
          console.log("se registro con exito");
        } else {
          console.log("ha ocurrido un error");
        }
      },
      error: function(jqXHR, status, error) {
        console.log(jqXHR);
        console.log(status);
        console.log(error);
      }
    });
  });
});
