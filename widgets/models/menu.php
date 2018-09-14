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
            ),
            array(
                'id' => 'cpsub_config',
                'titulo' => 'Responsables',
                'enlace' => BASE_URL.'DptoCentroDeComputo/Responsables/'
            ),
            array(
                'id' => 'cpsub_config',
                'titulo' => 'Otros',
                'enlace' => BASE_URL.'DptoCentroDeComputo/Otros/'
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
                    ),
                    array(
                        'id' => 'cpreporte',
                        'titulo' => 'Solicitudes',
                        'icon'=>'fa-folder',
                        'sub'=>array(
                            array(
                                'id' => 'cpsub_reporte_hoja_vida',
                                'titulo' => 'SST',
                                'icon'=>'fa-folder',
                                'enlace' => BASE_URL.'DptoCentroDeComputo/SST/'
                            ),
                            
                        )
                    )
    );
   }

   if ($this->_acl->permiso("admin_dptoTalHum")) {
    $menus["departamentos"]= array(
        array(
            'id' => 'th_persona',
            'titulo' => 'Persona',
            'icon'=>'fa-folder',
            'sub'=>array(
                array(
                    'id' => 'thsub-persona_nuevo',
                    'titulo' => 'Registro persona',
                    'enlace' => BASE_URL.'DptoTalentoHumano/registro/'
                )
            )
                ),
                array(
                    'id' => 'th_permiso',
                    'titulo' => 'Permiso',
                    'icon'=>'fa-folder',
                    'sub'=>array(
                        array(
                            'id' => 'thsub_permiso_por_dia',
                            'titulo' => 'Generar Permisos',
                            'enlace' => BASE_URL.'DptoTalentoHumano/solicitud_de_permiso/dias'
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
                            'titulo' => 'Individual',
                            'icon'=>'fa-folder',
                            'enlace' => BASE_URL.'DptoTalentoHumano/reportes/individual/'
                        ),
                        array(
                            'id' => 'cpsub_reporte_hoja_vida',
                            'titulo' => 'General',
                            'icon'=>'fa-folder',
                            'enlace' => BASE_URL.'DptoTalentoHumano/reportes/general/'
                        )
                    )
                )
        );
       
   }
        return $menus[$menu];
    }
}
