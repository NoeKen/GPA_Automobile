

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
  <!-- DataTables -->
  <link rel="stylesheet" href="ressources/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="ressources/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="ressources/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="ressources/dist/css/adminlte.min.css">
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
      <img src="ressources/dist/img/icon.jpg" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Parking Management</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
   <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
    <img src="ressources/dist/img/avatar.png" class="img-square elevation-3"  alt="User Image">   </div>
        <div class="info">
          <a href="#" class="d-block">Fullname Example</a>
        </div>

      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="Welcome?page=dashboard" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="Welcome?page=booking" class="nav-link">
              <i class="nav-icon fas fa-book"></i>
              <p>
                Booking
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-car"></i>
              <p>
                Vehicle
                <i class="fas fa-angle-left right"></i>
                <span class="badge badge-info right"></span>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="Welcome?page=owenermanagement" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Owner Management Form</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="Welcome?page=category" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Category</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="Welcome?page=informationmanagement" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Information Management</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="Welcome?page=parkingslot" class="nav-link">
              <i class="nav-icon fas fa-parking"></i>
              <p>
                Parking Slot
              </p>
            </a>
          </li>
          <li class="nav-item menu-open">
            <a href="Welcome?page=payment" class="nav-link active">
              <i class="nav-icon fas fa-money-bill-alt"></i>
              <p>
               Payment
              </p>
            </a>
          </li>
           <li class="nav-item">
            <a href="Welcome?page=usermanagement" class="nav-link">
              <i class="nav-icon fas fa-users-cog"></i>
              <p>
               User Management
              </p>
            </a>
          </li>
           <li class="nav-item">
            <a href="Welcome?page=usergroup" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>
               User Group
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="Welcome?page=index" class="nav-link">
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
            <h1>Payment</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Payment</li>
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
                <h3 class="card-title">Payment Data table</h3> 
              <button class="btn btn-success btn-xs" style="margin-left: 80%" data-toggle="modal" data-target="#add"><i class="fa fa-plus"></i> Add</button>
                <div class="modal fade" id="add">
                        <div class="modal-dialog modal-md">
                            <form action="">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h4 class="modal-title">Add Payment</h4>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="card card-primary">
                              <div class="card-body">
                                <div class="row">
                              <div class="col-6">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Reference</label>
                                  <input type="text" class="form-control" id="" placeholder="Enter Reference Number ..">
                                </div>
                              </div>
                               
                              <div class="col-3">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Amount Due</label>
                                  <input type="text" class="form-control" id="" placeholder="00.00">
                                </div>
                              </div>
                              <div class="col-3">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Amount Paid</label>
                                  <input type="text" class="form-control" id="" placeholder="00.00">
                                </div>
                              </div>
                              <div class="col-12">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Remarks</label>
                                  <textarea row="3" placeholder="Enter.." class="form-control" id=""></textarea>
                                </div>
                              </div>
                              <div class="col-6">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Payment Date</label>
                                  <input type="date" class="form-control" id="" placeholder="00.00">
                                </div>
                              </div>
                              <div class="col-6">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Paid by</label>
                                  <input type="text" class="form-control" id="" placeholder="Enter Paid by ..">
                                </div>
                              </div>
                              <div class="col-12">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Customer</label>
                                  <input type="text" class="form-control" id="" placeholder="Enter Customer name ..">
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
                    <th>Amount Due</th>
                    <th>Amount Paid</th>
                    <th>Remarks</th>
                    <th>Payment Date</th>
                    <th>Paid by</th>
                    <th>Customer</th>
                    <th width="7%"></th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td><b style="color: maroon">7545</b></td>
                    <td>300</td>
                    <td><b style="color: blue">300,000.99</b></td>
                    <td><button type="button" class="btn btn-danger btn-xs">Danger</button></td>
                    <td><i>July 12, 2021</i></td>
                    <td>Data</td>
                    <td>Data</td>
                    <td><button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#edit"><i class="fa fa-edit"></i></button> <button class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></td>
                    
                  </tr>
                   <tr>
                   <td><b style="color: maroon">7545</b></td>
                    <td>300</td>
                    <td><b style="color: blue">300,000.99</b></td>
                    <td><button type="button" class="btn btn-danger btn-xs">Danger</button></td>
                    <td><i>July 12, 2021</i></td>
                    <td>Data</td>
                    <td>Data</td>
                    <td><button class="btn btn-primary btn-xs" data-toggle="modal" data-target="#edit"><i class="fa fa-edit"></i></button> <button class="btn btn-danger btn-xs"><i class="fa fa-trash"></i></button></td>
                  </tr>

                  </tbody>
                  <tfoot>
                  <tr>
                   <th>Reference No.</th>
                    <th>Amount Due</th>
                    <th>Amount Paid</th>
                    <th>Remarks</th>
                    <th>Payment Date</th>
                    <th>Paid by</th>
                    <th>Customer</th>
                    <th width="7%"></th>
                  </tr>
                  </tfoot>
                </table>
                     <div class="modal fade" id="edit">
                        <div class="modal-dialog modal-md">
                           <form action="">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h4 class="modal-title">Update Payment</h4>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="card card-primary">
                              <div class="card-body">
                                <div class="row">
                              <div class="col-6">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Reference</label>
                                  <input type="text" class="form-control" id="" placeholder="Enter Reference Number ..">
                                </div>
                              </div>
                               
                              <div class="col-3">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Amount Due</label>
                                  <input type="text" class="form-control" id="" placeholder="00.00">
                                </div>
                              </div>
                              <div class="col-3">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Amount Paid</label>
                                  <input type="text" class="form-control" id="" placeholder="00.00">
                                </div>
                              </div>
                              <div class="col-12">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Remarks</label>
                                  <textarea row="3" placeholder="Enter.." class="form-control" id=""></textarea>
                                </div>
                              </div>
                              <div class="col-6">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Payment Date</label>
                                  <input type="date" class="form-control" id="" placeholder="00.00">
                                </div>
                              </div>
                              <div class="col-6">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Paid by</label>
                                  <input type="text" class="form-control" id="" placeholder="Enter Paid by ..">
                                </div>
                              </div>
                              <div class="col-12">
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Customer</label>
                                  <input type="text" class="form-control" id="" placeholder="Enter Customer name ..">
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

<script src="ressources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="ressources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables  & Plugins -->
<script src="ressources/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="ressources/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="ressources/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="ressources/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="ressources/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="ressources/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="ressources/plugins/jszip/jszip.min.js"></script>
<script src="ressources/plugins/pdfmake/pdfmake.min.js"></script>
<script src="ressources/plugins/pdfmake/vfs_fonts.js"></script>
<script src="ressources/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="ressources/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="ressources/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<script src="ressources/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<!-- AdminLTE App -->
<script src="ressources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="ressources/dist/js/demo.js"></script>
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
