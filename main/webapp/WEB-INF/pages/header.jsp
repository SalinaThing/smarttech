<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
	<title>SmartTech</title>
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
	<style type="text/css">
	        /* ===== Improved Navigation Bar ===== */
	        #nav_container_custom {
	            padding: 12px 30px;
	            background: linear-gradient(135deg, #2c3e50, #1a252f);
	            position: sticky;
	            top: 0;
	            z-index: 1000;
	            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
	        }
	
	        .navTop_custom {
	            display: flex;
	            justify-content: space-between;
	            align-items: center;
	            margin-bottom: 10px;
	        }
	
	        .navlogo_custom {
	            display: flex;
	            align-items: center;
	            gap: 12px;
	            transition: transform 0.3s;
	        }
	
	        .navlogo_custom:hover {
	            transform: scale(1.02);
	        }
	
	        .navlogo_custom img {
	            width: 36px;
	            height: 36px;
	            object-fit: contain;
	        }
	
	        .navTitle_custom {
	            font-size: 24px;
	            color: #fff;
	            font-weight: 600;
	            letter-spacing: 0.5px;
	        }
	
	        .navLinks_custom {
	            display: flex;
	            align-items: center;
	            gap: 15px;
	        }
	
	        .authButton {
	            padding: 8px 18px;
	            border-radius: 6px;
	            font-weight: 500;
	            text-decoration: none;
	            transition: all 0.3s ease;
	            font-size: 14px;
	            display: flex;
	            align-items: center;
	            gap: 6px;
	        }
	
	        .loginButton_custom {
	            background-color: #3498db;
	            color: white;
	            border: 2px solid #3498db;
	        }
	
	        .loginButton_custom:hover {
	            background-color: #2980b9;
	            border-color: #2980b9;
	        }
	
	        .signupLink_custom {
	            background-color: transparent;
	            color: #3498db;
	            border: 2px solid #3498db;
	        }
	
	        .signupLink_custom:hover {
	            background-color: rgba(52, 152, 219, 0.1);
	        }
	
	        .navBottom_custom {
	            display: flex;
	            justify-content: space-between;
	            align-items: center;
	        }
	
	        .navButtons_custom {
	            display: flex;
	            gap: 5px;
	            flex-wrap: wrap;
	        }
	
	        .navbarButton_custom {
	            padding: 8px 16px;
	            font-size: 14px;
	            color: #fff;
	            text-decoration: none;
	            border-radius: 6px;
	            transition: all 0.3s ease;
	            display: flex;
	            align-items: center;
	            gap: 8px;
	        }
	
	        .navbarButton_custom:hover {
	            background-color: rgba(255,255,255,0.15);
	            transform: translateY(-2px);
	        }
	
	        .searchContainer_custom {
	            position: relative;
	            width: 280px;
	        }
	
	        .searchForm_custom {
	            display: flex;
	            width: 100%;
	        }
	
	        .searchInput_custom {
	            padding: 10px 15px;
	            border: 2px solid #e0e0e0;
	            border-radius: 6px 0 0 6px;
	            width: 100%;
	            font-size: 14px;
	            height: 38px;
	            outline: none;
	            transition: border-color 0.3s;
	        }
	
	        .searchInput_custom:focus {
	            border-color: #3498db;
	        }
	
	        .searchButton_custom {
	            padding: 0 15px;
	            background-color: #3498db;
	            color: white;
	            border: none;
	            border-radius: 0 6px 6px 0;
	            cursor: pointer;
	            transition: background-color 0.3s;
	            display: flex;
	            align-items: center;
	            justify-content: center;
	        }
	
	        .searchButton_custom:hover {
	            background-color: #2980b9;
	        }
	
	        /* ===== Improved Footer ===== */
	        footer {
	            background: linear-gradient(135deg, #2c3e50, #1a252f);
	            color: white;
	            padding: 40px 30px 20px;
	            margin-top: 40px;
	        }
	
	        .footer-container {
	            max-width: 1200px;
	            margin: 0 auto;
	            display: grid;
	            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
	            gap: 30px;
	        }
	
	        .footer-column {
	            margin-bottom: 20px;
	        }
	
	        .footer-column h3 {
	            color: #3498db;
	            margin-bottom: 20px;
	            font-size: 18px;
	            position: relative;
	            padding-bottom: 10px;
	        }
	
	        .footer-column h3::after {
	            content: '';
	            position: absolute;
	            left: 0;
	            bottom: 0;
	            width: 40px;
	            height: 2px;
	            background-color: #3498db;
	        }
	
	        .footer-column ul {
	            list-style: none;
	        }
	
	        .footer-column ul li {
	            margin-bottom: 12px;
	        }
	
	        .footer-column ul li a {
	            color: #ecf0f1;
	            text-decoration: none;
	            transition: all 0.3s;
	            display: inline-block;
	        }
	
	        .footer-column ul li a:hover {
	            color: #3498db;
	            transform: translateX(5px);
	        }
	
	        .social-links {
	            display: flex;
	            gap: 15px;
	            margin-top: 20px;
	        }
	
	        .social-links a {
	            color: white;
	            background-color: rgba(255,255,255,0.1);
	            width: 36px;
	            height: 36px;
	            border-radius: 50%;
	            display: flex;
	            align-items: center;
	            justify-content: center;
	            transition: all 0.3s;
	        }
	
	        .social-links a:hover {
	            background-color: #3498db;
	            transform: translateY(-3px);
	        }
	
	        .footer-bottom {
	            text-align: center;
	            padding-top: 20px;
	            margin-top: 30px;
	            border-top: 1px solid rgba(255,255,255,0.1);
	            color: #bdc3c7;
	            font-size: 14px;
	        }
	
	        /* ===== Responsive Adjustments ===== */
	        @media (max-width: 992px) {
	            .navBottom_custom {
	                flex-direction: column;
	                gap: 15px;
	            }
	            
	            .navButtons_custom {
	                justify-content: center;
	            }
	            
	            .searchContainer_custom {
	                width: 100%;
	                max-width: 500px;
	            }
	        }
	
	        @media (max-width: 768px) {
	            #nav_container_custom {
	                padding: 12px 20px;
	            }
	            
	            .footer-container {
	                grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
	                gap: 20px;
	            }
	        }
	
	        @media (max-width: 576px) {
	            .navTop_custom {
	                flex-direction: column;
	                gap: 15px;
	                margin-bottom: 15px;
	            }
	            
	            .navLinks_custom {
	                width: 100%;
	                justify-content: center;
	            }
	            
	            .navbarButton_custom {
	                padding: 8px 12px;
	                font-size: 13px;
	            }
	            
	            .authButton {
	                padding: 6px 12px;
	                font-size: 13px;
	            }
	            
	            footer {
	                padding: 30px 20px 15px;
	            }
	        }
	    </style> 
</head>

<body>
	 <title>SmartTech</title>
	 <nav id="nav_container_custom">
	        <div class="navTop_custom">
	            <div class="navlogo_custom">
	                <img src="${pageContext.request.contextPath}/resources/images/home/logo.png" alt="SmartTech Logo">
	                <h2 class="navTitle_custom">SmartTech</h2>
	            </div>
	            
	            <div class="navLinks_custom">
	                <a class="loginButton_custom" href="${pageContext.request.contextPath}/pages/login.jsp">Login</a>
	                <a class="signupLink_custom" href="${pageContext.request.contextPath}/pages/signup.jsp">Signup</a>
	            </div>
	        </div>
	
	        <div class="navBottom_custom">
	            <div class="navButtons_custom">
	                <a class="navbarButton_custom" href="${pageContext.request.contextPath}/home.jsp">
	                    <i class="fas fa-home"></i> Home
	                </a>
	                <a class="navbarButton_custom" href="${pageContext.request.contextPath}/products">
	                    <i class="fas fa-box-open"></i> Products
	                </a>
	                <a class="navbarButton_custom" href="${pageContext.request.contextPath}/AdminProfileServlet">
	                    <i class="fas fa-user"></i> Profile
	                </a>
	                <a class="navbarButton_custom" href="${pageContext.request.contextPath}/CartList">
	                    <i class="fas fa-shopping-cart"></i> Cart
	                </a>
	                <a class="navbarButton_custom" href="${pageContext.request.contextPath}/UserOrderHistory">
	                    <i class="fas fa-history"></i> Orders
	                </a>
	                <a class="navbarButton_custom" href="${pageContext.request.contextPath}/pages/aboutus.jsp">
	                    <i class="fas fa-info-circle"></i> About
	                </a>
	            </div>
	            
	            <div class="searchContainer_custom">
	                <form action="${pageContext.request.contextPath}/smarttech/Search" method="get" class="searchForm_custom">
	                    <input name="productName" type="text" placeholder="Search products..." class="searchInput_custom">
	                    <button type="submit" class="searchButton_custom">
	                        <i class="fas fa-search"></i>
	                    </button>
	                </form>
	            </div>
	        </div>
	    </nav>

</body>
</html>