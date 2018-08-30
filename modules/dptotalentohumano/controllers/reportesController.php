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
        $this->_view->setJS(array("pdf"));
        $this->_view->assign('lista',$this->_solicitud->listaReportes());
        $this->_view->renderizar('permisos','dptoTalentoHumano');
    }

    public function persmisoReporte($id){
        $fecha = $this->_solicitud->listaReportesIdFecha($id);
        $hora = $this->_solicitud->listaReportesIdHora($id);
        $tipoPermiso="";
        $tipoSolicitud = "";
        
        
        $pdf = new FPDF('P','mm','A5');
        $pdf->AddPage();
        $this->headerpersmisoReporte($pdf);
        $pdf->SetFont('Times','B',8);
        $pdf->cell(48,3,utf8_decode('APELLIDOS Y NOMBRES:'),0,0,'R');
        $pdf->SetTextColor(0, 0, 0);
        $pdf->cell(80,3,utf8_decode(strtoupper($fecha[0]['nombres'])),0,0,'C',false);
        $pdf->Ln(8);
        $this->bodypersmisoReporte($pdf,$fecha,"registro por dias");
        $pdf->Ln(5);
        $this->bodypersmisoReporte($pdf,$hora,"registro por horas");

        
        $pdf->Ln();
       
        $pdf->Output();
    }
    private function headerpersmisoReporte(FPDF $pdf){
        $pdf->SetFont('Times','',10);
        $pdf->SetTextColor(0, 0, 128);
        $pdf->Image(BASE_URL.'public/img/images/escudo.png',60,5,25,25);
        $pdf->Cell(128,21,utf8_decode(''),0,0,'C');
        $pdf->Ln();
        $pdf->Cell(128,3,utf8_decode('FUERZA TERRESTRE '),0,0,'C');
        $pdf->Ln();
        $pdf->Cell(128,3,utf8_decode('UNIDAD EDUCATIVA DE FUERZAS ARMADAS'),0,0,'C');
        $pdf->Ln();
        $pdf->cell(128,3,utf8_decode('COLEGIO MILITAR HEROES Nº3 "HEROES DEL 41"'),0,0,'C');
        $pdf->Ln(10);
        $pdf->SetFont('Times','b',9);
        $pdf->cell(128,3,utf8_decode('SOLICITUD DE PERMISO POR DÍAS'),0,0,'C');
        $pdf->Ln();
        $pdf->SetFont('Times','B',10);
        $pdf->cell(128,3,utf8_decode('PERSONAL, DOCENTE, ADMINISTRATIVO Y SERVICIO'),0,0,'C');
        $pdf->Ln(10);
    }
    private function bodypersmisoReporte(FPDF $pdf,$res,$title){
        
       
        $pdf->SetTextColor(0, 0, 128);
        $pdf->SetFont('Times','B',10);
        $pdf->Cell(128,3,utf8_decode(strtoupper($title)),0,0,'L');
        $pdf->Ln(5);
        $pdf->SetTextColor(0, 0, 128);
        $pdf->SetFont('Times','B',8);
        $pdf->cell(12,5,utf8_decode('AÑO'),1,0,'C');
        $pdf->cell(12,5,utf8_decode('MES'),1,0,'C');
        $pdf->cell(12,5,utf8_decode('DIA'),1,0,'C');
        $pdf->cell(40,5,utf8_decode('MOTIVO'),1,0,'C');
        $pdf->cell(25,5,utf8_decode('TIPO PERMISO'),1,0,'C');
        $pdf->cell(25,5,utf8_decode('Nº'),1,0,'C');
        $pdf->Ln();
        
        $pdf->SetTextColor(0, 0, 0);
        foreach($res as $list){
        list($anio,$mes,$dia) = preg_split('/[-^\/]/i',$list['fecha'],-1,PREG_SPLIT_NO_EMPTY );
        $pdf->cell(12,10,utf8_decode($anio),'LRB',0,'C');
        $pdf->cell(12,10,utf8_decode($mes),'LRB',0,'C');
        $pdf->cell(12,10,utf8_decode($dia),'LRB',0,'C');
        $pdf->cell(40,10,utf8_decode(strtoupper($list['motivo'])),'LRB',0,'C');
        $pdf->cell(25,10,utf8_decode(strtoupper($list['tipo_permiso'])),'LRB',0,'C');
        if (isset($list['numero'])) {
            $pdf->cell(25,10,utf8_decode(strtoupper($list['numero'])),'LRB',0,'C');
        } else if (isset($list['hora_salida']) AND isset($list['hora_entrada']) ){
            $pdf->cell(25,10,utf8_decode(strtoupper($list['hora_salida']).'-'.$list['hora_entrada']),'LRB',0,'C');
        }
        
       

        $pdf->Ln();
        }
    }

}