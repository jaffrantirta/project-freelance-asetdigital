<?php
defined('BASEPATH') OR exit('No direct script access allowed');
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
class Datatable extends CI_Controller {
	public function __construct()
    {
		parent::__construct();
		$this->load->helper('url');
		$this->load->model('api_model');
		$this->load->library('Ssp');
		$this->load->library('mailer');
		$this->load->library('pdf');
		$this->load->library('pdf2');
        $this->load->library('email_template');
        $this->load->helper('string');
	}
    public function index()
    {
        echo '404 - Not Found';
    }
    public function get_order_pin_register($id)
    {
        $columns = array(
            array(
                'db' => 'order_number',  'dt' => 0,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'date',  'dt' => 1,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'amount',  'dt' => 2,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'total_payment',  'dt' => 3,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'currency',  'dt' => 4,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'id',  'dt' => 5,
                'formatter' => function($d, $row){
                    $link = base_url('customer/pin?action=order_detail&id='.$d);
                    return '
                    <center>
                        <a href="'.$link.'">
                            <i title="detail" class="fa fa-edit"></i>
                        </a>
                    </center>
                    ';
                }
            ),
          );
          $ssptable='orders';
          $sspprimary='id';
          $sspjoin='';
          $sspwhere='orders.order_number LIKE "%PR%" AND orders.requested_by = '.$id;
          $go=SSP::simpleCustom($_GET,$this->datatable_config(),$ssptable,$sspprimary,$columns,$sspwhere,$sspjoin);
          echo json_encode($go);
    }
    public function get_order_lisensi_register($id)
    {
        $columns = array(
            array(
                'db' => 'order_number',  'dt' => 0,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'date',  'dt' => 1,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'amount',  'dt' => 2,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'total_payment',  'dt' => 3,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'currency',  'dt' => 4,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'id',  'dt' => 5,
                'formatter' => function($d, $row){
                    $link = base_url('customer/lisensi?action=order_detail&id='.$d);
                    return '
                    <center>
                        <a href="'.$link.'">
                            <i title="detail" class="fa fa-edit"></i>
                        </a>
                    </center>
                    ';
                }
            ),
          );
          $ssptable='orders';
          $sspprimary='id';
          $sspjoin='';
          $sspwhere='orders.order_number LIKE "L%" AND orders.requested_by = '.$id;
          $go=SSP::simpleCustom($_GET,$this->datatable_config(),$ssptable,$sspprimary,$columns,$sspwhere,$sspjoin);
          echo json_encode($go);
    }
    public function get_all_order_pin_register()
    {
        $columns = array(
            array(
                'db' => 'order_number',  'dt' => 0,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'date',  'dt' => 1,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'amount',  'dt' => 2,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'total_payment',  'dt' => 3,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'currency',  'dt' => 4,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'id',  'dt' => 5,
                'formatter' => function($d, $row){
                    $link = base_url('admin/request?action=order_detail&id='.$d);
                    return '
                    <center>
                        <a href="'.$link.'">
                            <i title="detail" class="fa fa-edit"></i>
                        </a>
                    </center>
                    ';
                }
            ),
          );
          $ssptable='orders';
          $sspprimary='id';
          $sspjoin='';
          $sspwhere='orders.order_number LIKE "%PR%"';
          $go=SSP::simpleCustom($_GET,$this->datatable_config(),$ssptable,$sspprimary,$columns,$sspwhere,$sspjoin);
          echo json_encode($go);
    }
    public function get_all_order_lisensi()
    {
        $columns = array(
            array(
                'db' => 'order_number',  'dt' => 0,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'date',  'dt' => 1,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'amount',  'dt' => 2,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'total_payment',  'dt' => 3,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'currency',  'dt' => 4,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'id',  'dt' => 5,
                'formatter' => function($d, $row){
                    $link = base_url('admin/request?action=order_detail_lisensi&id='.$d);
                    return '
                    <center>
                        <a href="'.$link.'">
                            <i title="detail" class="fa fa-edit"></i>
                        </a>
                    </center>
                    ';
                }
            ),
          );
          $ssptable='orders';
          $sspprimary='id';
          $sspjoin='';
          $sspwhere='orders.order_number LIKE "%L%"';
          $go=SSP::simpleCustom($_GET,$this->datatable_config(),$ssptable,$sspprimary,$columns,$sspwhere,$sspjoin);
          echo json_encode($go);
    }
    public function get_pin($id)
    {
        $columns = array(
            array(
                'db' => 'pin',  'dt' => 0,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'registered_date',  'dt' => 1,
                'formatter' => function($d, $row){
                    $date = date_create($d);
                    return date_format($date,"l, d M Y H:m:s");
                }
            ),
            array(
                'db' => 'user_name',  'dt' => 2,
                'formatter' => function($d, $row){
                    if($d == null){
                        $result = 'UNUSED';
                    }else{
                        $result = $d;

                    }
                    return $result;
                }
            ),
            array(
                'db' => 'is_active',  'dt' => 3,
                'formatter' => function($d, $row){
                    if($d){
                        $result = '<strong style="color:green">ACTIVE</strong>';
                    }else{
                        $result = '<strong style="color:red">NOT ACTIVE</strong>';
                    }
                    return $result;
                }
            )
          );
          $ssptable='pin_register_complate_data';
          $sspprimary='id';
          $sspjoin='';
          $sspwhere='registered_by = '.$id;
          $go=SSP::simpleCustom($_GET,$this->datatable_config(),$ssptable,$sspprimary,$columns,$sspwhere,$sspjoin);
          echo json_encode($go);
    }
    public function get_lisensi($id)
    {
        $columns = array(
            array(
                'db' => 'lisensi_name',  'dt' => 0,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'date',  'dt' => 1,
                'formatter' => function($d, $row){
                    $date = date_create($d);
                    return date_format($date,"l, d M Y H:m:s");
                }
            ),
            array(
                'db' => 'is_active',  'dt' => 2,
                'formatter' => function($d, $row){
                    if($d == 0){
                        $result = 'NOT ACTIVE';
                    }else{
                        $result = 'ACTIVE';

                    }
                    return $result;
                }
            )
          );
          $ssptable='user_lisensies_complate_data';
          $sspprimary='id';
          $sspjoin='';
          $sspwhere='owner = '.$id;
          $go=SSP::simpleCustom($_GET,$this->datatable_config(),$ssptable,$sspprimary,$columns,$sspwhere,$sspjoin);
          echo json_encode($go);
    }
    public function get_transfer_history($id)
    {
        $columns = array(
            array(
                'db' => 'transfer_number',  'dt' => 0,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'date',  'dt' => 1,
                'formatter' => function($d, $row){
                    $date = date_create($d);
                    return date_format($date,"l, d M Y H:m:s");
                }
            ),
            array(
                'db' => 'receiver_name',  'dt' => 2,
                'formatter' => function($d, $row){
                    if($d == null){
                        $result = 'UNUSED';
                    }else{
                        $result = $d;

                    }
                    return $result;
                }
            )
          );
          $ssptable='transfer_complate_data';
          $sspprimary='id';
          $sspjoin='';
          $sspwhere='transfer_number LIKE "LT%" AND send_by = '.$id;
          $go=SSP::simpleCustom($_GET,$this->datatable_config(),$ssptable,$sspprimary,$columns,$sspwhere,$sspjoin);
          echo json_encode($go);
    }
    public function get_receive_history($id)
    {
        $columns = array(
            array(
                'db' => 'transfer_number',  'dt' => 0,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'date',  'dt' => 1,
                'formatter' => function($d, $row){
                    $date = date_create($d);
                    return date_format($date,"l, d M Y H:m:s");
                }
            ),
            array(
                'db' => 'sender_name',  'dt' => 2,
                'formatter' => function($d, $row){
                    if($d == null){
                        $result = 'UNUSED';
                    }else{
                        $result = $d;

                    }
                    return $result;
                }
            )
          );
          $ssptable='transfer_complate_data';
          $sspprimary='id';
          $sspjoin='';
          $sspwhere='transfer_number LIKE "LT%" AND receive_by = '.$id ;
          $go=SSP::simpleCustom($_GET,$this->datatable_config(),$ssptable,$sspprimary,$columns,$sspwhere,$sspjoin);
          echo json_encode($go);
    }
    public function get_transfer_pin_history($id)
    {
        $columns = array(
            array(
                'db' => 'transfer_number',  'dt' => 0,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'date',  'dt' => 1,
                'formatter' => function($d, $row){
                    $date = date_create($d);
                    return date_format($date,"l, d M Y H:m:s");
                }
            ),
            array(
                'db' => 'receiver_name',  'dt' => 2,
                'formatter' => function($d, $row){
                    if($d == null){
                        $result = 'UNUSED';
                    }else{
                        $result = $d;

                    }
                    return $result;
                }
            )
          );
          $ssptable='transfer_complate_data';
          $sspprimary='id';
          $sspjoin='';
          $sspwhere='transfer_number LIKE "PT%" AND send_by = '.$id;
          $go=SSP::simpleCustom($_GET,$this->datatable_config(),$ssptable,$sspprimary,$columns,$sspwhere,$sspjoin);
          echo json_encode($go);
    }
    public function get_receive_pin_history($id)
    {
        $columns = array(
            array(
                'db' => 'transfer_number',  'dt' => 0,
                'formatter' => function($d, $row){
                    return $d;
                }
            ),
            array(
                'db' => 'date',  'dt' => 1,
                'formatter' => function($d, $row){
                    $date = date_create($d);
                    return date_format($date,"l, d M Y H:m:s");
                }
            ),
            array(
                'db' => 'sender_name',  'dt' => 2,
                'formatter' => function($d, $row){
                    if($d == null){
                        $result = 'UNUSED';
                    }else{
                        $result = $d;

                    }
                    return $result;
                }
            )
          );
          $ssptable='transfer_complate_data';
          $sspprimary='id';
          $sspjoin='';
          $sspwhere='transfer_number LIKE "PT%" AND receive_by = '.$id ;
          $go=SSP::simpleCustom($_GET,$this->datatable_config(),$ssptable,$sspprimary,$columns,$sspwhere,$sspjoin);
          echo json_encode($go);
    }
}

