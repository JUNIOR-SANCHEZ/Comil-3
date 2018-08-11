(function ($) {
    var formulario = document.getElementById("form1");
    var x = document.getElementById("cp_dependencia");
    var ruta = _root_ + "DptoCentroDeComputo/registro/getDependencia";

   Ajax(ruta,x);
   
    function Ajax(url,elm){
        fetch(url, {
                method: "POST"
            })
            .then(response => response.json())
            .then(data => {
                for (index of data) {
                    var option = document.createElement("option");
                    option.text = index.nombre;
                    elm.add(option);
                }
            })
        }
})(jQuery);