<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
String user = (String) session.getAttribute("email");
if (user != null) {
	response.sendRedirect("index.jsp");
}
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Forgot Password</title>
<!-- Favicon -->
<link rel="shortcut icon" href="assets/img/favicon.png"
	type="image/x-icon">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet"
	href="assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

<!-- Feathericon CSS -->
<link rel="stylesheet" href="assets/css/feather.css">

<!-- Main CSS -->
<link rel="stylesheet" href="assets/css/custom.css">

<script src="https://unpkg.com/htmx.org@1.9.2"></script>

</head>
<body class="login-body">

	<!-- Main Wrapper -->
	<div class="main-wrapper">

		<!-- Header -->
		<jsp:include page="./templates/header.jsp" />
		<!-- /Header -->

		<!-- Page Content -->
		<div class="login-content-info">
			<div class="container">

				<!-- Forgot Password -->
				<div class="row justify-content-center">
					<div class="col-lg-4 col-md-6">
						<div class="account-content">
							<div class="login-shapes">
								<div class="shape-img-left">
									<img src="assets/img/shape-01.png" alt="shape-image">
								</div>
								<div class="shape-img-right">
									<img src="assets/img/shape-02.png" alt="shape-image">
								</div>
							</div>
							<div class="account-info">

								<div class="login-title">
									<h3>Password Recovery</h3>
									<p class="mb-0">Enter your email and we will send you a
										link to reset your password.</p>
								</div>
								<form hx-post="forgot-password" hx-target="#response"
									hx-indicator="#indicator" method="post">
									<div class="mb-3">
										<label class="mb-2">E-mail</label> <input type="email"
											name="email" class="form-control"
											placeholder="example@email.com">
									</div>
									<div class="mb-3">
										<button class="btn w-100" type="submit">Send Reset
											Link</button>

									</div>


								</form>
								<div id="response"></div>

								<!-- Loader Overlay using Bootstrap -->
								<div class="htmx-indicator d-flex justify-content-center"
									id="indicator">
									<div class="spinner-border" role="status"></div>
								</div>

							</div>
						</div>
					</div>
				</div>
				<!-- /Forgot Password -->

			</div>
		</div>
		<!-- /Page Content -->

		<!-- Cursor -->
		<div class="mouse-cursor cursor-outer"></div>
		<div class="mouse-cursor cursor-inner"></div>
		<!-- /Cursor -->

	</div>
	<!-- /Main Wrapper -->

	<!-- jQuery -->
	<script src="assets/js/jquery-3.7.1.min.js"
		type="881c03918dcfce55dd132fcc-text/javascript"></script>

	<!-- Bootstrap Bundle JS -->
	<script src="assets/js/bootstrap.bundle.min.js"
		type="881c03918dcfce55dd132fcc-text/javascript"></script>

	<!-- Feather Icon JS -->
	<script src="assets/js/feather.min.js"
		type="881c03918dcfce55dd132fcc-text/javascript"></script>

	<!-- Custom JS -->
	<script src="assets/js/script.js"
		type="881c03918dcfce55dd132fcc-text/javascript"></script>

	<script src="assets/js/rocket-loader.min.js" data-cf-settings="5325059b13f1f6b5faaa69bf-|49" defer></script>
</body>

</html>