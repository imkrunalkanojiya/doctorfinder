<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
	<head>

		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1" >
		<title>DoctorFinder</title>
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">
		
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
	<body>

		<!-- Main Wrapper -->
		<div class="main-wrapper">
					
			<!-- Header -->
			<jsp:include page="./templates/header.jsp" />

			<!-- /Header -->

			<!-- Breadcrumb -->
			<div class="breadcrumb-bar-two">
				<div class="container">
					<div class="row align-items-center inner-banner">
						<div class="col-md-12 col-12 text-center">
							<h2 class="breadcrumb-title">Coming Soon</h2>
							<nav aria-label="breadcrumb" class="page-breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index.html">Home</a></li>
									<li class="breadcrumb-item" aria-current="page">Coming Soon</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
			<!-- /Breadcrumb -->

			<!-- Coming Soon -->
			<section class="error-section">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-8 col-md-12 text-center">
							<div class="error-info">
								<div class="error-img">
									<img src="assets/img/coming-soon.png" class="img-fluid" alt="coming-soon-image">
								</div>
								<div class="error-content">
									<h2>We're Launching Soon!</h2>
									<p>We're currently working hard on this page.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- /Coming Soon -->			

			<!-- Footer -->
			<jsp:include page="./templates/footer.jsp" />

			<!-- /Footer -->

			<!-- Cursor -->
			<div class="mouse-cursor cursor-outer"></div>
			<div class="mouse-cursor cursor-inner"></div>
			<!-- /Cursor -->
		
		</div>		
		<!-- /Main Wrapper -->
			
		<!-- Bootstrap Bundle JS -->
		<script src="assets/js/bootstrap.bundle.min.js" type="84d6ef02cfee937193f521b7-text/javascript"></script>
		
		<!-- Feather Icon JS -->
		<script src="assets/js/feather.min.js" type="84d6ef02cfee937193f521b7-text/javascript"></script>
				
		<!-- Custom JS -->
		<script src="assets/js/script.js" type="84d6ef02cfee937193f521b7-text/javascript"></script>
	
</html>