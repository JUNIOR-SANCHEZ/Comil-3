<?php 

class responsablesController extends dptocentrodecomputoController{

    private $_sql;
    public function __construct(){
        parent::__construct();
        $this->_sql = $this->loadModel('responsables');
    }
    public function index(){
        $this->_view->assign('_responsables',$this->_sql->getResponsables());
        if($this->getInt('guardar') == 1){
            $response = $this->_sql->addResponsables      (
                $this->getText("cp_nombres"),
                $this->getText("cp_apellidos"),
                $this->getText("cp_dependencia"),
                $this->getText("cp_cargo")
            );
            if(!$response){
                $this->_view->assign('_error','Hubo un error al ingresar el registro');
                $this->_view->renderizar("index","dptoCentroDeComputo");
                exit;
            }
            $this->_view->assign('_responsables',$this->_sql->getResponsables());
            $this->_view->assign('_mensaje','Su registro corectamente');
            $this->_view->renderizar("index","dptoCentroDeComputo");
            exit;
        }

        $this->_view->renderizar("index","dptoCentroDeComputo");
    }

    public function addResponables(){
        echo json_encode();
        // echo json_encode($this->getText("cp_dependencia"));
    }
}