<!DOCTYPE html>
<html>
  <head>
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="<?php echo base_url();?>/assets/css/bootstrap.min.css">
  </head>
  <body>
    <div class="conatianer-lg   m-4 p-4 d-flex justify-content-center">
      <div class="col-lg-5">
        <div class="bs-component">
          <div class="list-group">
            <div class="list-group-item list-group-item-action flex-lg-column align-items-start active bg-success h-100">
              <h2 class="text-light text-center">Sign Up</h2>
            </div>
            <div class="list-group-item list-group-item-action flex-lg-column align-items-start">
              <div class="col-lg-10 offset-lg-1">
                <form class="bs-component" action="<?php echo base_url();?>/User/postregister" method="POST">
                  <div class="form-group">
                    <div class="row">
                      <div class="col-sm-6">
                        <label class="col-form-label col-form-label-lg" for="inputLarge">First Name :</label>
                        <input class="form-control form-control-lg" type="text"  name="fname">
                      </div>
                      <div class="col-sm-6">
                        <label class="col-form-label col-form-label-lg" for="inputLarge">Last Name :</label>
                        <input class="form-control form-control-lg" type="text"  name="lname">
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-form-label col-form-label-lg" for="inputLarge">Email  :</label>
                    <input class="form-control form-control-lg" type="text"  name="email">
                  </div>
                  <div class="form-group">
                    <label class="col-form-label col-form-label-lg" for="inputLarge">Password:</label>
                    <input class="form-control form-control-lg" type="text" name="pass" >
                  </div>
                  <div class="form-group">
                    <label class="col-form-label col-form-label-lg" for="inputLarge">Confirm Password:</label>
                    <input class="form-control form-control-lg" type="text" name="cpass" >
                  </div>
                  <div class="form-group">
                    <button type="submit" class="btn btn-success btn-lg">Submit</button>
                    <a href="<?php echo base_url();?>/User/index" class="btn btn-secondary btn-lg">Cancle</a>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </form>
  </body>
</html>