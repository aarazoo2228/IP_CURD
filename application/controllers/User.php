<?php
  defined('BASEPATH') OR exit('No direct script access allowed');
  
  class User extends CI_Controller {
  
      public function __construct(){
          parent:: __construct();
          
          
               $this->load->library(array('form_validation','session'));
                   $this->load->helper(array('url','html','form'));
                   $this->user_id = $this->session->userdata('user_id');
                   $this->load->database();
                   $this->load->model('Usermodel');
      }
  
      public function index()
      {
        $this->load->view('Login');
    }
  
      public function signup(){
          $this->load->view('signup');
      }
  
     public function postlogin()
     {
  
          $this->load->library('form_validation');
          $this->load->model('Usermodel');
          $this->form_validation->set_rules('email','Email','required');
          $this->form_validation->set_rules('pass','Password','required');
          $this->form_validation->set_error_delimiters('<div class="error">','</div>');
          $this->form_validation->set_message('required','Enter %s');
         
  
      if($this->form_validation->run()==FALSE){
         // $this->load->view('signup');
         // echo "false";
      }
      else{
          $data=array(
              'email'=>$this->input->post('email'),
              'password'=>$this->input->post('pass'),
          );
      
       $check = $this->Usermodel->user_check($data);
       if($check != false){
  
          $user = array(
            'user_id'=>$check->id,
            'email'=>$check->email,
          );
  
          $this->session->set_userdata($user);
         }
  
         //$this->load->view('member');
        //redirect(base_url('/'));   
       }
  
  
  }
  
  public function postregister(){
          $this->load->library('form_validation');
          $this->load->model('Usermodel');
           $this->form_validation->set_rules('fname','First Name','required');
          $this->form_validation->set_rules('lname','Last Name','required');
          $this->form_validation->set_rules('email','Email','required');
          $this->form_validation->set_rules('pass','Password','required');
          $this->form_validation->set_rules('cpass','Confirm Password','required');
      
  
      //$this->form_validation->set_error_delimiters('<div class="error">','</div>');
      //$this->form_validation->set_message('required','Enter %s');
      //echo "hii";
  
      if($this->form_validation->run()==FALSE)
      {
          $this->load->view('signup');
               
          
      }
      else
      {
          $data=array(
              'fname'=>$this->input->post('fname'),
              'lname'=>$this->input->post('lname'),
              'email'=>$this->input->post('email'),
              'password'=>$this->input->post('pass'),
              'cpassword'=>$this->input->post('cpass'),
  
              );
           //echo $this->input->post('fname');
           //print_r($data);
  
          $check= $this->Usermodel->insert_user($data);
          //print_r($check);
  
  
          if($check != false){
              $user =array(
                  'user_id'=>$check,
                  'email'=>$this->input->post('email'),
                  'fname'=>$this->input->post('fname'),
                  'lname'=>$this->input->post('lname'),
  
              );
      
            $this->session->set_userdata($user);
  
            //$this->load->view()
            redirect(base_url('/User/Login'));
  
  
          }
  
      }
  
  }
  
  
  
  public function member(){
  
      $result = array();
      $result['data']=$this->Usermodel->memberdata();
      //print_r($result);
      $this->load->view('member',$result);
  }
  
  
  public function create()
      {
          $this->load->view('insert_view');
      }
  
  
      public function add($id=0){
          $data = array(
              'fullname'=>$this->input->post('fullname'),
              'firstname'=>$this->input->post('firstname'),
              'lastname'=>$this->input->post('lastname'),
              'email'=>$this->input->post('email'),
              'password'=>$this->input->post('password'),
              'contact'=>$this->input->post('contact'),
              'birthday'=>$this->input->post('birthday'),
              'gender'=>$this->input->post('gender'),
              'passno'=>$this->input->post('passno'),
              'registerby'=>$this->input->post('registerby'),
              'status'=>$this->input->post('status'),
              //'photo'=>$this->input->post('post'),
              
          );
  
          if($id==""){
          $this->Usermodel->save_model($data);
          }
          else{
              $this->Usermodel->update_model($data,$id);
          }
      }
  
      public function Delete($id)
      {
          $this->Usermodel->delete_row($id);
  
  
      }
  
      public function Update($id){
  
          $result = array();
          $result = $this->Usermodel->getData($id);
          $data= array('result'=>$result);
          $this->load->view('insert_view',$data);
  
      }
  
    
  }  
  ?>