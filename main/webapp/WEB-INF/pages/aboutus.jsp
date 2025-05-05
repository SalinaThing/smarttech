<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About US</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css" />
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
					<button onclick="toggleInfo('salina-info')">Show Info</button>
					<button onclick="toggleCV('salina-cv')">Show CV</button>

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

					<div id="salina-cv" class="toggle-content" style="display: none;">
						<p>
							<a href="salina-cv.pdf" target="_blank">Download CV</a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<!-- Rahul -->
		<div class="column">
			<div class="card">
				<img
					src="${pageContext.request.contextPath}/resources/images/aboutus/Rahul Jaiswal.jpg"
					alt="Rahul" style="width: 100px">
				<div class="container">
					<h2>Rahul Jaiswal</h2>
					<p class="title">Art Director</p>
					<button onclick="toggleInfo('rahul-info')">Show Info</button>
					<button onclick="toggleCV('rahul-cv')">Show CV</button>

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

					<div id="rahul-cv" class="toggle-content" style="display: none;">
						<p>
							<a href="${pageContext.request.contextPath}/cv/Rahul-cv.pdf"
								target="_blank">Download CV</a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<!-- Rabison -->
		<div class="column">
			<div class="card">
				<img src="${pageContext.request.contextPath}/resources/images/aboutus/Rabison.jpg"
					alt="Rabison" style="width: 100px">
				<div class="container">
					<h2>Rabison Raj Shakya</h2>
					<p class="title">Full-Stack Developer</p>
					<button onclick="toggleInfo('rabison-info')">Show Info</button>
					<button onclick="toggleCV('rabison-cv')">Show CV</button>

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

					<div id="rabison-cv" class="toggle-content" style="display: none;">
						<p>
							<a href="${pageContext.request.contextPath}/cv/Rabison-cv.pdf"
								target="_blank">Download CV</a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<!-- Kirti -->
		<div class="column">
			<div class="card">
				<img src="${pageContext.request.contextPath}/resources/images/aboutus/Kirti.jpg" alt="Kriti" style="width: 100px">
				<div class="container">
					<h2>Kriti Lama</h2>
					<p class="title">UI Designer</p>
					<button onclick="toggleInfo('kirti-info')">Show Info</button>
					<button onclick="toggleCV('kirti-cv')">Show CV</button>

					<div id="kirti-info" class="toggle-content" style="display: none;">
						<p>Creative and detail-oriented UI/UX designer...</p>
						<p>
							<strong>Graduated From:</strong> [College]
						</p>
						<h4>Skills:</h4>
						<ul>
							<li>Figma, Adobe XD</li>
							<li>HTML, CSS, JS</li>
							<li>Responsive Design</li>
						</ul>
						<p>
							<strong>Email:</strong> kriti@example.com
						</p>
					</div>

					<div id="kirti-cv" class="toggle-content" style="display: none;">
						<p>
							<a href="Kirti-cv.pdf" target="_blank">Download CV</a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<!-- Aastha -->
		<div class="column">
			<div class="card">
				<img src="${pageContext.request.contextPath}/resources/images/aboutus/Aastha.jpg" alt="Aastha" style="width: 100px">
				<div class="container">
					<h2>Aastha Aryal</h2>
					<p class="title">Backend Developer</p>
					<button onclick="toggleInfo('aastha-info')">Show Info</button>
					<button onclick="toggleCV('aastha-cv')">Show CV</button>

					<div id="aastha-info" class="toggle-content" style="display: none;">
						<p>Passionate about backend systems and APIs...</p>
						<p>
							<strong>Graduated From:</strong> [College]
						</p>
						<h4>Skills:</h4>
						<ul>
							<li>Java, Spring Boot</li>
							<li>Node.js</li>
							<li>MySQL, MongoDB</li>
						</ul>
						<p>
							<strong>Email:</strong> aastha@example.com
						</p>
					</div>

					<div id="aastha-cv" class="toggle-content" style="display: none;">
						<p>
							<a href="Aastha-cv.pdf" target="_blank">Download CV</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>
