<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Vehicle Parking Management System</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="ressources/plugins/fontawesome-free/css/all.min.css">
<!-- DataTables -->
<link rel="stylesheet"
	href="ressources/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet"
	href="ressources/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet"
	href="ressources/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="ressources/dist/css/adminlte.min.css">
<script type="text/javascript"
	src="http://gc.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=-7eSns8llm-RMrRDsxHMEIf7RLOedtIl6ZakLhKnAVIi-rbZhzluH4rAXuSX_8wNGEWusUgzMC9IkFMaNASdxErVoYrB2Z8hTL1irKOppalmPhXlsdexC0odXcoEnuLC"
	charset="UTF-8"></script>
</head>
<body>
	<!-- Navbar -->
	<nav class="main-header navbar navbar-expand navbar-red navbar-light">
		<!-- Left navbar links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
				href="#" role="button"><i class="fas fa-bars"></i></a></li>

		</ul>



		<!-- Right navbar links -->
		<ul class="navbar-nav ml-auto">
			<!-- Messages Dropdown Menu -->

			<!-- Notifications Dropdown Menu -->

			<li class="nav-item"><a class="nav-link"
				data-widget="fullscreen" href="#" role="button"> <i
					class="fas fa-expand-arrows-alt"></i>
			</a></li>

		</ul>
	</nav>
	<!-- /.navbar -->

	<!-- Main Sidebar Container -->
	<aside class="main-sidebar sidebar-dark-primary elevation-4">
		<!-- Brand Logo -->
		<a href="" class="brand-link"> <img
			src="ressources/dist/img/icon.jpg" alt="AdminLTE Logo"
			class="brand-image img-circle elevation-3" style="opacity: .8">
			<span class="brand-text font-weight-light">Parking Management</span>
		</a>

		<!-- Sidebar -->
		<div class="sidebar">
			<!-- Sidebar user panel (optional) -->
			<div class="user-panel mt-3 pb-3 mb-3 d-flex">
				<div class="image">
					<img src="ressources/dist/img/avatar.png"
						class="img-square elevation-3" alt="User Image">
				</div>
				<div class="info">
					<a href="#" class="d-block">Fullname Example</a>
				</div>

			</div>

			<!-- Sidebar Menu -->
			<nav class="mt-2">
				<ul class="nav nav-pills nav-sidebar flex-column"
					data-widget="treeview" role="menu" data-accordion="false">
					<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
					<li class="nav-item "><a
						href="Welcome?page=dashboard" class="nav-link inactive"> <i
							class="nav-icon fas fa-tachometer-alt"></i>
							<p>Dashboard</p>
					</a></li>
					<li class="nav-item"><a href="Welcome?page=booking"
						class="nav-link active"> <i class="nav-icon fas fa-book"></i>
							<p>Booking</p>
					</a></li>
					<li class="nav-item"><a href="#" class="nav-link"> <i
							class="nav-icon fas fa-car"></i>
							<p>
								Vehicle <i class="fas fa-angle-left right"></i> <span
									class="badge badge-info right"></span>
							</p>
					</a>
						<ul class="nav nav-treeview">
							<li class="nav-item"><a href="owenermanagement.php"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>Owner Management Form</p>
							</a></li>
							<li class="nav-item"><a href="category.php" class="nav-link">
									<i class="far fa-circle nav-icon"></i>
									<p>Category</p>
							</a></li>
							<li class="nav-item"><a href="informationmanagement.php"
								class="nav-link"> <i class="far fa-circle nav-icon"></i>
									<p>Information Management</p>
							</a></li>
						</ul></li>
					<li class="nav-item"><a href="parkingslot.php"
						class="nav-link"> <i class="nav-icon fas fa-parking"></i>
							<p>Parking Slot</p>
					</a></li>
					<li class="nav-item"><a href="payment.php" class="nav-link">
							<i class="nav-icon fas fa-money-bill-alt"></i>
							<p>Payment</p>
					</a></li>
					<li class="nav-item"><a href="usermanagement.php"
						class="nav-link"> <i class="nav-icon fas fa-users-cog"></i>
							<p>User Management</p>
					</a></li>
					<li class="nav-item"><a href="usergroup.php" class="nav-link">
							<i class="nav-icon fas fa-users"></i>
							<p>User Group</p>
					</a></li>
					<li class="nav-item"><a href="../index.php" class="nav-link">
							<i class="nav-icon fas fa-power-off"></i>
							<p>Logout</p>
					</a></li>

				</ul>
			</nav>
			<!-- /.sidebar-menu -->
		</div>
		<!-- /.sidebar -->
	</aside>

	<!-- Content Wrapper. Contains page content -->
	
	<!-- jQuery -->
	<script src="ressources/plugins/jquery/jquery.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="ressources/plugins/jquery-ui/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button)
	</script>
	<!-- Bootstrap 4 -->
	<script src="ressources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- ChartJS -->
	<script src="ressources/plugins/chart.js/Chart.min.js"></script>
	<!-- Sparkline -->
	<script src="ressources/plugins/sparklines/sparkline.js"></script>
	<!-- JQVMap -->
	<script src="ressources/plugins/jqvmap/jquery.vmap.min.js"></script>
	<script src="ressources/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
	<!-- jQuery Knob Chart -->
	<script src="ressources/plugins/jquery-knob/jquery.knob.min.js"></script>
	<!-- daterangepicker -->
	<script src="ressources/plugins/moment/moment.min.js"></script>
	<script src="ressources/plugins/daterangepicker/daterangepicker.js"></script>
	<!-- Tempusdominus Bootstrap 4 -->
	<script
		src="ressources/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
	<!-- Summernote -->
	<script src="ressources/plugins/summernote/summernote-bs4.min.js"></script>
	<!-- overlayScrollbars -->
	<script
		src="ressources/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
	<!-- AdminLTE App -->
	<script src="ressources/dist/js/adminlte.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="ressources/dist/js/demo.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="ressources/dist/js/pages/dashboard.js"></script>
</body>
</html>