(function($) {
  var formulario = document.getElementById("form1");
  config = [
    {
      url: _root_ + "DptoCentroDeComputo/registro/getDependencia",
      elem: document.getElementById("cp_dependencia")
    },
    {
      url: _root_ + "DptoCentroDeComputo/registro/getPersonal",
      elem: document.getElementById("cp_responsable")
    }
  ];
  function ajax(funcion, elem, url) {
    http_request = new XMLHttpRequest();
    http_request.onreadystatechange = function() {
      if (http_request.readyState === 4 && http_request.status === 200) {
        funcion(elem);
      }else{
          console.log("cargando...");
      }
    };

    http_request.open("POST", url, true);
    http_request.send();
  }
  var objeto = new Object();
  objeto.ajaxPeticion = ajax;
  objeto.ajaxPeticionPersona = ajax;

  objeto.ajaxPeticion(
    function(elem) {
      var obj = JSON.parse(http_request.responseText);
      for (index of obj) {
        var option = document.createElement("option");
        option.text = index.nombre;
        elem.add(option);
      }
    },
    config[0].elem,
    config[0].url
  );

  objeto.ajaxPeticionPersona(
    function(elem) {
      var obj = JSON.parse(http_request.responseText);
      for (index of obj) {
        var option = document.createElement("option");
        option.text = index.nombres_apellidos;
        elem.add(option);
      }
    },
    config[1].elem,
    config[1].url
  );
})(jQuery);
