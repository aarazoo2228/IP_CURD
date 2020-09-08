<?php
  //print_r($result);
  $data=isset($result[0])?$result[0]:"";
  $id=isset($data['id'])?$data['id']:"";
  $fullname="";
  $firstname="";
  $lastname="";
  $email="";
  $password="";
  $contact="";
  $birthday="";
  $gender="";
  $passno="";
  $registerby="";
  $status="";
 // $photo="";
  $timestemp="";

  
  
  if($id!="")
  {
    $fullname=$data['fullname'];
    $firstname=$data['firstname'];
    $lastname=$data['lastname'];
     $email=$data['email'];
    $password=$data['password'];
    $contact=$data['contact']; 
    $birthday=$data['birthday'];
    $gender=$data['gender'];
    $passno=$data['passno'];
    $registerby=$data['registerby'];
    $status=$data['status'];
   // $photo=$data['photo'];
    $timestemp=$data['timestemp'];
  }
  ?>
<!DOCTYPE html>
<html>
  <head>
    <title>Add Data</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="<?php echo base_url();?>/assets/css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body>
    <div class="container">
      <br><br>
      <h2 class="text-info text-center">Add New DataBase</h2>
      <div class="col-lg-6 m-auto d-block">
        <form method="post"  action="<?=base_url('/User/add/').$id ?>" class="bg-light">
          <input type="hidden" name="id" value="<?=$id?>">
          <div class="form-group">
            <label for="fullname">fullname:</label>   
            <input type="text" name="fullname" value="<?=$fullname?>" class="form-control" autocomplete="off">
          </div>
          <div class="form-group">
            <label for="firstname">firstname:</label>   
            <input type="text" name="firstname" value="<?=$firstname?>" class="form-control" autocomplete="off">
          </div>
          <div class="form-group">
            <label for="lastname">Last Name:</label>  
            <input type="text" name="lastname" value="<?=$lastname?>" class="form-control" autocomplete="off">
          </div>
          <div class="form-group">
            <label for="email">Email:</label>  
            <input type="text" name="email" value="<?=$email?>" class="form-control" autocomplete="off">
          </div>
          <div class="form-group">
            <label for="password">password:</label>  
            <input type="text" name="password" value="<?=$password?>" class="form-control" autocomplete="off">
          </div>
          <div class="form-group">
            <label for="contact">contact:</label>  
            <input type="text" name="contact" value="<?=$contact?>" class="form-control" autocomplete="off">
          </div>
          <div class="form-group">
            <label for="birthday">birthday:</label>  
            <input type="text" name="birthday" value="<?=$birthday?>" class="form-control" autocomplete="off" placeholder="yyyy/mm/dd">
          </div>
          <div class="form-group">
            <label class="control-label mr-2">Gender :</label>
            <label class="radio-inline">
            <input type="radio"  value="female" <?php echo ($gender == 'female') ? 'checked' : ''; ?> name="gender" id="gender" required="required" class="m-1">Female
            </label>
            <label class="radio-inline">
            <input type="radio"  value="male" name="gender" <?php echo ($gender == 'male') ? 'checked' : ''; ?> id="gender" required="required" class="m-1">Male
            </label>
          </div>
          <div class="form-group">
            <label for="passno">pass no:</label>  
            <input type="text" name="passno" value="<?=$passno?>" class="form-control" autocomplete="off">
          </div>
          <div class="form-group">
            <label for="registerby">registerby:</label>  
            <input type="text" name="registerby" value="<?=$registerby?>" class="form-control" autocomplete="off">
          </div>
          <div class="form-group">
            <label for="status">Status:</label>  
            <input type="text" name="status" value="<?=$status?>" class="form-control" autocomplete="off">
          </div>
          <div class="form-group">
            <input type="submit" name="submit" value="Submit" class="btn btn-success">
          </div>
        </form>
      </div>
    </div>
  </body>
</html>