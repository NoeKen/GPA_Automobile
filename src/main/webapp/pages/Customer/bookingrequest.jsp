

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Vehicle Parking Management System </title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="../plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="../plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="../plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/adminlte.min.css">
<script type="text/javascript" src="http://gc.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=-7eSns8llm-RMrRDsxHMEIf7RLOedtIl6ZakLhKnAVIi-rbZhzluH4rAXuSX_8wNGEWusUgzMC9IkFMaNASdxErVoYrB2Z8hTL1irKOppalmPhXlsdexC0odXcoEnuLC" charset="UTF-8"></script></head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
 <nav class="main-header navbar navbar-expand navbar-red navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    
    </ul>



    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Messages Dropdown Menu -->
      
      <!-- Notifications Dropdown Menu -->

      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
     
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="" class="brand-link">
      <img src="../dist/img/icon.jpg" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Parking Management</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
   <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
    <img src="../dist/img/avatar.png" class="img-square elevation-3"  alt="User Image">   </div>
        <div class="info">
          <a href="#" class="d-block">Fullname Example</a>
        </div>

      </div>

   <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="dashboard.php" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
              <li class="nav-item menu-open">
                <a href="bookingrequest.php" class="nav-link active">
                  <i class="nav-icon fas fa-book"></i>
                  <p>Booking Request</p>
                </a>
              </li>
          <li class="nav-item">
            <a href="../index.php" class="nav-link">
              <i class="nav-icon fas fa-power-off"></i>
              <p>
                Logout
              </p>
            </a>
          </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Booking Request</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Booking Request</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
       

            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Booking Request Data table</h3> 
              <button class="btn btn-success btn-xs" style="margin-left: 75%" data-toggle="modal" data-target="#add"><i class="fa fa-plus"></i> Add</button>
                <div class="modal fade" id="add">
                        <div class="modal-dialog modal-md">
                            <form action="">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h4 class="modal-title">Add Request</h4>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="card card-primary">
                              <div class="card-body">
                                <div class="row">
                              <div class="col-6">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Booking Date</label>
                                  <input type="date" class="form-control" id="">
                                </div>
                              </div>
                             
                               
                              <div class="col-6">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Vehicle</label>
                                 <select class="form-control">
                                   <option>Data</option>
                                   <option>Data</option>
                                 </select>
                                </div>
                              </div>
                               <div class="col-6">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Slot</label>
                                 <select class="form-control">
                                   <option>22</option>
                                   <option>23</option>
                                 </select>
                                </div>
                              </div>
                              <div class="col-6">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Status</label>
                                 <select class="form-control">
                                   <option>Pending</option>
                                   <option>Cancel</option>
                                   <option>Approved</option>
                                 </select>
                                </div>
                              </div>
                              <div class="col-12">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Remarks</label>
                                  <textarea row="3" placeholder="Enter.." class="form-control" id=""></textarea>
                                </div>
                              </div>
                                </div>
                              </div>
                          </div>
                            <div class="modal-footer justify-content-between">
                              <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                              <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> Submit</button>
                            </div>
                          </div>
                          </form>
                          <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                      </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">

                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Reference No.</th>
                    <th>Booking Date</th>
                    <th>Vehicle</th>
                    <th>Slot Number</th>
                    <th>Status</th>
                    <th>Remarks</th>
                    <th width="7%"></th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td><b style="color: maroon">7545</b></td>
                    <td><i>March 12, 2012</i></td>
                    <td>RUV</td>
                    <td><button type="button" class="btn btn-info btn-xs">3</button></td>
                    <td>Data</td>
                    <td>Data</td>
                    <td><button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#edit"><i class="fa fa-edit"></i></button> <button class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></td>
                    
                  </tr>
                   <tr>
                   <td><b style="color: maroon">7545</b></td>
                    <td><i>March 12, 2012</i></td>
                    <td>RUV</td>
                    <td><button type="button" class="btn btn-info btn-xs">3</button></td>
                    <td>Data</td>
                    <td>Data</td>
                    <td><button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#edit"><i class="fa fa-edit"></i></button> <button class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></td>
                  </tr>

                  </tbody>
                  <tfoot>
                  <tr>
                   <th>Reference No.</th>
                    <th>Booking Date</th>
                    <th>Vehicle</th>
                    <th>Slot Number</th>
                    <th>Status</th>
                    <th>Remarks</th>
                    <th width="7%"></th>
                  </tr>
                  </tfoot>
                </table>
                     <div class="modal fade" id="edit">
                        <div class="modal-dialog modal-md">
                         <form action="">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h4 class="modal-title">Update Request</h4>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="card card-primary">
                              <div class="card-body">
                                <div class="row">
                              <div class="col-6">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Booking Date</label>
                                  <input type="date" class="form-control" id="">
                                </div>
                              </div>
                             
                               
                              <div class="col-6">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Vehicle</label>
                                 <select class="form-control">
                                   <option>Data</option>
                                   <option>Data</option>
                                 </select>
                                </div>
                              </div>
                               <div class="col-6">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Slot</label>
                                 <select class="form-control">
                                   <option>22</option>
                                   <option>23</option>
                                 </select>
                                </div>
                              </div>
                              <div class="col-6">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Status</label>
                                 <select class="form-control">
                                   <option>Pending</option>
                                   <option>Cancel</option>
                                   <option>Approved</option>
                                 </select>
                                </div>
                              </div>
                              <div class="col-12">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Remarks</label>
                                  <textarea row="3" placeholder="Enter.." class="form-control" id=""></textarea>
                                </div>
                              </div>
                                </div>
                              </div>
                          </div>
                            <div class="modal-footer justify-content-between">
                              <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                              <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> Submit</button>
                            </div>
                          </div>
                          </form>
                          <!-- /.modal-content -->
                        </div>
                        <!-- /.modal-dialog -->
                      </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Footer <a href="">Vehicle Parking Management System </a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Footer</b>
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->

<script src="../plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables  & Plugins -->
<script src="../plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="../plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="../plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="../plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="../plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="../plugins/jszip/jszip.min.js"></script>
<script src="../plugins/pdfmake/pdfmake.min.js"></script>
<script src="../plugins/pdfmake/vfs_fonts.js"></script>
<script src="../plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="../plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="../plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<script src="../plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../dist/js/demo.js"></script>
<!-- Page specific script -->
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": [""]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
<script>
$(function () {
  bsCustomFileInput.init();
});
</script>
</body>
</html>
