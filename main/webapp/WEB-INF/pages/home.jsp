<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home | SmartTech</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
</head>
    
<body>

<!-- Include header -->
<jsp:include page="header.jsp" />

<!-- This is the main section of the first visible part of our website --> 
<section class="section-hero"> 
	<div class="hero"> 
    	<div class="main-advertisement-item1"> 
            <h1 class="main-heading"> 
            	Get the best<br />air conditioner<br />at our site 
            </h1>  
        </div> 
        <!-- This consists of the items in the carousel --> 
        <div class="carousel-container-item2"> 
        	<div class="carousel"> 
            	<div class="printer-heading"> 
                	<h1> 
                  		"We believe quality not quantity.The best quality AC at best price possible" 
                	</h1> 
		                <div class="delivered-printers"> 
		                	<div class="delivered-customers"> 
			                    <img src="${pageContext.request.contextPath}/resources/images/home/people1.jpg" alt="people" /> 
			                    <img src="${pageContext.request.contextPath}/resources/images/home/people2.jpg" alt="people" /> 
			                    <img src="${pageContext.request.contextPath}/resources/images/home/people3.jpg" alt="people" /> 
			                    <img src="${pageContext.request.contextPath}/resources/images/home/people4.jpg" alt="people" /> 
			                    <img src="${pageContext.request.contextPath}/resources/images/home/people5.jpg" alt="people" /> 
			                  </div> 
		                  <p class="delivery-text"> 
		                    30,000+s AC sold this month!!! 
		                  </p> 
		                </div> 
		              </div> 
		              <img 
		                class="big-carousel-image" 
		                src="${pageContext.request.contextPath}/resources/images/products/AC1" 
		                alt="ac picture" 
		              /> 
		              <!-- this calls the function prev() and next() which changes the image present in the carousel --> 
		              <button class="button-carousel btn1" onclick="prev()"> 
		                <img class="carousel-togglers" src="${pageContext.request.contextPath}/resources/images/home/left_arrow.png"  /> 
		              </button> 
		              <button class="button-carousel btn2" onclick="next()"> 
		                <img class="carousel-togglers" src="${pageContext.request.contextPath}/resources/images/home/right_arrow.png" /> 
		              </button>
		              
		               <div class="dot-button"> 
		                <button class="dot-black">&nbsp;</button> 
		                <button class="dot">&nbsp;</button> 
		                <button class="dot">&nbsp;</button> 
		                <button class="dot">&nbsp;</button> 
		              </div> 
		            </div> 
		          </div> 
		        </div> 
		      </section> 
		      
    <!-- This section consists of the products oveview available in the website --> 
      <section class="product1"> 
      <div class="product-header"> 
        <h1 class="heading-secondary">OUR PRODUCTS</h1> 
        <h2 class="heading-secondary-product">"Get Best out of Technology"</h2> 
      </div> 
      <div class="product-categories"> 
        <div class="category-1"> 
          <img src="${pageContext.request.contextPath}/resources/images/products/celingac.jpg" alt="AC" style="width: 50%; height: auto;">
          <p>Air Conditioner</p> 
        </div> 
        <div class="category-1"> 
          <img src="${pageContext.request.contextPath}/resources/images/home/acessory.jpg" alt="Acessory" style="width: 60%; height: auto;">
          <p>ACCESSORIES</p> 
        </div> 
        <div class="category-1"> 
          <img src="${pageContext.request.contextPath}/resources/images/home/cleaner.jpg" alt="Cleaner" style="width: 50%; height: auto;">
          <p>CLEANING</p> 
        </div> 
        <div class="category-1"> 
          <img src="${pageContext.request.contextPath}/resources/images/products/wallac.jpg" alt="Wallac" style="width: 60%; height: auto;">
          <p>Wall AC</p> 
        </div> 
      </div> 
      
      <!-- Product items of the website --> 
      <div class="container-product"> 
        <div class="product-items"> 
          <img src="${pageContext.request.contextPath}/resources/images/products/ac/portable_ac.jpg" class="product-img" alt="portableac" /> 
          <p class="product-1-description">Portable Air Conditioner</p> 
          <p class="product-1-attributes"> 
             A portable room air conditioner pass air through a filter, which cleans it by removing particles and dust.
          </p> 
          <button class="product-button">View all</button>
           </div>
            
        <div class="product-items"> 
          <img src="${pageContext.request.contextPath}/resources/images/products/ac/ac1.jpg" class="product-img" alt="ac1" /> 
          <p class="product-1-description">AC</p> 
          <p class="product-1-attributes"> 
           	A window air conditioner works by circulating air over cooled coils, using a compressor and other components to achieve cooling.  
          </p> 
          <button class="product-button">View all</button> 
        </div> 
        
        <div class="product-items"> 
          <img 
            src="${pageContext.request.contextPath}/resources/images/products/ac/inverterac.jpg" class="product-img" alt="inverterac" /> 
          <p class="product-1-description">Inverter AC</p> 
          <p class="product-1-attributes"> 
          	Inverter ac's compressor doesn't just turn on and off, but can operate at different speeds to maintain a consistent and comfortable temperature.
          </p> 
          <button class="product-button">View all</button> 
        </div> 
        
      </div> 
    </section> 
 
         <!-- Include footer -->
    <jsp:include page="footer.jsp" />

</body>
</html>
    