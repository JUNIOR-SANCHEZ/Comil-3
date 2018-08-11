<?php

class registroController extends dptocentrodecomputoController
{
    private $_registro;
    public function __construct()
    {
        parent::__construct();
        $this->_registro = $this->loadModel("registro");
    }
    public function index(){
        $this->_view->setJS(array("peticionesAjax"));
        $this->_view->assign("titulo","hoja de vida");
        $this->_view->renderizar("index","dptoCentroDeComputo");
    }



    //AJAX - FUNCIONES QUE DEVOLVERAN UN JSON

    public function getDependencia(){
        $dato = $this->_registro->getDependencia();
        echo json_encode($dato);
    }
}