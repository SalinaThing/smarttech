<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%@ page session="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Salina Thing">
    <title>SmartTech - Premium Appliances</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/productdetails.css" />
</head>

<body>
    <!-- Include header -->
    <jsp:include page="header.jsp" />

    <!-- Category Navigation -->
    <div class="main-container">
        <div class="category-nav">
            <button class="category-btn active" onclick="showCategory('ac')">Air Conditioners</button>
            <button class="category-btn" onclick="showCategory('fridges')">Refrigerators</button>
            <button class="category-btn" onclick="showCategory('fans')">Fans</button>
        </div>
    </div>

    <!-- Air Conditioners Section -->
    <div class="main-container" id="ac-section">
        <div class="first-container">
            <div class="image-container">
                <div class="big-image">
                    <img src="${pageContext.request.contextPath}/resources/images/products/ac/portable_ac.jpg" id="big-image" alt="Portable 1.5 Ton AC">
                </div>
                <div class="small-image-container">
                    <img src="${pageContext.request.contextPath}/resources/images/products/ac/portable_ac.jpg" alt="Portable AC Front View" onclick="change_image(this)" class="active">
                    <img src="${pageContext.request.contextPath}/resources/images/products/ac/front_portableac.jpg" alt="Portable AC Side View" onclick="change_image(this)">
                    <img src="${pageContext.request.contextPath}/resources/images/products/ac/ac_remote.jpg" alt="Portable AC Remote" onclick="change_image(this)">
                    <img src="${pageContext.request.contextPath}/resources/images/products/ac/portableinstallation_ac.jpg" alt="Portable AC Installation" onclick="change_image(this)">
                </div>
            </div>
            <div class="body-container">
                <h1 class="body-title">Portable 1.5 Ton 3 Star Split AC (Copper, PM 2.5 Filter)</h1>
                
                <div class="ratings">
                    <c:forEach begin="1" end="4">
                        <img src="https://cdn-icons-png.flaticon.com/512/1828/1828884.png" alt="Star">
                    </c:forEach>
                    <img src="https://cdn-icons-png.flaticon.com/512/1828/1828970.png" alt="Empty Star">
                    <span class="review-count">(127 reviews)</span>
                </div>
                
                <div class="body-best-deals">
                    <div class="head">Special Offer</div>
                    <div class="body">Free Installation + 5 Year Warranty</div>
                </div>
                
                <div class="price-container">
                    <div class="selling-price"><fmt:formatNumber value="36799" type="currency" currencySymbol="$"/></div>
                    <div class="marked-price"><fmt:formatNumber value="45999" type="currency" currencySymbol="$"/></div>
                    <div class="discount-badge">Save $9,200</div>
                </div>
                
                <div class="product-features">
                    <h3>Key Features:</h3>
                    <ul class="feature-list">
                        <li>1.5 Ton Capacity - Suitable for medium sized rooms</li>
                        <li>3 Star Energy Rating - Energy efficient</li>
                        <li>Portable Compressor - Variable speed operation</li>
                        <li>Powerful cooling with low noise operation</li>
                    </ul>
                </div>
                
                <div class="quantity">
                    <div class="quantity-label">Quantity:</div>
                    <div class="quantity-input">
                        <button class="quantity-btn minus">-</button>
                        <input type="number" value="1" min="1" max="10">
                        <button class="quantity-btn plus">+</button>
                    </div>
                </div>
                
                <div class="body-button">
                    <button class="buy-now">
                        <img src="https://cdn-icons-png.flaticon.com/512/263/263142.png" width="20" alt="Buy Now"> Buy Now
                    </button>
                    <c:choose>
                        <c:when test="${not empty sessionScope.user}">
                            <button class="add-to-cart">
                                <img src="https://cdn-icons-png.flaticon.com/512/263/263142.png" width="20" alt="Add to Cart"> Add to Cart
                            </button>
                        </c:when>
                        <c:otherwise>
                            <button class="add-to-cart" onclick="window.location.href='${pageContext.request.contextPath}/pages/login.jsp'">
                                <img src="https://cdn-icons-png.flaticon.com/512/263/263142.png" width="20" alt="Add to Cart"> Add to Cart
                            </button>
                        </c:otherwise>
                    </c:choose>
                    <button class="wishlist-btn">
                        <img src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" width="20" alt="Wishlist"> Wishlist
                    </button>
                </div>
            </div>
        </div>
        
        <!-- Second Container - Product Info -->
        <div class="second-container">
            <div class="product-information">
                <div class="information-title">Product Information</div>
                <div class="information-body">
                    <table>
                        <tr>
                            <th>Brand</th>
                            <td>Voltas</td>
                        </tr>
                        <tr>
                            <th>Model Name</th>
                            <td>FTKF50TV16U</td>
                        </tr>
                        <tr>
                            <th>Type</th>
                            <td>Split Portable AC</td>
                        </tr>
                        <tr>
                            <th>Capacity</th>
                            <td>1.5 Ton</td>
                        </tr>
                        <tr>
                            <th>Energy Rating</th>
                            <td>3 Star</td>
                        </tr>
                        <tr>
                            <th>Cooling Capacity</th>
                            <td>5040 Watts</td>
                        </tr>
                        <tr>
                            <th>Compressor</th>
                            <td>Portable Rotary</td>
                        </tr>
                        <tr>
                            <th>Condenser Coil</th>
                            <td>Copper</td>
                        </tr>
                        <tr>
                            <th>Special Features</th>
                            <td>PM 2.5 Filter, Eco Mode, Self Diagnosis</td>
                        </tr>
                        <tr>
                            <th>Warranty</th>
                            <td>1 Year on Product, 5 Years on Compressor</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        
        <!-- Third Container - Related Products -->
        <div class="container-title">Other Air Conditioners</div>
        
        <div class="third-container">
            <div class="carousel-arrow prev">
                <img src="https://cdn-icons-png.flaticon.com/512/271/271220.png" alt="Previous">
            </div>
            
            <div class="container-content">
                <!-- Product cards would typically come from a database -->
                <c:forEach items="${relatedProducts}" var="product" varStatus="loop">
                    <div class="card">
                        <div class="card-img-container">
                            <img src="${pageContext.request.contextPath}${product.imagePath}" alt="${product.name}">
                        </div>
                        <div class="card-body">
                            <div class="card-title">${product.name}</div>
                            <div class="ratings">
                                <c:forEach begin="1" end="${product.rating}">
                                    <img src="https://cdn-icons-png.flaticon.com/512/1828/1828884.png" alt="Star">
                                </c:forEach>
                                <c:if test="${product.rating < 5}">
                                    <c:forEach begin="1" end="${5 - product.rating}">
                                        <img src="https://cdn-icons-png.flaticon.com/512/1828/1828970.png" alt="Empty Star">
                                    </c:forEach>
                                </c:if>
                            </div>
                            <div class="card-price">
                                <div class="selling-price"><fmt:formatNumber value="${product.price}" type="currency" currencySymbol="$"/></div>
                                <div class="marked-price"><fmt:formatNumber value="${product.originalPrice}" type="currency" currencySymbol="$"/></div>
                                <div class="discount-badge">
                                    <fmt:formatNumber value="${((product.originalPrice - product.price) / product.originalPrice) * 100}" maxFractionDigits="0"/>% off
                                </div>
                            </div>
                            <div class="card-button">
                                <button class="buy-now-button">Buy Now</button>
                                <button class="add-to-cart-button">Add to Cart</button>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            
            <div class="carousel-arrow next">
                <img src="https://cdn-icons-png.flaticon.com/512/271/271228.png" alt="Next">
            </div>
        </div>
    </div>

    <!-- Include footer -->
    <jsp:include page="${pageContext.request.contextPath}/pages/footer.jsp" />

    <script>
        // Function to change the main product image when clicking on thumbnails
        function change_image(element) {
            const mainImage = document.getElementById('big-image');
            mainImage.src = element.src;
            
            // Update active class on thumbnails
            const thumbnails = document.querySelectorAll('.small-image-container img');
            thumbnails.forEach(img => img.classList.remove('active'));
            element.classList.add('active');
        }
        
        // Function to handle category switching
        function showCategory(category) {
            // Update active button
            const buttons = document.querySelectorAll('.category-btn');
            buttons.forEach(btn => btn.classList.remove('active'));
            event.target.classList.add('active');
            
            // In a real implementation, you would load different products here
            // For this demo, we're just showing the same content
        }
        
        // Quantity button functionality
        document.querySelector('.quantity-btn.plus').addEventListener('click', function() {
            const input = document.querySelector('.quantity-input input');
            let value = parseInt(input.value);
            if (value < 10) {
                input.value = value + 1;
            }
        });
        
        document.querySelector('.quantity-btn.minus').addEventListener('click', function() {
            const input = document.querySelector('.quantity-input input');
            let value = parseInt(input.value);
            if (value > 1) {
                input.value = value - 1;
            }
        });
        
        // Carousel functionality
        const prevBtn = document.querySelector('.prev');
        const nextBtn = document.querySelector('.next');
        const carousel = document.querySelector('.container-content');
        
        prevBtn.addEventListener('click', () => {
            carousel.scrollBy({ left: -250, behavior: 'smooth' });
        });
        
        nextBtn.addEventListener('click', () => {
            carousel.scrollBy({ left: 250, behavior: 'smooth' });
        });
    </script>
</body>
</html>