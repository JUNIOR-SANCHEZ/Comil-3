<?php
class noticiasController extends Controller
{
    public function __construct(){
        parent::__construct();
    }

    public function index(){
        $this->_view->assign("titulo","Noticias");
        $this->_view->renderizar('index',"noticias");
    }
}