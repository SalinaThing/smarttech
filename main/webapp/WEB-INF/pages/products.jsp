<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String contextPath = request.getContextPath();
%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Products | SmartTech</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/products.css" />
</head>

<body>
<!-- Include header -->
<jsp:include page="header.jsp" />

<div class="page-header">
	<h1>Premium Tech Appliances</h1>
	<p>Find the perfect appliances as per your choice</p>
</div>

<div class="main-content">
	<!-- Filter Sidebar -->
	<div class="filter-sidebar">
		<form method="get" action="${pageContext.request.contextPath}/product">
			<!-- Categories -->
			<div class="filter-section">
				<h3 class="filter-title">Categories</h3>
				<div class="filter-group">
					<div class="filter-checkbox">
						<input type="checkbox" id="category-ac" name="category" value="ac">
						<label for="category-ac">Air Conditioners</label>
					</div>
					<div class="filter-checkbox">
						<input type="checkbox" id="category-fan" name="category"
							value="fan"> <label for="category-fan">Fans</label>
					</div>
					<div class="filter-checkbox">
						<input type="checkbox" id="category-fridge" name="category"
							value="fridge" checked> <label for="category-fridge">Fridges</label>
					</div>
				</div>
			</div>

			<!-- Price Range -->
			<div class="filter-section">
				<h3 class="filter-title">Price Range</h3>
				<div class="filter-group">
					<select id="price-range" name="price-range">
						<option value="">All Prices</option>
						<option value="0-20000">Under $20,000</option>
						<option value="20000-40000">$20,000 - $40,000</option>
						<option value="40000-60000">$40,000 - $60,000</option>
						<option value="60000-100000">$60,000 - $1,00,000</option>
						<option value="100000">Above $1,00,000</option>
					</select>
				</div>
			</div>



			<!-- Features -->
			<div class="filter-section">
				<h3 class="filter-title">Features</h3>
				<div class="filter-group">
					<div class="filter-checkbox">
						<input type="checkbox" id="feature-smart" name="feature"
							value="smart"> <label for="feature-smart">Smart
							Connectivity</label>
					</div>
					<div class="filter-checkbox">
						<input type="checkbox" id="feature-energy" name="feature"
							value="energy"> <label for="feature-energy">Energy
							Star Rated</label>
					</div>
					<div class="filter-checkbox">
						<input type="checkbox" id="feature-inverter" name="feature"
							value="inverter"> <label for="feature-inverter">Inverter
							Technology</label>
					</div>
				</div>
			</div>

			<!-- Filter Buttons -->
			<button type="submit" class="apply-filters">Apply Filters</button>
			<button type="reset" class="clear-filters">Clear All Filters</button>
		</form>
	</div>

	<!-- Product Main Content -->
	<div class="product-main">
		<h2 class="category-title">All Products</h2>

		<div class="product-grid">
			<!-- AC 1 -->
			<div class="product-card" data-category="ac" data-brand="voltas"
				data-price="20999">
				<div class="product-card-wrapper">
					<span class="discount-badge">20% OFF</span> <img
						src="${pageContext.request.contextPath}/resources/images/products/ac/portable_ac.jpg"
						alt="Portable AC" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">Portable AC</h3>
					<div class="product-price">
						<span class="current-price">$30,999</span> <span
							class="original-price">$45,999</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="101" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="101" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- Fan 1 -->
			<div class="product-card" data-category="fan" data-brand="bajaj"
				data-price="2499">
				<div class="product-card-wrapper">
					<span class="discount-badge">25% OFF</span> <img
						src="${pageContext.request.contextPath}/resources/images/products/fan/portable_fan.jpg"
						alt="Portable Fan" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">Premium Portable Fan</h3>
					<div class="product-price">
						<span class="current-price">$22,724</span> <span
							class="original-price">$30,299</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="201" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="201" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- Fridge 1 -->
			<div class="product-card" data-category="fridge" data-brand="lg"
				data-price="52999">
				<div class="product-card-wrapper">
					<span class="discount-badge">18% OFF</span> <img
						src="${pageContext.request.contextPath}/resources/images/products/fridge/sidebyside_fridge.jpg"
						alt="Side by Side Fridge" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">Side by Side Fridge</h3>
					<div class="product-price">
						<span class="current-price">$52,999</span> <span
							class="original-price">$64,999</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="301" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="301" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- AC 2 -->
			<div class="product-card" data-category="ac" data-brand="voltas"
				data-price="20999">
				<div class="product-card-wrapper">
					<span class="discount-badge">10% OFF</span> <img
						src="${pageContext.request.contextPath}/resources/images/products/ac/ac1.jpg"
						alt="Ceiling AC" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">Ceiling AC 2 Ton</h3>
					<div class="product-price">
						<span class="current-price">$40,999</span> <span
							class="original-price">$55,999</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="102" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="102" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- Fan 2 -->
			<div class="product-card" data-category="fan" data-brand="bajaj"
				data-price="1799">
				<div class="product-card-wrapper">
					<img
						src="${pageContext.request.contextPath}/resources/images/products/fan/table_fan.jpg"
						alt="Table Fan" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">High Speed Table Fan</h3>
					<div class="product-price">
						<span class="current-price">$50,799</span> <span
							class="original-price">$55,999</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="202" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="202" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- Fridge 2 -->
			<div class="product-card" data-category="fridge"
				data-brand="whirlpool" data-price="24999">
				<div class="product-card-wrapper">
					<img
						src="${pageContext.request.contextPath}/resources/images/products/fridge/fridge.jpg"
						alt="Top Freezer Fridge" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">Top Freezer Refrigerator</h3>
					<div class="product-price">
						<span class="current-price">$64,999</span>
					</div>
					<div class="product-actions">
						<form method="post" action="/smarttech/ProductDetail">
							<input type="hidden" name="productId" value="302" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="302" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- AC 3 -->
			<div class="product-card" data-category="ac" data-brand="voltas"
				data-price="20999">
				<div class="product-card-wrapper">
					<span class="discount-badge">20% OFF</span> <img
						src="${pageContext.request.contextPath}/resources/images/products/ac/carrierac.jpg"
						alt="Carrier 2 Ton AC" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">Carrier 2 Ton AC</h3>
					<div class="product-price">
						<span class="current-price">$50,999</span> <span
							class="original-price">$65,999</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="103" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="103" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- Fan 3 -->
			<div class="product-card" data-category="fan" data-brand="bajaj"
				data-price="1799">
				<div class="product-card-wrapper">
					<img
						src="${pageContext.request.contextPath}/resources/images/products/fan/ventilator.jpg"
						alt="ventilator Fan" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">Ventilator Fan</h3>
					<div class="product-price">
						<span class="current-price">$90,799</span> <span
							class="original-price">$99,999</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="203" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="203" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- Fridge 3 -->
			<div class="product-card" data-category="fridge"
				data-brand="whirlpool" data-price="24999">
				<div class="product-card-wrapper">
					<img
						src="${pageContext.request.contextPath}/resources/images/products/fridge/vehicle_mountedfridge.jpg"
						alt="Mounted Fridge" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">Mounted Refrigerator</h3>
					<div class="product-price">
						<span class="current-price">$64,999</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="303" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="303" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- AC 4 -->
			<div class="product-card" data-category="ac" data-brand="samsung"
				data-price="38999">
				<div class="product-card-wrapper">
					<span class="discount-badge">15% OFF</span> <img
						src="${pageContext.request.contextPath}/resources/images/products/ac/inverter_ac.jpg"
						alt="Inverter AC" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">Inverter AC 1.5 Ton</h3>
					<div class="product-price">
						<span class="current-price">$39,099</span> <span
							class="original-price">$45,999</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="104" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="104" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- Fan 4 -->
			<div class="product-card" data-category="fan" data-brand="bajaj"
				data-price="1799">
				<div class="product-card-wrapper">
					<img
						src="${pageContext.request.contextPath}/resources/images/products/fan/wall_fan.png"
						alt="Wall Fan" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">Wall Fan</h3>
					<div class="product-price">
						<span class="current-price">$50,799</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="204" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="204" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- Fridge 4 -->
			<div class="product-card" data-category="fridge"
				data-brand="whirlpool" data-price="24999">
				<div class="product-card-wrapper">
					<img
						src="${pageContext.request.contextPath}/resources/images/products/fridge/french_doorfridge.jpg"
						alt="French Fridge" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">French Refrigerator</h3>
					<div class="product-price">
						<span class="current-price">$74,999</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="304" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="304" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- AC 5 -->
			<div class="product-card" data-category="ac" data-brand="voltas"
				data-price="20999">
				<div class="product-card-wrapper">
					<span class="discount-badge">15% OFF</span> <img
						src="${pageContext.request.contextPath}/resources/images/products/ac/modern_ac.jpg"
						alt="Modern AC" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">Modern AC</h3>
					<div class="product-price">
						<span class="current-price">$80,999</span> <span
							class="original-price">$75,999</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="105" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="105" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- Fridge 5 -->
			<div class="product-card" data-category="fridge"
				data-brand="whirlpool" data-price="24999">
				<div class="product-card-wrapper">
					<img
						src="${pageContext.request.contextPath}/resources/images/products/fridge/mini_fridge.jpg"
						alt="Mini Fridge" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">Mini Refrigerator</h3>
					<div class="product-price">
						<span class="current-price">$60,999</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="305" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="305" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- AC 6 -->
			<div class="product-card" data-category="ac" data-brand="voltas"
				data-price="20999">
				<div class="product-card-wrapper">
					<span class="discount-badge">10% OFF</span> <img
						src="${pageContext.request.contextPath}/resources/images/products/ac/blacklg_ac.jpg"
						alt="Ceiling AC" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">Portable AC</h3>
					<div class="product-price">
						<span class="current-price">$20,999</span> <span
							class="original-price">$25,999</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="106" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="106" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- Fan 6 -->
			<div class="product-card" data-category="fan" data-brand="bajaj"
				data-price="1799">
				<div class="product-card-wrapper">
					<img
						src="${pageContext.request.contextPath}/resources/images/products/fan/portable_fan.jpg"
						alt="DualFan Ac" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">Dual Fan Ac</h3>
					<div class="product-price">
						<span class="current-price">$90,799</span> <span
							class="original-price">$105,999</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="206" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="206" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- Fridge 6 -->
			<div class="product-card" data-category="fridge"
				data-brand="whirlpool" data-price="24999">
				<div class="product-card-wrapper">
					<img
						src="${pageContext.request.contextPath}/resources/images/products/fridge/fridge_kitchen.jpg"
						alt="Kitchen Fridge" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">kitchen fridge</h3>
					<div class="product-price">
						<span class="current-price">$80,999</span> <span
							class="original-price">$95,999</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="306" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="306" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- AC 7 -->
			<div class="product-card" data-category="ac" data-brand="voltas"
				data-price="20999">
				<div class="product-card-wrapper">
					<span class="discount-badge">20% OFF</span> <img
						src="${pageContext.request.contextPath}/resources/images/products/ac/split_ac.jpg"
						alt="Split AC" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">Split AC</h3>
					<div class="product-price">
						<span class="current-price">$50,999</span> <span
							class="original-price">$65,999</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="107" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="107" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- Fan 7 -->
			<div class="product-card" data-category="fan" data-brand="bajaj"
				data-price="1799">
				<div class="product-card-wrapper">
					<img
						src="${pageContext.request.contextPath}/resources/images/products/fan/industrial_fan.jpg"
						alt="Industrial Fan" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">Industrial Fan</h3>
					<div class="product-price">
						<span class="current-price">$60,799</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="207" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="207" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- Fridge 7 -->
			<div class="product-card" data-category="fridge"
				data-brand="whirlpool" data-price="24999">
				<div class="product-card-wrapper">
					<img
						src="${pageContext.request.contextPath}/resources/images/products/fridge/mini_fridge.jpg"
						alt="Mini Fridge" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">Mini Refrigerator</h3>
					<div class="product-price">
						<span class="current-price">$14,999</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="307" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="307" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- AC 8 -->
			<div class="product-card" data-category="ac" data-brand="voltas"
				data-price="20999">
				<div class="product-card-wrapper">
					<span class="discount-badge">20% OFF</span> <img
						src="${pageContext.request.contextPath}/resources/images/products/ac/floor_ac.jpg"
						alt="Floor AC" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">Floor AC</h3>
					<div class="product-price">
						<span class="current-price">$22,999</span> <span
							class="original-price">$35,999</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="108" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="108" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- Fan 8 -->
			<div class="product-card" data-category="fan" data-brand="bajaj"
				data-price="1799">
				<div class="product-card-wrapper">
					<img
						src="${pageContext.request.contextPath}/resources/images/products/fan/table_fan.jpg"
						alt="Table Fan" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">High Speed Table Fan</h3>
					<div class="product-price">
						<span class="current-price">$10,799</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="208" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="208" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- Fridge 8 -->
			<div class="product-card" data-category="fridge"
				data-brand="whirlpool" data-price="24999">
				<div class="product-card-wrapper">
					<img
						src="${pageContext.request.contextPath}/resources/images/products/fridge/topfridge.jpg"
						alt="Top Freezer Fridge" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">Top Freezer Refrigerator</h3>
					<div class="product-price">
						<span class="current-price">$34,999</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="308" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="308" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>

			<!-- ac 9 -->
			<div class="product-card" data-category="ac" data-brand="samsung"
				data-price="38999">
				<div class="product-card-wrapper">
					<span class="discount-badge">13% OFF</span> <img
						src="${pageContext.request.contextPath}/resources/images/products/ac/waterdropicon_ac.jpg"
						alt="Water drop AC" class="product-image">
				</div>
				<div class="product-info">
					<h3 class="product-title">water drop ac</h3>
					<div class="product-price">
						<span class="current-price">$48,999</span> <span
							class="original-price">$59,999</span>
					</div>
					<div class="product-actions">
						<form method="post"
							action="${pageContext.request.contextPath}/productdetails">
							<input type="hidden" name="productId" value="109" />
							<button type="submit" class="btn btn-details">View
								Details</button>
						</form>
						<form method="post"
							action="${pageContext.request.contextPath}/addtocart">
							<input type="hidden" name="productId" value="101" />
							<button type="submit" class="btn btn-buy">Buy Now</button>
							<button type="submit" name="action" value="add"
								class="btn btn-cart">Add to Cart</button>
						</form>
					</div>
				</div>
			</div>


		</div>
	</div>
</div>
<!-- Include footer -->
<jsp:include page="footer.jsp" />

</body>
</html>