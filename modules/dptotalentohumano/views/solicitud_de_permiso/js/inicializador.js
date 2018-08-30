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
  /**
   * cambiar input
   */
  $("#th_permiso_hora").on("change", function() {
    $("#remove")
      .children()
      .remove();
    $("#remove").append(
      `
      <div class="input-group-prepend ">
        <div class="input-group-text bg-dark text-white" id="">
          <i class="fa fa-calendar-alt"></i>
        </div>
      </div>
      <input type="time" class="form-control" name="th_permiso_num_h_s" min="1">
      <input type="time" class="form-control" name="th_permiso_num_h_e" min="1">
      `
    );
  });
  $("#th_permiso_dia").on("change", function() {
    $("#remove")
      .children()
      .remove();
    $("#remove").append(
      `
        <div class="input-group-prepend ">
          <div class="input-group-text bg-dark text-white" id="">
            <i class="fa fa-calendar-alt"></i>
          </div>
        </div>
        <input type="number" class="form-control" name="th_permiso_num_d" min="1">
        
        
        `
    );
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
          alert("se registro con exito");
        } else {
          alert("ha ocurrido un error");
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
