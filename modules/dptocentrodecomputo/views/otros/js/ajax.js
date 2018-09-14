$(document).ready(function() {
  marcasView("marca-procesador", { view: 1, tabla: "processor" });
  marcasView("marca-disco", { view: 1, tabla: "disk" });
  marcasView("marca-pc", { view: 1, tabla: "pc" });
  /**
   * LLENAR MARCAS SELECT
   */
  function marcasView(elem, json) {
    $.post(
      _root_ + "DptoCentroDeComputo/Otros/viewMarcas",
      json,
      function(response) {
        $(response).each(function(index, value) {
          $("#" + elem).append(
            `<option value="${value["id_marca"]}">${value["marca"]}</option>`
          );
        });
      },
      "json"
    );
  }
  /**
   * Registro de formularios
   */
  function formPost(url, data, form) {
    $.post(url, data, function(response) {
      $(this).find(".mensaje-marca").html(`
        <div class="alert alert-warning alert-dismissible fade show" role="alert" >
            <strong>${response}</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
            </button>
        </div>
      `);
      form[0].reset();
    });
  }

  /*
   *  Registrar Marcas
   */
  $("#form-marcas").on("submit", function(e) {
    e.preventDefault();
    var url = $(this).attr("action");
    var data = $(this).serialize();
    var form = $(this);

    $.post(url, data, function(response) {
      $(this).find(".mensaje-marca").html(`
        <div class="alert alert-warning alert-dismissible fade show" role="alert" >
            <strong>${response}</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
            </button>
        </div>
      `);
      form[0].reset();
    });
  });
  /**
   *  REGISTRO PROCESADOR
   */
  $("#form-procesor").on("submit", function(e) {
    e.preventDefault();
    var url = $(this).attr("action");
    var data = $(this).serialize();
    var form = $(this);
    console.log(data);
    $.post(url, data, function(response) {
      console.log(response);

      $(this).find(".mensaje-marca").html(`
        <div class="alert alert-warning alert-dismissible fade show" role="alert" >
            <strong>${response}</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>
      `);
      form[0].reset();
    });
  });
  $("#form-pc").on("submit", function(e) {
    e.preventDefault();
    formPost($(this).attr("action"), $(this).serialize(), $(this));
  });
});
