function firstLetterUppercase(str) {
  return str.charAt(0).toUpperCase() + str.slice(1);
}
/*
 * Variables de objtos del DOM
 */
var th_per_genero = $("#th_per_genero"),
  th_per_tipo_sangre = $('#th_per_tipo_sangre'),
  th_per_estado_civil = $('#th_per_estado_civil'),
  th_pers_cargo = $("#th_per_cargo");
(function () {
  /*
   *   Llena el select Genero
   */
  $.ajax({
    url: _root_ + "DptoTalentoHumano/registro/obtenerGenero",
    type: "POST",
    dataType: "json",
    success: function (response) {
      $(response).each(function (index, elem) {
        th_per_genero.append(`<option va>${firstLetterUppercase(elem.genero.toLowerCase())}</option>`);
      });
    },
    error: function () {
      console.log("Ha ocurrido un error");

    }
  });
  /*
   * Llena el select de tipo de sangre
   */
  $.ajax({
    url: _root_ + "DptoTalentoHumano/registro/obtenerTipoSangre",
    type: "POST",
    dataType: "json",
    success: function (response) {
      $(response).each(function (index, elem) {
        th_per_tipo_sangre.append(`<option>${elem.tipo_sangre}</option>`);
      });
    },
    error: function () {
      console.log("Ha ocurrido un error");

    }
  });
  /*
   * Llenar select Estado civil de la persona
   */
  $.ajax({
    url: _root_ + "DptoTalentoHumano/registro/obtenerEstadoCivil",
    type: "POST",
    dataType: "json",
    success: function (response) {
      $(response).each(function (index, elem) {
        th_per_estado_civil.append(`<option>${firstLetterUppercase(elem.estado_civil.toLowerCase())}</option>`)
      });
    },
    error: function () {
      console.log("ha ocurrido un error");

    }
  });
  /*
   * Llenar select Cargo o funcion de la persona
   */
  $.ajax({
    url: _root_ + "DptoTalentoHumano/registro/obtenerCargo",
    type: "POST",
    dataType: "json",
    success: function (response) {
      $(response).each(function (index, elem) {
        th_pers_cargo.append(`<option>${elem.cargo_funcion}`);
      });
    },
    error: function () {
      console.log("Ha ocurrido un error");

    }
  });
})();