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

       $menus["top"]= array(
        array(
            'id' => 'noticias',
            'titulo' => 'Noticias',
            'class'=>'icon-home',
            'enlace' => BASE_URL.'administracion/noticias'
        )
    );
   
   if($this->_acl->permiso("admin_access")){
      $menus["top"][] = array(
            "id"=>"usuarios",
            "titulo"=>"Usuarios",
            "enlace"=>BASE_URL."Usuarios"
        );
   }



   $menus["departamentos"]= array();


   if($this->_acl->permiso("admin_dptoCenCom")){
   $menus["departamentos"]= array(
    array(
        'id' => 'cphoja_vida_equipo',
        'titulo' => 'Hoja de Vida',
        'icon'=>'fa-folder',
        'sub'=>array(
            array(
                'id' => 'cpsub_nuevo',
                'titulo' => 'Nuevo',
                'enlace' => BASE_URL.'DptoCentroDeComputo/registro/'
            )
        )
            ),
            array(
                'id' => 'cpreporte',
                'titulo' => 'Reportes',
                'icon'=>'fa-folder',
                'sub'=>array(
                    array(
                        'id' => 'cpsub_reporte_hoja_vida',
                        'titulo' => 'Reporte HV CP',
                        'icon'=>'fa-folder',
                        'enlace' => BASE_URL.'noticias'
                    )
                )
            )
    );
   }
   if ($this->_acl->permiso("admin_dptoTalHum")) {
    $menus["departamentos"]= array(
        array(
            'id' => 'th_personal',
            'titulo' => 'Personal',
            'icon'=>'fa-folder',
            'sub'=>array(
                array(
                    'id' => 'thsub_nuevo',
                    'titulo' => 'Nuevo',
                    'enlace' => BASE_URL.'DptoTalentoHumano/registro/'
                )
            )
                ),
                array(
                    'id' => 'cpreporte',
                    'titulo' => 'Reportes',
                    'icon'=>'fa-folder',
                    'sub'=>array(
                        array(
                            'id' => 'cpsub_reporte_hoja_vida',
                            'titulo' => 'Reporte HV CP',
                            'icon'=>'fa-folder',
                            'enlace' => BASE_URL.'noticias'
                        )
                    )
                )
        );
       
   }
        return $menus[$menu];
    }
}
