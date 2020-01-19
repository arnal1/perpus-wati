<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MY_Controller {

  public function index()
  {
    $data = konfigurasi('Home');
    $this->template->load('template/template_home', 'home', $data);
  }

}

/* End of file Home.php */