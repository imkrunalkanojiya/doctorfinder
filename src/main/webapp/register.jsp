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

<meta charset="utf-8">
<title>Register</title>

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

		<jsp:include page="./templates/header.jsp" />


		<!-- Page Content -->
		<div class="content top-space">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-8 offset-md-2">

						<!-- Register Content -->
						<div class="account-content">
							<div class="row align-items-center justify-content-center">
								<div class="col-md-7 col-lg-6 login-left">
									<img src="assets/img/login-banner.png" class="img-fluid"
										alt="Doccure Register">
								</div>
								<div class="col-md-12 col-lg-6 login-right">
									<div class="login-header">
										<h3>
											Patient Register <a href="#">Are you a Doctor?</a>
										</h3>
									</div>

									<!-- Register Form -->
									<form hx-post="register" hx-target="#status"
										hx-swap="outerHTML" hx-indicator="#indicator">
										<div class="mb-3 form-focus">
											<input type="text" class="form-control floating" name="name"
												required> <label class="focus-label">Name</label>
										</div>
										<div class="mb-3 form-focus">
											<input type="email" class="form-control floating"
												name="email" required> <label class="focus-label">Email
												Address</label>
										</div>
										<div class="mb-3 form-focus">
											<input type="password" class="form-control floating"
												name="password" required> <label class="focus-label">Create
												Password</label>
										</div>
										<div class="text-end">
											<a class="forgot-link" href="login.jsp">Already have an
												account?</a>
										</div>
										<button class="btn btn-primary w-100 btn-lg login-btn"
											type="submit">Signup</button>

									</form>
									<!-- /Register Form -->

									<div id="status"></div>

									<!-- Loader Overlay using Bootstrap -->
									<div class="htmx-indicator d-flex justify-content-center"
										id="indicator">
										<div class="spinner-border" role="status"></div>
									</div>

								</div>
							</div>
						</div>
						<!-- /Register Content -->

					</div>
				</div>

			</div>

		</div>
		<!-- /Page Content -->

		<jsp:include page="./templates/footer.jsp" />

	</div>
	<!-- /Main Wrapper -->

	<!-- jQuery -->
	<script data-cfasync="false"
		src="https://doccure.dreamstechnologies.com/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="assets/js/jquery-3.7.1.min.js"
		type="2f7cbde13e133c4c8fe1347f-text/javascript"></script>

	<!-- Bootstrap Core JS -->
	<script src="assets/js/bootstrap.bundle.min.js"
		type="2f7cbde13e133c4c8fe1347f-text/javascript"></script>

	<!-- Custom JS -->
	<script src="assets/js/script.js"
		type="2f7cbde13e133c4c8fe1347f-text/javascript"></script>

	<script src="assets/js/rocket-loader.min.js"
		data-cf-settings="5325059b13f1f6b5faaa69bf-|49" defer></script>
</body>

</html>