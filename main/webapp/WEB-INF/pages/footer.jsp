<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>SmartTech</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        footer {
            background: linear-gradient(135deg, #2c3e50, #1a252f);
            color: white;
            padding: 40px 0 20px;
            margin-top: 40px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .footer-container {
            max-width: 1200px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 30px;
            padding: 0 30px;
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
            font-weight: 600;
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
            padding: 0;
            margin: 0;
        }
        .footer-column ul li {
            margin-bottom: 12px;
        }
        .footer-column ul li a {
            color: #ecf0f1;
            text-decoration: none;
            transition: all 0.3s;
            display: inline-block;
            font-size: 14px;
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
            font-size: 16px;
        }
        .social-links a:hover {
            background-color: #3498db;
            transform: translateY(-3px);
        }
        .contact-info {
            margin-top: 20px;
            color: #ecf0f1;
            font-size: 14px;
            line-height: 1.6;
        }
        .contact-info i {
            margin-right: 10px;
            width: 20px;
            color: #3498db;
        }
        .footer-bottom {
            text-align: center;
            padding-top: 20px;
            margin-top: 30px;
            border-top: 1px solid rgba(255,255,255,0.1);
            color: #bdc3c7;
            font-size: 14px;
            padding: 20px 30px 0;
        }
        @media (max-width: 768px) {
            .footer-container {
                grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
                gap: 20px;
                padding: 0 20px;
            }
            .footer-column h3 {
                margin-bottom: 15px;
                font-size: 16px;
            }
            .footer-column ul li a {
                font-size: 13px;
            }
        }
        @media (max-width: 576px) {
            footer {
                padding: 30px 0 15px;
                margin-top: 30px;
            }
            .footer-container {
                grid-template-columns: 1fr;
                gap: 25px;
            }
            .footer-bottom {
                padding: 15px 20px 0;
            }
        }
    </style>
</head>
<body>
    <footer>
        <div class="footer-container">
            <div class="footer-column">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="/smarttech/home.jsp">Home</a></li>
                    <li><a href="/smarttech/Home">Products</a></li>
                    <li><a href="/smarttech/pages/aboutus.jsp">About Us</a></li>
                    <li><a href="/smarttech/pages/contact.jsp">Contact</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Customer Service</h3>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/pages/faq.jsp">FAQs</a></li>
                    <li><a href="${pageContext.request.contextPath}/pages/shipping.jsp">Shipping Policy</a></li>
                    <li><a href="${pageContext.request.contextPath}/pages/returns.jsp">Returns</a></li>
                    <li><a href="${pageContext.request.contextPath}/pages/privacy.jsp">Privacy Policy</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Account</h3>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/pages/login.jsp">Login</a></li>
                    <li><a href="${pageContext.request.contextPath}/pages/signup.jsp">Register</a></li>
                    <li><a href="${pageContext.request.contextPath}/AdminProfileServlet">My Account</a></li>
                    <li><a href="${pageContext.request.contextPath}/UserOrderHistory">Order History</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Connect With Us</h3>
                <div class="social-links">
                    <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                    <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                    <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                    <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
                </div>
                <div class="contact-info">
                    <p><i class="fas fa-envelope"></i> info@smarttech.com</p>
                    <p><i class="fas fa-phone"></i> +977 9800478231</p>
                    <p><i class="fas fa-map-marker-alt"></i> Kamalpokhari, Kathmandu</p>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            &copy; 2025 SmartTech. All Rights Reserved.
        </div>
    </footer>
</body>
</html>