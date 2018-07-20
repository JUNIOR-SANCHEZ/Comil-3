<?php

class loginController extends Controller {
    private $_login;
    public function __construct() {
        parent::__construct();
        $this->_login = $this->loadModel('login');
    }

    public function index() {
        // ARCHIVOS ADJUNTOS
        $this->_view->setJsPlugin(array("validate"));
        $this->_view->setJs(array("validacionLogin"));   
        $this->_view->setCss(array("login"));

        if (Session::get("autenticado")) $this->redireccionar();
        $this->_view->assign("titulo","Login");
        if ($this->getInt('enviar') == 1) {
            $this->_view->assign("datos",$_POST);
            if(!$this->getAlphaNum('user')){
                 $this->_view->assign("_error","Escriba el nombre de usuario");
                $this->_view->renderizar('index', 'login');
                exit;
            }
            if(!$this->getSql('password')){
                 $this->_view->assign("_error","Escriba una contraseña");
                 $this->_view->renderizar('index', 'login');
                exit;
            }
            $row = $this->_login->getUser(
                    $this->getAlphaNum('user'),
                    $this->getSql('password')
                    );
            
            if(!$row){
                $this->_view->assign("_error","Usuario y/o contraseña incorrecta");
                 $this->_view->renderizar('index', 'login');
                exit;
            }
            $this->_view->datos="Session";
            Session::set('autenticado', true);
            Session::set('level', $row['role']);
            Session::set("id", $row["id"]);
            Session::set('usuario', $row['usuario']);
            Session::set('tiempo', time());
            
            $this->redireccionar();
        }
        $this->_view->renderizar('index', 'login');
    }


    public function cerrar() {
        Session::destroy();
        $this->redireccionar();
    }

}
