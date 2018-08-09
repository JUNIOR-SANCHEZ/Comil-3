<?php
class navWidget extends Widget{
    private $_registry;
    private $_controlador;
    public function __construct() {
        $this->_registry = Registry::getInstancia();
        $this->_controlador = $this->_registry->_request;
    }
    public function getNav($menu,$view,$invers = null){
        $data["menu"]=$menu;
        $data["controlador"]= $this->_controlador->getModulo();
        return $this->render($view,$data);
    }
    public function getConfigs($menu){
        $nav["nav"] = array(
            "position"=>"nav",
            "show"=>"all",
            "hide"=>array()
        );
        return $nav[$menu];
    }
}
