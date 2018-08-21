function firstLetterUppercase(str) {
  return str.charAt(0).toUpperCase() + str.slice(1);
}
/*
 * Variables de objtos del DOM
 */
// var th_per_genero = $("#th_per_genero");

(function() {
  /**
   * Clase Peticion
   */
  function Peticion() {
    var th_per_genero = $("#th_per_genero");
    var th_per_tipo_sangre = $("#th_per_tipo_sangre");
    var th_per_estado_civil = $("#th_per_estado_civil");
    var th_pers_cargo = $("#th_per_cargo");
    /*
     *   Llena el select Genero
     */
    this.obtenerGenero = function() {
      $.ajax({
        url: _root_ + "DptoTalentoHumano/registro/obtenerGenero",
        type: "POST",
        dataType: "json",
        success: function(response) {
          $("option.th_per_genero").remove();
          $(response).each(function(index, elem) {
            th_per_genero.append(
              `<option class="th_per_genero" value="${
                elem.id_generos
              }">${firstLetterUppercase(elem.genero.toLowerCase())}</option>`
            );
          });
        },
        error: function() {
          console.log("Ha ocurrido un error");
        }
      });
    };
    /*
     * Llena el select de tipo de sangre
     */
    this.otenertTipoSanger = function() {
      $.ajax({
        url: _root_ + "DptoTalentoHumano/registro/obtenerTipoSangre",
        type: "POST",
        dataType: "json",
        success: function(response) {
          $(response).each(function(index, elem) {
            th_per_tipo_sangre.append(
              `<option value="${elem.id_tipos_sangre}">${
                elem.tipo_sangre
              }</option>`
            );
          });
        },
        error: function() {
          console.log("Ha ocurrido un error");
        }
      });
    };
    /*
     * Llenar select Estado civil de la persona
     */
    this.obtenerEstadoCivil = function() {
      $.ajax({
        url: _root_ + "DptoTalentoHumano/registro/obtenerEstadoCivil",
        type: "POST",
        dataType: "json",
        success: function(response) {
          $("option.th_per_estado_civil");
          $(response).each(function(index, elem) {
            th_per_estado_civil.append(
              `<option class="th_per_estado_civil" value="${
                elem.id_estados_civiles
              }">${firstLetterUppercase(
                elem.estado_civil.toLowerCase()
              )}</option>`
            );
          });
        },
        error: function() {
          console.log("ha ocurrido un error");
        }
      });
    };
    /*
     * Llenar select Cargo o funcion de la persona
     */
    this.obtenerCargo = function() {
      $.ajax({
        url: _root_ + "DptoTalentoHumano/registro/obtenerCargo",
        type: "POST",
        dataType: "json",
        success: function(response) {
          $("option.th_pers_cargo").remove();
          $(response).each(function(index, elem) {
            th_pers_cargo.append(
              `<option class="th_pers_cargo" value="${
                elem.id_cargos_funciones_personal
              }">${elem.cargo_funcion}</option>`
            );
          });
        },
        error: function() {
          console.log("Ha ocurrido un error");
        }
      });
    };
    /**
     * Agragar nuevo datos
     */
    this.agregarDatos = function(_data, _url, elem) {
      $.ajax({
        data: _data,
        type: "POST",
        dataType: "json",
        url: _root_ + _url,
        success: function(response) {
          if (response) {
            $(`#${elem}`).modal("hide");
            alert("se ingreso corectamente");
          } else {
            alert("Ha ocurrido un error");
          }
        },
        error: function() {
          alert("Ha ocurrido un error");
        }
      });
    };
    /**
     *  Agregar nuevo dato y obtener datos
     */
    this.agregarDatosYObtener = function(_url, _data) {
      $.ajax({
        url: _root_ + _url,
        data: _data,
        type: "POST",
        dataType: "json",
        success: function(response) {
          if (response) {
            alert("Se registro con exito");
          } else {
            console.log("¡Ha ocurrido un error!");
          }
        },
        erro: function() {
          alert("¡Ha ocurrido un error!");
        }
      });
    };
    /*
     * Funcione que se ejecutan al instanciar la clase
     */
    this.obtenerGenero();
    this.otenertTipoSanger();
    this.obtenerEstadoCivil();
    this.obtenerCargo();
  }

  function Efectos(){
    this.activarDesactivar = function(data){
      var check = data.bool;
      var activar = $(data.elem);
       if (check) {
         activar.prop("disabled",false);
       } else {
        activar.prop("disabled",true);
       }
    }
    
  }

  var peticion1 = new Peticion();
  var efectos =new Efectos();
  $("#th_per_cargo_add").on("click", function() {
    var th_per_cargo_data = $("#th_per_cargo_data").val();
    var url = "DptoTalentoHumano/registro/agregarCargo";

    peticion1.agregarDatos(
      { dato: th_per_cargo_data },
      url,
      "th_per_cargo_modal"
    );
    peticion1.obtenerCargo();
  });

  $("#th_per_agregar").on("click", function() {
    var th_form_persona = $("#th_form_persona");
    var url = "DptoTalentoHumano/registro/agregarPersonal";
    var data = th_form_persona.serializeArray();
    peticion1.agregarDatosYObtener(url, data);
  });

  $("#th_datos_hijos_toggle").on("change",function(){
    var check = this.checked;
    efectos.activarDesactivar({bool:check,elem:"form#th_form_hijo input"});
  });
  $("#th_datos_conyuge_toggle").on("change",function(){
    var check = this.checked;
    efectos.activarDesactivar({bool:check,elem:"form#th_form_conyuge input"});
  })
 
})();
