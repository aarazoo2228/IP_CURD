<!DOCTYPE html>
<html>
  <head>
    <title>Members</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>/assets/css/bootstrap.min.css">
  </head>
  <body>
    <div class="container">
      <br><br>
      <h2 class="text-info text-center">Members Of UVClube</h2>
      <table class="table table-hover">
        <div class="container">
          <a href="<?=base_url('/User/create');?>" class="btn btn-primary btn-lg float-left">Add New DataBase</a>
          <br>
        </div>
        <div class="container d-flex justify-content-center">
          <tr>
            <th>fullname</th>
            <th>first Name</th>
            <th>last Name</th>
            <th>Email</th>
            <th>password</th>
            <th>contact</th>
            <th>birthday</th>
            <th>Gender</th>
            <th>Pass no</th>
            <th>RegisterBY</th>
            <th>status</th>
            <th>timestemp</th>
            <th>Action</th>
          </tr>
          <?php foreach($data as $row) : 
            ?>
          <tr>
            <?php $id = $row['id'];?>
            <td><?=$row['fullname']?></td>
            <td><?=$row['firstname']?></td>
            <td><?=$row['lastname']?></td>
            <td><?=$row['email']?></td>
            <td><?=$row['password']?></td>
            <td><?=$row['contact']?></td>
            <td><?=$row['birthday']?></td>
            <td><?=$row['gender']?></td>
            <td><?=$row['passno']?></td>
            <td><?=$row['registerby']?></td>
            <td><?=$row['status']?></td>
            <td><?=$row['timestemp']?></td>
            <td>
              <a href="<?=base_url('/User/Delete/').$id?>" class="btn btn-danger">Delete</a>
              <a href="<?=base_url('/User/Update/').$id?>" class="btn btn-success">Edit</a>
            </td>
            <?php endforeach;?>  
          </tr>
        </div>
      </table>
    </div>
  </body>
</html>