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
        $res = $this->_solicitud->listaReportesId($id);
        $tipoPermiso="";
        $tipoSolicitud = "";
        ($res['tipo_s'] == "d")? $tipoPermiso="DIAS PERMISO" : $tipoPermiso="HORAS PERMISO";
        list($anio,$mes,$dia) = preg_split('/[-^\/]/i','2018/08/29',-1,PREG_SPLIT_NO_EMPTY );
        ($res['tipo_p'] == 0 )? $tipoSolicitud="IMPUTABLE" : $tipoSolicitud="NO IMPUTABLE";
        $pdf = new FPDF('P','mm','A5');
        $pdf->AddPage();
        $this->headerpersmisoReporte($pdf);
        $pdf->SetFont('Times','B',8);
        $pdf->cell(48,3,utf8_decode('APELLIDOS Y NOMBRES:'),0,0,'R');
        $pdf->SetTextColor(0, 0, 0);
        $pdf->cell(80,3,utf8_decode(strtoupper($res['nombres'])),0,0,'C',false);
        $pdf->Ln(5);
        $pdf->SetTextColor(0, 0, 128);
        $pdf->cell(22,5,utf8_decode('AÑO'),1,0,'C');
        $pdf->cell(22,5,utf8_decode('MES'),1,0,'C');
        $pdf->cell(22,5,utf8_decode('DIA'),1,0,'C');
        $pdf->cell(62,5,utf8_decode($tipoPermiso),1,0,'C');
        $pdf->Ln();
        $pdf->SetTextColor(0, 0, 0);

        $pdf->cell(22,10,utf8_decode($anio),'LRB',0,'C');
        $pdf->cell(22,10,utf8_decode($mes),'LRB',0,'C');
        $pdf->cell(22,10,utf8_decode($dia),'LRB',0,'C');
        $pdf->cell(62,10,utf8_decode($res['num_h_d']),'LRB',0,'C');
        $pdf->Ln(15);

        $pdf->SetTextColor(0, 0, 128);
        $pdf->cell(35,5,utf8_decode('MOTIVO DE LA SALIDA:'),0,0,'L');
        $pdf->SetTextColor(0, 0, 0);
        $pdf->cell(30,5,utf8_decode(strtoupper($res['motivo'])),0,0,'L');
        $pdf->SetTextColor(0, 0, 128);
        $pdf->cell(63,5,$tipoSolicitud,0,0,'C');
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
    private function bodypersmisoReporte(FPDF $pdf){
        
    }

}