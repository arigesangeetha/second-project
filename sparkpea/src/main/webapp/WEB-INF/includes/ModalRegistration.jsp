
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/AngularControllers/App.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/AngularControllers/Home.js"></script>
<%-- <%@include file="/WEB-INF/includes/Frameworks.jsp" %> --%>
 <style>

body {
	background: url(http://lorempixel.com/1920/1920/city/9/) no-repeat
		center center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}

.panel-default {
	opacity: 0.9;
	margin-top: 30px;
}

.form-group.last {
	margin-bottom: 0px;
}
/* =====Login=====*/
body [role="login"] {
	font-family: 'Roboto', sans-serif;
	background: #045404;
	background-size: cover;
	color: #EFEFEF
}

[role="login"] .container {
	margin-top: 100px
}

[role="login"] .btn-success {
	background: #76B831;
	border: 1px solid #679F2C;
	float: right
}

[role="login"] label {
	font-weight: normal;
	color: #FFF
}

.panel-heading {
	padding: 5px 15px;
}

.form-inline {
	margin: 5px
}

.panel-footer {
	padding: 1px 15px;
	color: #A0A0A0;
}

hr {
	border: 0;
	height: 1px;
	background-image: linear-gradient(to right, rgba(0, 0, 0, 0), #FFF,
		rgba(0, 0, 0, 0));
	margin: 5px
}

.profile-img {
	margin: 0 auto 10px;
	display: block;
}

.panel-default {
	opacity: .9;
	-webkit-box-shadow: 0px 7px 24px 1px rgba(0, 0, 0, 0.45);
	-moz-box-shadow: 0px 7px 24px 1px rgba(0, 0, 0, 0.45);
	box-shadow: 0px 7px 24px 1px rgba(0, 0, 0, 0.45);
	background: transparent url('http://3rwebtech.com/bg-white.png') repeat
		scroll 0% 0%;
}
</style>
  <div class="container-fluid">
                <div class="row-fluid" >
                <div class="modal fade" id="registration" role="dialog" style="background: url('http://farm3.staticflickr.com/2832/12303719364_c25cecdc28_b.jpg') fixed;">
                     
                     <div class="modal-dialog"  >


			<div class="modal-content" style="background: #EFEFEF;">
				<div class="modal-header" style="padding: 15px 50px; background: #76B831;color: white;font-family:algerian">
					<h4  >SPARKPEA REGISTRATION</h4>
				</div>
				<div class="modal-body" style="padding: 30px 50px;">

					

						<div class="panel-body">
					
					
					<form role="form" data-ng-submit="submit()"
						data-ng-controller="RegController" method="post">
						<div class="form-group form-group-sm">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-plus"></i>
								</div>
								<input type="text" class="form-control" placeholder="Name"
									data-ng-model="name">
							</div>
							<br>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-user"></i>
								</div>
								<input type="text" class="form-control" placeholder="Username"
									data-ng-model="username">
							</div>
							<br>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-lock"></i>
								</div>
								<input type="password" class="form-control"
									placeholder="Password" data-ng-model="password">
							</div>
							<br>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-lock"></i>
								</div>
								<input type="password" class="form-control"
									data-ng-model="Confirm_Password"
									placeholder="Re Enter Password">
							</div>
							<br>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-envelope"></i>
								</div>
								<input type="email" class="form-control" placeholder="Email"
									data-ng-model="email">
							</div>
							<br>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-phone"></i>
								</div>
								<input type="text" class="form-control"
									placeholder="Mobile Number" data-ng-model="mobile">
							</div>
							<br>
							<div class="input-group">
								<label class="radio-inline"> <input type="radio"
									name="optradio" value="Male" data-ng-model="gender">Male
								</label> <label class="radio-inline"> <input type="radio"
									value="Female" name="optradio" data-ng-model="gender">Female
								</label>
							</div>
						</div>
						<!-- <p>By clicking Create an account, you agree to our Terms and
							that you have read our Data Policy, including our Cookie Use.</p>
 -->						<br>
						<button type="submit" class="btn btn-info btn-block">
							<span class="glyphicon glyphicon-off"></span> Register
						</button>
					</form>
				</div>
						
					</div>

				</div>
			</div>
		</div>
	</div>
</div>