<!DOCTYPE html>
<html lang="en">
<!-- Mirrored from themesbrand.com/veltrix/layouts/vertical-dark/pages-register.html by HTTrack Website Copier/3.x [XR&CO'2008], Wed, 20 Mar 2019 15:25:42 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=0,minimal-ui">
<title>Register</title>
<meta content="Admin Dashboard" name="description">
<meta content="Themesbrand" name="author">
<link rel="shortcut icon" href="/assets/images/favicon.ico">
<link href="ressources/assets/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="/assets/css/metismenu.min.css" rel="stylesheet"
	type="text/css">
<link href="ressources/assets/css/icons.css" rel="stylesheet" type="text/css">
<link href="ressources/assets/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="home-btn d-none d-sm-block">
		<a href="index.html" class="text-white"><i class="fas fa-home h2"></i></a>
	</div>
	<div class="wrapper-page">
		<div class="card overflow-hidden account-card mx-3">
			<div class="bg-primary p-4 text-white text-center position-relative">
				<h4 class="font-20 m-b-5">Register</h4></br>
				<a href="index.html" class="logo logo-admin"><img
					src="ressources/assets/images/logo-sm.png" height="24" alt="logo"></a>
			</div>
			<div class="account-card-content">
				<form class="form-horizontal m-t-30"
					action="Welcome" method="post">
					<div class="form-group">
						<label for="useremail">First Name</label> <input type="text"
							class="form-control" id="useremail" name="firstname" placeholder="Enter First Name">
					</div>
					<div class="form-group">
						<label for="username">Last Name</label> <input type="text"
							class="form-control" id="username" name="lastname" placeholder="Enter Last Name">
					</div>
					<div class="form-group">
						<label for="userpassword">N° CNI</label> 
						<input type="text" class="form-control" id="userpassword" name="cni" placeholder="Enter N° CNI">
					</div>
					<div class="form-group">
						<label for="userpassword">Phone Number</label> 
						<input type="tel" class="form-control" id="userpassword" name="tel" placeholder="Enter N° CNI">
					</div>
					<div class="form-group">
						<label for="userpassword">Password</label> 
						<input type="text" class="form-control" id="userpassword" name="password" placeholder="Enter Password">
					</div>
					<div class="form-group">
						<label for="userpassword">Confirm Password</label> 
						<input type="text" class="form-control" id="userpassword" name="confirm_password" placeholder="Confirm Password">
					</div>
					<div class="form-group row m-t-20">
						<div class="col-12 text-right">
							<button class="btn btn-primary w-md waves-effect waves-light"
								type="submit">Register</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="m-t-40 text-center">
			<p>
				Already have an account ? <a href="WEB-INF/pages/login.jsp"
					class="font-500 text-primary">Login</a>
			</p>
		</div>
	</div>
	<!-- end wrapper-page -->
	<!-- jQuery  -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/metisMenu.min.js"></script>
	<script src="assets/js/jquery.slimscroll.js"></script>
	<script src="assets/js/waves.min.js"></script>
	<!-- App js -->
	<script src="assets/js/app.js"></script>
</body>
<!-- Mirrored from themesbrand.com/veltrix/layouts/vertical-dark/pages-register.html by HTTrack Website Copier/3.x [XR&CO'2008], Wed, 20 Mar 2019 15:25:42 GMT -->
</html>