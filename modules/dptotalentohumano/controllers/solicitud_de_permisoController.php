<?php

class solicitud_de_permisoController extends dptotalentohumanoController
{
    private $_datos;
    public function __construct(){
        parent::__construct();
        $this->_datos = $this->loadModel('solicitud_de_permiso');
    }
    public function index(){}
    public function dias(){
        $paginador = new Paginador();
        $this->_view->assign('personal',$paginador->paginar($this->_datos->getPersonal(),false,5));
        $this->_view->assign('paginacion',$paginador->getView('paginacion_ajax'));
        $this->_view->setJs(array('inicializador'));
        $this->_view->assign('titulo','Solicitud por dias');
        $this->_view->assign('motivos',$this->_datos->getMotivoPermiso());
        $this->_view->renderizar('dias','dptoTalentoHumano');
    }
    public function datosPersonas(){
        echo json_encode($this->_datos->getPersonal());
    }
    public function datosPersonaAjax(){
        $dato="";
        $pagina = $this->getInt('pagina');
        if ($this->getText('buscar')) {
            $dato=$this->getText('buscar');
        }
        $this->_view->setJs(array('inicializador'));
        $paginador = new Paginador();
        $this->_view->assign('personal',$paginador->paginar($this->_datos->getPersonal($dato),$pagina,5));
        $this->_view->assign('paginacion',$paginador->getView('paginacion_ajax'));
        $this->_view->renderizar('viewAjax/dias',false,true);
    }

    public function agregarSolicitudPermiso(){
            $th_permiso_num_d_h = $this->getText('th_permiso_num_d');
        if($this->getText('th_permiso_tipo_solicitud') == "h"){
            $th_permiso_num_d_h = $this->getText('th_permiso_num_h_a').'/'.$this->getText('th_permiso_num_h_d');
        }


        echo json_encode($this->_datos->addSolicitudPermiso(
            $this->getText('th_permiso_fecha_permiso'),
            $th_permiso_num_d_h,
            $this->getInt('th_permiso_id_persona'),
            $this->getInt('th_permiso_motivo'),
            $this->getText('th_permiso_tipo_solicitud'),
            $this->getInt('th_permiso_tipo_permiso')
        ));
        
    }
}