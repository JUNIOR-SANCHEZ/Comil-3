<?php

class sstController extends dptocentrodecomputoController{

    public function __construct(){
        parent::__construct();
    }

    public function index(){
        $this->_view->renderizar('nuevo','dptoCentroDeComputo');
    }

}