<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<link href="webjars/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">

<link href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css" rel="stylesheet">
<link href="css/login.css" rel="stylesheet">
</head>
<body>
	<%@ include file="common/header.jspf"%>
	<%@ include file="common/navigation.jspf"%>

	<div class="limiter">
		<div class="container-login100"
			style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100">
				<form class="login100-form validate-form">
					<span class="login100-form-logo"> <i
						class="zmdi zmdi-landscape"></i>
					</span> <span class="login100-form-title p-b-34 p-t-27"> Log in </span>

					<div class="wrap-input100 validate-input"
						data-validate="Enter username">
						<input class="input100" type="text" name="username"
							> <span class="focus-input100"
							data-placeholder="&#61447;"></span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Enter password">
						<input class="input100" type="password" name="pass"
							> <span class="focus-input100 inputPass"
							data-placeholder="&#xf191;"></span>
					</div>

					<!-- <div class="contact100-form-checkbox">
						<input class="input-checkbox100" id="ckb1" type="checkbox"
							name="remember-me"> <label class="label-checkbox100"
							for="ckb1"> Remember me </label>
					</div> -->

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">Login</button>
					</div>

					<!-- <div class="text-center p-t-90">
						<a class="txt1" href="#"> Forgot Password? </a>
					</div> -->
				</form>
			</div>
		</div>
	</div>
</body>
<script src="webjars/jquery/3.1.1/jquery.min.js"></script>
</html>
