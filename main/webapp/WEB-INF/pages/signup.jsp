<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Signup</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/signup.css">
</head>
<body>
	<div class="signup-form">
		<h2>Sign Up Form</h2>
		<div class="container">
			<%
			String errorMessage = (String) request.getAttribute("error");
			String successMessage = (String) request.getAttribute("success");

			if (errorMessage != null && !errorMessage.isEmpty()) {
				out.println("<p class=\"error-message\">" + errorMessage + "</p>");
			}

			if (successMessage != null && !successMessage.isEmpty()) {
			%>
			<p class="success-message"><%=successMessage%></p>
			<%
			}
			%>
			<div class="main">
				<form action="${pageContext.request.contextPath}/signup.jsp" method="post"
					enctype="multipart/form-data">
					<div class="content">
						<input type="text" id="fullName" name="fullName"
							placeholder="Full Name" value="Rabison Raj Shakya" required
							autofocus> <input type="email" id="email" name="email"
							value="rabisonshakya6@gmail.com" required> <input
							type="text" id="userName" name="userName" placeholder="User Name"
							value="rabisonshakya" required> <input type="text"
							id="phoneNumber" name="phoneNumber" placeholder="Phone No."
							value="9861492520" required> <input type="text"
							id="address" name="address" placeholder="Address"
							value="Gyaneshwor Ratopul" required> <input
							type="password" id="password" name="password"
							placeholder="Password" value="@Utility007#" required> <input
							type="password" name="confirmPassword"
							placeholder="Confirm Password" value="@Utility007#" required>
					</div>

					<div class="contents">
						<div class="date-details">
							<span class="date-title"
								style="margin: 10px; font-size: 18px; font-weight: bold;">Birth
								Date</span> <input name="birthDate" type="date" id="Birthday">
						</div>

						<div class="gender-details">
							<input type="radio" name="gender" value="Male" id="zero-1">
							<input type="radio" name="gender" value="Female" id="zero-2">
							<span class="gender-title">Gender</span>
							<div class="category">
								<label for="zero-1"> <span class="zero one"></span> <span
									class="gender">Male</span>
								</label> <label for="zero-2"> <span class="zero two"></span> <span
									class="gender">Female</span>
								</label>
							</div>
						</div>

						<div class="form-group">
							<div class="col">
								<label for="image">Profile Picture</label> <input type="file"
									name="image" id="image">
							</div>
						</div>

						<button class="btn" type="submit">Signup</button>
						<p class="account">
							Already have an account? <a
								href="${pageContext.request.contextPath}/login.jsp">Login</a>
						</p>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
