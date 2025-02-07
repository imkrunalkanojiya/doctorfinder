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

<!-- Mirrored from doccure.dreamstechnologies.com/html/template/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 10 Jan 2025 11:25:02 GMT -->
<head>

<meta charset="utf-8">
<title>Login</title>

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">

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
<body class="account-page">

	<!-- Main Wrapper -->
	<div class="main-wrapper">

		<!-- Header -->
		<jsp:include page="./templates/header.jsp" />

		<!-- Page Content -->
		<div class="content top-space">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-8 offset-md-2">

						<!-- Login Tab Content -->
						<div class="account-content">
							<div class="row align-items-center justify-content-center">
								<div class="col-md-7 col-lg-6 login-left">
									<img src="assets/img/login-banner.png" class="img-fluid"
										alt="Doccure Login">
								</div>
								<div class="col-md-12 col-lg-6 login-right">
									<div class="login-header">
										<h3>
											Login <span>Doctor Finder</span>
										</h3>
									</div>
									<form hx-post="login" hx-target="body" hx-swap="outerHTML" hx-indicator="#indicator">
										<div class="mb-3 form-focus">
											<input type="email" class="form-control floating"
												name="email" required> <label class="focus-label">Email</label>
										</div>
										<div class="mb-3 form-focus">
											<input type="password" class="form-control floating"
												name="password" required> <label class="focus-label">Password</label>
										</div>
										<div class="text-end">
											<a class="forgot-link" href="forgot-password.jsp">Forgot
												Password ?</a>
										</div>
										<button class="btn btn-primary w-100 btn-lg login-btn"
											type="submit">Login</button>

										<div class="text-center dont-have">
											Don’t have an account? <a href="register.jsp">Register</a>
										</div>
									</form>
								</div>
							</div>
						</div>
						<!-- /Login Tab Content -->

						<div id="status"></div>

						<!-- Loader Overlay using Bootstrap -->
						<div class="htmx-indicator d-flex justify-content-center"
							id="indicator">
							<div class="spinner-border" role="status"></div>
						</div>

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

	<!-- jQuery -->
	<script data-cfasync="false"
		src="https://doccure.dreamstechnologies.com/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="assets/js/jquery-3.7.1.min.js"
		type="e5f2b6db7cdaf53d14995030-text/javascript"></script>

	<!-- Bootstrap Core JS -->
	<script src="assets/js/bootstrap.bundle.min.js"
		type="e5f2b6db7cdaf53d14995030-text/javascript"></script>

	<!-- Custom JS -->
	<script src="assets/js/script.js"
		type="e5f2b6db7cdaf53d14995030-text/javascript"></script>

	<script src="assets/js/rocket-loader.min.js" data-cf-settings="5325059b13f1f6b5faaa69bf-|49" defer></script>
</body>

</html>