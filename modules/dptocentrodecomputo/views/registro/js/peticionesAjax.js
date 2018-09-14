(function($) {
  $("#btn-responsables-view").on("click", function() {
    $("#modal_responsables_view").modal("hide");
  });
  $(".id-resp").on("click", function() {
    var id = $(this).attr("data-id");
    alert(id);
  });
  $("#form-responsable").on("submit", function(e) {
    e.preventDefault();
    var form = $(this);
    var _data = $(this).serialize();
    var _url = $(this).attr("action");
    var _method = $(this).attr("method");

    $.ajax({
      url: _url,
      method: _method,
      dataType: "json",
      data: _data,
      success: function(response) {
        if (response) {
          alert("se registro correctamente");
          $(form)
            .find("input[type=text]")
            .val("");
          $("#modal_responsables").modal("hide");
        } else {
          alert("Ha ocurrido un error");
        }
      }
    });
  });
})(jQuery);
