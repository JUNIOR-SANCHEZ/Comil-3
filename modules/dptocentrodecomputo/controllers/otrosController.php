<?php

class otrosController extends dptocentrodecomputoController{

    private $_sql;
    public function __construct(){
        parent::__construct();
        $this->_sql = $this->loadModel('otros');
    }
    public function index(){
        $this->_view->setJs(array('ajax'));
        $this->_view->renderizar('index','dptoCentroDeComputo');
    }
    public function nueva_marcas(){
        if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'){
            
            if($this->getInt('guardar')){
                $response = false;
                switch($this->getText('dispositivo'))
                {
                    case 'processor':
                    $response = $this->_sql->addMarcas($this->getText('marca'),"marcas_procesador");
                    break;
                    case 'disk':
                    $response = $this->_sql->addMarcas($this->getText('marca'),"marcas_discos");
                    break;
                    default:
                    echo "No has selecionado";
                    exit;
                    break;
                }
                $response = $this->_sql->addMarcas($this->getText('marca'));
                if(!$response){
                    echo "Ha ocurrido un error al guardar la marcas";
                    exit;
                }
                echo 'Su registro se agrego exitosamente';
                exit;
            }
        }else{
            throw new Exception("Error Processing Request", 1);
            
        }
    }
    public function viewMarcas(){
        if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'){
            if ($this->getInt('view') == 1) {
                switch($this->getText('tabla')){
                    case 'processor':
                    echo json_encode($this->_sql->viewMarcas("marcas_procesador"));
                    break;
                    case 'disk':
                    echo json_encode($this->_sql->viewMarcas("marcas_discos"));
                    break;
                    case 'pc':
                    echo json_encode($this->_sql->viewMarcas("marcas_pc"));
                    break;
                    default:
                    break;
                }
            }
            
        }else{
            throw new Exception("Error Processing Request", 1);
            
        }
    }
    public function nuevo_procesador(){
        if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'){
            if($this->getInt('guardar') == 1){
                $response = $this->_sql->addProcesador($this->getInt('marca'), $this->getText('modelo'),$this->getText('velocidad'));
                if(!$response){
                    echo "Ha ocurrido un error al guardar el modelo";
                    exit;
                }
                echo 'Su registro se agrego exitosamente';
                exit;
            }
        }else{
            throw new Exception("Error Processing Request", 1);
            
        }
    }

    public function nueva_pc()
    {
        if(!empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest'){
            if($this->getInt('guardar') == 1){
                $response = $this->_sql->addPc($this->getInt('nombre'),$this->getText('serie'),$this->getInt('marca'), $this->getInt('modelo'));
                if(!$response){
                    echo json_encode(array("error"=>true,"mensaje"=>"Ha ocurrido un error al guardar el modelo"));
                    exit;
                }
                echo json_encode(array("error"=>true,"mensaje"=>"Su registro se agrego exitosamente"));
                exit;
            }
        }else{
            echo json_encode(array("error"=>true,"mensaje"=>"Su registro se agrego exitosamente"));
            exit;            
        }
    }


}