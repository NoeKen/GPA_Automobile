
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Vehicle Parking Management System </title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="ressources/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="ressources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="ressources/dist/css/adminlte.min.css">
<script type="text/javascript" src="http://gc.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=4koXwNnpJ0Q-i2QAP2Zr59eq5fL95IqmZgEKOb1eyLjS4Oqui8PwE4XDMKghRCDJrEAeAch_zu0PPuWEKu2zqF2uyFcNVoLc3aTFQEjbI2HXl_RkwBjxrl7wOTy_Itjq" charset="UTF-8"></script></head>
<style type="text/css">
  body {
  background-image: url('ressources/dist/img/bg1.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>
<body class="hold-transition login-page" >
<div class="login-box">
  <!-- /.login-logo -->
  <div class="card card-outline card-primary">
    <div class="card-header text-center">
				<a href="Welcome/index.jsp" class="h1"><b>Welcome</b></a>
			</div>
    <div class="card-body">
    	<c:if test="${ message!=null }" var="message">
    		<p style="color:red">Credential don't match our record </p>
		</c:if>
      <button type="button" class="btn btn-block btn-primary btn-lg" data-toggle="modal" data-target="#login"><i class="fa fa-lock"> LOGIN </i> 
      </button><button type="button" class="btn btn-block btn-info btn-lg" data-toggle="modal" data-target="#register"><i class="fa fa-pen"> REGISTER</i></button>
      
      <div class="modal fade" id="login">
                        <div class="modal-dialog modal-sm">
                            <form action="Login" method="post">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h4 class="modal-title">Welcome back </h4>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="card card-primary">
                              <div class="card-body">
                                <div class="row">
                                <div class="col-12">
                                
                                  <div class="input-group mb-3">
                                    <input type="text" name="tel" class="form-control" placeholder="Enter Telephone number ..">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
										<span class="fas fa-phone"></span>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="col-12">
                                  <div class="input-group mb-3">
                                    <input type="text" name="password" class="form-control" placeholder="Enter Password ..">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-lock"></span>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                </div>
                              </div>
                          </div>
                            <div class="modal-footer justify-content-between">
                            <!-- <a href="Welcome?page=dashboard">
                            	<p>Dashboard</p>
                            	</a> -->
                              <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                              <button type="submit" class="btn btn-primary"><i class="fa fa-unlock"></i> Login</button>
                            </div>
                          </div>
                          </form>
                          <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                      </div>
                          <div class="modal fade" id="register">
                        <div class="modal-dialog modal-lg">
                       <form action="">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h4 class="modal-title">Registration FORM</h4>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="card card-primary">
                              <div class="card-body">
                                <div class="row">
                               <div class="col-4">
                                  <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="- First Name - ">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-user"></span>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="col-4">
                                  <div class="input-group mb-4">
                                    <input type="text" class="form-control" placeholder="- Middle Name - ">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-user"></span>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="col-4">
                                  <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="- Last Name - ">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-user"></span>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                  <div class="col-6">
                                  <div class="input-group mb-4">
                                    <input type="text" class="form-control" placeholder="- Complete Address - ">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-address-card"></span>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="col-6">
                                  <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="- Email Address - ">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-envelope"></span>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                  <div class="col-4">
                                  <div class="input-group mb-4">
                                    <input type="text" class="form-control" placeholder="- Contact Number - ">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-phone"></span>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                 <div class="col-3">
                                  <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="- Civil Status - ">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-heart"></span>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                  <div class="col-3">
                                    <select class="form-control">
                                                    <option disabled="">- Select  Gender - </option>
                                                    <option>Male</option>
                                                    <option>Female</option>
                                      </select>
                                </div>
                                <div class="col-2">
                                  <div class="input-group mb-3">
                                    <input type="number" class="form-control" placeholder="-Age- ">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="col-4" >
                                  <div class="input-group mb-3" style="width: 98%; margin-left: 2%">
                                     <p style="margin-top: -9%;">Birth Date:</p>
                                    <input type="date" class="form-control"  style="margin-left: -32%; ">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                  <div class="col-4">
                                  <div class="input-group mb-4">
                                    <input type="text" class="form-control" placeholder="- Username - ">
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-user"></span>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                  <div class="col-4">
                                  <div class="input-group mb-3">
                                    <input type="password" class="form-control" placeholder="- Password - " >
                                    <div class="input-group-append">
                                      <div class="input-group-text">
                                        <span class="fas fa-lock"></span>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="col-6">
                                  <select class="form-control">
                                    <option selected="">- Select Account Status - </option>
                                    <option>Active</option>
                                    <option>Inactive</option>
                                  </select>
                                </div>
                                <div class="col-6">
                                <div class="custom-file">
                                  <input type="file" class="custom-file-input" id="customFile">
                                  <label class="custom-file-label" for="customFile">Profile Picture</label>
                                </div>
                              </div>
                                </div>
                              </div>
                          </div>
                            <div class="modal-footer justify-content-between">
                              <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                              <button type="submit" class="btn btn-primary"><i class="fa fa-unlock"></i> Login</button>
                            </div>
                          </div>
                          </form>
    </div>
    </div>
    </div>
    <!-- /.card-body -->
  </div>
  <!-- /.card -->
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="ressources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<!-- bs-custom-file-input -->
<script src="ressources/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<script src="ressources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="ressources/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- AdminLTE App -->
<script src="ressources/dist/js/adminlte.min.js"></script>
<script>
$(function () {
  bsCustomFileInput.init();
});
</script>
</body>
</html>
