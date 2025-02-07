<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- Header -->
<header
	class="header header-custom header-fixed header-one home-head-one">
	<div class="container">
		<nav class="navbar navbar-expand-lg header-nav">
			<div class="navbar-header">
				<a id="mobile_btn" href="javascript:void(0);"> <span
					class="bar-icon"> <span></span> <span></span> <span></span>
				</span>
				</a> <a href="index.jsp" class="navbar-brand logo"> <img
					src="assets/img/doctorfinder-logo.png" class="img-fluid" alt="Logo">
				</a>
			</div>
			<div class="main-menu-wrapper">
				<div class="menu-header">
					<a href="index.jsp" class="menu-logo"> <img
						src="assets/img/doctorfinder-logo.png" class="img-fluid" alt="Logo">
					</a> <a id="menu_close" class="menu-close" href="javascript:void(0);">
						<i class="fas fa-times"></i>
					</a>
				</div>
				<ul class="main-nav">
					<!-- <li class="has-submenu megamenu active"><a href="index.jsp">Home</a> -->
					<li class="login-link"><a href="login.jsp">Login / Signup</a></li>
				</ul>
			</div>
			<ul class="nav header-navbar-rht">


				<%
				String user = (String) session.getAttribute("email");
				if (user != null) {
				%>
				<li class="register-btn"><a href="logout.jsp"
					class="btn btn-primary log-btn"><i class="feather-user"></i>Logout</a>
				</li>
				<%
				} else {
				%>

				<li class="register-btn"><a href="register.jsp"
					class="btn reg-btn"><i class="feather-user"></i>Register</a></li>
				<li class="register-btn"><a href="login.jsp"
					class="btn btn-primary log-btn"><i class="feather-lock"></i>Login</a>
				</li>

				<%
				}
				%>

			</ul>
		</nav>
	</div>
</header>
<!-- /Header -->