<?php

class menuWidget extends Widget{
    
    private $modelo;
    public function __construct() {
        $this->modelo= $this->loadModel("menu");
    }

    public function getMenu($menu,$view,$invers = null){
        $data["menu"]= $this->modelo->getMenu($menu);
        $data["invers"]=$invers;
        return $this->render($view,$data);
    }
    
    public function getConfigs($menu){

        //CONFIGURACION DE MENU QUE SE MUESTRA EN TODA LA APLICACION 
        $menus["top"] = array(
            "position"=>"top",
            "show"=>"all",
           "hide"=>array("index","registro","login")
        );

        //OTROS MENUS NO ESTA EN USO
        $menus["sidebar"] = array(
            "position"=>"sidebar",
            "show"=>array("acl","test","tarjetas","usuarios"),
           "hide"=>array("index"),
        );
        $menus["top_default"] = array(
            "position"=>"top_default",
            "show"=>"all",
           "hide"=>array("index","registro"),
        );
        return $menus[$menu];
    }
}