var th_datos_conyuge = document.getElementById("th_datos_conyuge");
th_datos_conyuge.addEventListener("change", event => {
  if (event.target.checked) {
    console.log("Activo");
  } else {
    console.log("Inactivo");
  }
});