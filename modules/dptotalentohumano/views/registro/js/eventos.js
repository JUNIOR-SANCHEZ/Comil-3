// var th_datos_conyuge = document.getElementById("th_datos_conyuge");
// th_datos_conyuge.addEventListener("change", event => {
//   if (event.target.checked) {
//     console.log("Activo");
//   } else {
//     console.log("Inactivo");
//   }
// });
  var btnNewCargo = $("#th_per_cargo_btn");
  var contentModal = $("div.modal.fade");
  var btnmodal = $("#btnModal");
  var atributo = btnNewCargo.attr("data-target");
  atributo = atributo.substr(1, atributo.length);

  btnNewCargo.on("click", function (e) {
    e.preventDefault();
    contentModal.attr('id', atributo);
  });

  btnmodal.on("click", function () {
    var attr_url = btnNewCargo.attr("data-url");
    addCargo(attr_url)
    $(`#${atributo}`).modal('hide');
    $.ajax({
      url: _root_ + "DptoTalentoHumano/registro/obtenerCargo",
      type: "POST",
      dataType: "json",
      success: function (response) {
        $("option.clear").remove();
        $(response).each(function (index, elem) {
          th_pers_cargo.append(`<option class="clear">${elem.cargo_funcion}</option>`);
        });
      },
      error: function () {
        console.log("Ha ocurrido un error");
      }
    });
  })

  function addCargo(ruta) {
    var data_add = $("#data-add").val();
    $.ajax({
      url: _root_ + ruta,
      type: "POST",
      dataType: "json",
      data: {
        dato: data_add
      },
      success: function (response) {
        if (response) {
          alert("Se ingreso con exito");
        } else {
          alert("Ha ocurrido un error");
        }
      },
      error: function () {
        console.log("Ha ocurrido un error");
      }
    });
  }
