<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About US</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/about.css" />
</head>
<body>

	<div class="about-section">
		<h1>About Us Page</h1>
		<p>Some text about who we are and what we do..</p>
		<p>Resize the browser window to see that this page is responsive,
			By the way.</p>
	</div>

	<section id="mission" class="about-section">
		<h1>Our Mission</h1>
		<p>To deliver innovative and effective solutions that empower
			communities and businesses.</p>
	</section>

	<section id="history" class="about-section">
		<h1>Our History</h1>
		<p>Founded in 2010, we have consistently delivered top-notch
			Services for over a decade.</p>
	</section>

	<section id="services" class="about-section">
		<h1>Our Services</h1>
		<ul>
			<li>✔️ Web Development</li>
			<li>✔️ UI/UX Design</li>
			<li>✔️ Cloud Deployment</li>
			<li>✔️ Technical Consulting</li>
		</ul>
	</section>

	<h2 style="text-align: center">Our Team</h2>

	<div class="row">
		<!-- Salina -->
		<div class="column">
			<div class="card">
				<img src="Salina Thing.PNG" alt="Salina" style="width: 100px">
				<div class="container">
					<h2>Salina Thing</h2>
					<p class="title">CEO & Founder</p>

					<div id="salina-info" class="toggle-content" style="display: none;">
						<p>I am a curious and passionate coder...</p>
						<p>
							<strong>Graduated From:</strong> GoldenGate International College
						</p>
						<h4>Skills:</h4>
						<ul>
							<li>Database</li>
							<li>HTML, CSS and JavaScript</li>
							<li>Amazon Web Services (AWS)</li>
							<li>Python</li>
						</ul>
						<p>
							<strong>Email:</strong> salinatheeng@gmail.com
						</p>
					</div>
				</div>
			</div>
		</div>

		<!-- Rahul -->
		<div class="column">
			<div class="card">
				<img
					src="${pageContext.request.contextPath}/image/Rahul Jaiswal.jpg"
					alt="Rahul" style="width: 100px">
				<div class="container">
					<h2>Rahul Jaiswal</h2>
					<p class="title">Art Director</p>

					<div id="rahul-info" class="toggle-content" style="display: none;">
						<p>Hardworking and enthusiastic College Student working
							towards a goal...</p>
						<p>
							<strong>Graduated From:</strong> DAV College
						</p>
						<h4>Skills:</h4>
						<ul>
							<li>Database</li>
							<li>HTML, CSS and JavaScript</li>
							<li>Amazon Web Services (AWS)</li>
							<li>Python</li>
							<li>Computer Skills</li>
							<li>Microsoft Word, Excel, PowerPoint</li>
						</ul>
						<p>
							<strong>Email:</strong> rahuljaiswal.473631@gmail.com
						</p>
					</div>


				</div>
			</div>
		</div>

		<!-- Rabison -->
		<div class="column">
			<div class="card">
				<img src="${pageContext.request.contextPath}/image/Rabison.jpg"
					alt="Rabison" style="width: 100px">
				<div class="container">
					<h2>Rabison Raj Shakya</h2>
					<p class="title">Full-Stack Developer</p>

					<div id="rabison-info" class="toggle-content"
						style="display: none;">
						<p>A highly motivated and detail-oritent individual aspiring
							to establish a career in web development</p>
						<p>
							<strong>Graduated From:</strong> Universal College
						</p>
						<h4>Skills:</h4>
						<ul>
							<li>learning Java, JSP, Servlets</li>
							<li>MySQL, Database Design</li>
							<li>HTML, CSS, JavaScript</li>
							<li>Git, react js, node js and Bootstrap</li>
						</ul>
						<p>
							<strong>Email:</strong> rabisonshakya6@gmail.com
						</p>
					</div>

				</div>
			</div>
		</div>

		<!-- Kirti -->
		<div class="column">
			<div class="card">
				<img src="Kirti.jpg" alt="Kirti" style="width: 100px">
				<div class="container">
					<h2>Kirti Lama</h2>
					<p class="title">UI Designer</p>

					<div id="kirti-info" class="toggle-content" style="display: none;">
						<p>Creative and detail-oriented UI/UX designer...</p>
						<p>
							<strong>Graduated From:</strong> DAV College
						</p>
						<h4>Skills:</h4>
						<ul>
							<li>Figma, Adobe XD</li>
							<li>HTML, CSS, JS</li>
							<li>Responsive Design</li>
						</ul>
						<p>
							<strong>Email:</strong> kirti@example.com
						</p>
					</div>
				</div>
			</div>
		</div>

		<!-- Aastha -->
		<div class="column">
			<div class="card">
				<img src="Aastha.jpg" alt="Aastha" style="width: 100px">
				<div class="container">
					<h2>Aastha Aryal</h2>
					<p class="title">Backend Developer</p>

					<div id="aastha-info" class="toggle-content" style="display: none;">
						<p>Dedicated backend developer with a strong grasp of database
							systems and server-side logic.</p>
						<p>
							<strong>Graduated From:</strong> [College Name]
						</p>
						<h4>Skills:</h4>
						<ul>
							<li>Java, JSP, Servlets</li>
							<li>MySQL, PostgreSQL</li>
							<li>Spring Boot</li>
						</ul>
						<p>
							<strong>Email:</strong> aastha@example.com
						</p>
					</div>

				</div>
			</div>
		</div>
	</div>
	<button onclick="toggleInfo('view-info')" class="View_btn">View Details</button>
	<script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>

