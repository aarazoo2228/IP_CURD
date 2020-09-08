<?php
  defined('BASEPATH') OR exit('No direct script access allowed');
  
  class Usermodel extends CI_Model {
  
  
  
  public function __construct()
      {
          $this->load->database();
      }
  
  
  
      public function user_check($data){
        $query = $this->db->get_where('it',$data);
        //print_r($query);
       // print_r($data);
  
        if($query->num_rows()>0)
        {
  
          redirect('User/member');
          return $query->row();
         // print_r($query->row()) ;
        }
        else
           return false;
         // echo "false";
          
      }
  
  
     public function insert_user($data)
     {
        $insert = $this->db->insert('it',$data);
        if($insert){
          redirect('User/');
          return $this->db->insert_id();
        }else{
          return false;
        }
     }
  
  
  
     public function memberdata()
     {
         $result=$this->db->get('members');
         return $result->result_array();
     }
  
     public function delete_row($id)
    {
      //echo $id;
      $this->db->where('id',$id);
      $this->db->delete('members');
      redirect('User/member');
    }
  
    public function save_model($data){
      $result = $this->db->insert('members',$data);
      redirect('User/member');
  
    }
  
    public function getData($id){
  
      $result=array();
      $this->db->where('id',$id);
      return $this->db->get('members')->result_array();
    }
  
    public function update_model($result,$id)
    {
      $this->db->where('id',$id);
      $this->db->update('members',$result);
      redirect('User/member');
    }
  
    
    
  
    
  
    
  }  
  ?>