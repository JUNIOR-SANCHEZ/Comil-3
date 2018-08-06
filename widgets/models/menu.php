<?php

class menuModelWidget extends Model{
   
    private $_registry;
    private $_acl;
    
    public function __construct() {
        parent::__construct();
        $this->_registry = Registry::getInstancia();
        $this->_acl = $this->_registry->_acl;
    }
    
    public function getmenu($menu){
       $menus["sidebar"]= array(
            array(
                "id"=>"usuarios",
                "titulo"=>"Usuarios",
                "enlace"=>BASE_URL."Usuarios"
            ),
            array(
                "id"=>"acl",
                "titulo"=>"Lista de control de acceso",
                "enlace"=>BASE_URL."acl"
            )
                   
        );
       
       
       $menus["top_default"]= array(
            array(
                'id' => 'inicio',
                'titulo' => 'Inicio',
                'class'=>'icon-home',
                'enlace' => BASE_URL
            ),
           array(
                'id' => 'noticias',
                'titulo' => 'Noticias',
                'class'=>'icon-target',
                'enlace' => BASE_URL.'noticias'
            ),
           array(
                'id' => 'galeria',
                'titulo' => 'Galeria',
                'class'=>'icon-target',
                'enlace' => BASE_URL."galeria"
            )
           
        );
       
       if($this->_acl->permiso("admin_access")){
          $menus["top_default"][] = array(
                "id"=>"usuarios",
                "titulo"=>"Usuarios",
                "enlace"=>BASE_URL."Usuarios"
            );
       }
       $menus["top"][]= array(
            'id' => 'inicio',
            'titulo' => 'Inicio',
            'class'=>'icon-home',
            'enlace' => BASE_URL
        );
        return $menus[$menu];
    }
}
