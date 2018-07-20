<?php

class indexController extends Controller {


    public function __construct() {
        parent::__construct();
    }

    public function index() {

        $this->_view->setCss(array("index"));
        // REDIRECCION Y TITULO DE LA PAGINA PRINCIPAL
        $this->_view->assign("titulo","Comil-3");
        $this->_view->renderizar('index',"index");
    }

}
