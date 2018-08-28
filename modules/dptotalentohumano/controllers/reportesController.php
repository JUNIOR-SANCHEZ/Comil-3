<?php

class reportesController extends dptotalentohumanoController
{
    private $_solicitud;

    public function __construct(){
        parent::__construct();
        $this->_solicitud = $this->loadModel('reportes');
    }
    public function index(){

    }
    public function permisos(){

        $this->_view->assign('lista',$this->_solicitud->listaReportes());
        $this->_view->renderizar('permisos','dptoTalentoHumano');
    }

    public function persmisoReporte($id){
        $pdf = new FPDF('P','mm','A5');
        $pdf->AddPage();
        $pdf->SetFont('Times','',14);
        $pdf->Cell(128,5,utf8_decode('FUERZA TERRESTRE '),0,0,'C');
        $pdf->Ln();
        $pdf->Cell(128,5,utf8_decode('UNIDAD EDUCATIVA DE FUERZAS ARMADAS'),0,0,'C');
        $pdf->Output();
    }

}