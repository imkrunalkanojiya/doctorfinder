<!DOCTYPE html> 
<html lang="en">
	
<head>
		
		<meta charset="utf-8">
		<title>DoctorFinder</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- Favicons -->
		<link href="assets/img/favicon.png" rel="icon">
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

		<!-- Feathericon CSS -->
    	<link rel="stylesheet" href="assets/css/feather.css">
		
		<!-- Main CSS -->
		<link rel="stylesheet" href="assets/css/custom.css">
	
	</head>
	<body class="account-page">

		<!-- Main Wrapper -->
		<div class="main-wrapper">
		
			<!-- Header -->
			<jsp:include page="./templates/header.jsp" />
			<!-- /Header -->	
			
			<!-- Page Content -->
			<div class="content top-space">
				<div class="container-fluid">
					
					<div class="row">
						<div class="col-md-8 offset-md-2">
								
							<!-- Register Content -->
							<div class="account-content">
								<div class="row align-items-center justify-content-center">
									<div class="col-md-7 col-lg-6 login-left">
										<img src="assets/img/login-banner.png" class="img-fluid" alt="Doccure Register">	
									</div>
									<div class="col-md-12 col-lg-6 login-right">
										<div class="login-header">
											<h3>Patient Register <a href="doctor-register.html">Are you a Doctor?</a></h3>
										</div>
										
										<!-- Register Form -->
										<form action="https://doccure.dreamstechnologies.com/html/template/patient-register-step1.html">
											<div class="mb-3 form-focus">
												<input type="text" class="form-control floating">
												<label class="focus-label">Name</label>
											</div>
											<div class="mb-3 form-focus">
												<input type="text" class="form-control floating">
												<label class="focus-label">Mobile Number</label>
											</div>
											<div class="mb-3 form-focus">
												<input type="password" class="form-control floating">
												<label class="focus-label">Create Password</label>
											</div>
											<div class="text-end">
												<a class="forgot-link" href="login.html">Already have an account?</a>
											</div>
											<button class="btn btn-primary w-100 btn-lg login-btn" type="submit">Signup</button>
											<div class="login-or">
												<span class="or-line"></span>
												<span class="span-or">or</span>
											</div>
											<div class="row social-login">
												<div class="col-6">
													<a href="#" class="btn btn-facebook w-100"><i class="fab fa-facebook-f me-1"></i> Login</a>
												</div>
												<div class="col-6">
													<a href="#" class="btn btn-google w-100"><i class="fab fa-google me-1"></i> Login</a>
												</div>
											</div>
										</form>
										<!-- /Register Form -->
										
									</div>
								</div>
							</div>
							<!-- /Register Content -->
								
						</div>
					</div>

				</div>

			</div>		
			<!-- /Page Content -->
   
			<!-- Footer -->
			<jsp:include page="./templates/footer.jsp" />
			<!-- /Footer -->
		   
		</div>
		<!-- /Main Wrapper -->
	  		
		<!-- Bootstrap Core JS -->
		<script src="assets/js/bootstrap.bundle.min.js" type="2f7cbde13e133c4c8fe1347f-text/javascript"></script>
		
		<!-- Custom JS -->
		<script src="assets/js/script.js" type="2f7cbde13e133c4c8fe1347f-text/javascript"></script>
		
</html>