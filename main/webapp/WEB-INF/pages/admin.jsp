<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Smart Tech Care - Admin Dashboard</title>
    <style>
        /* Global Styles */
        :root {
            --primary-color: #3498db;
            --secondary-color: #2980b9;
            --success-color: #2ecc71;
            --danger-color: #e74c3c;
            --warning-color: #f39c12;
            --light-color: #ecf0f1;
            --dark-color: #34495e;
            --white: #fff;
            --gray: #95a5a6;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: #f5f6fa;
            color: var(--dark-color);
        }
        
        button {
            cursor: pointer;
            transition: all 0.3s;
        }
        
        /* Dashboard Layout */
        .dashboard-container {
            display: grid;
            grid-template-columns: 250px 1fr;
            min-height: 100vh;
        }
        
        /* Sidebar Styles */
        .sidebar {
            background-color: #ffff;
            width: 250px;
            padding: 30px 15px;
            display: flex;
            flex-direction: column;
        }
        
        .logo-details {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 30px;
        }
        
        .logo-details img {
            width: 60px;
            height: 60px;
            border-radius: 30px;
            margin-bottom: 10px;
        }
        
        .title {
            text-align: center;
        }
        
        .title h4 {
            font-size: 18px;
            color: var(--dark-color);
            margin-bottom: 5px;
        }
        
        .title p {
            font-size: 12px;
            color: var(--gray);
        }
        
        .sidebar ul {
            list-style: none;
            padding: 0;
            flex-grow: 1;
        }
        
        .sidebar li {
            margin-bottom: 15px;
            display: flex;
            align-items: center;
            justify-content: flex-start;
            cursor: pointer;
            padding: 10px;
            border-radius: 5px;
        }
        
        .sidebar li:hover {
            background-color: #f0f0f0;
        }
        
        .sidebar li img {
            width: 24px;
            margin-right: 10px;
        }
        
        .sidebar li span {
            font-size: 14px;
        }
        
        .sidebar li form {
            display: flex;
            align-items: center;
            width: 100%;
        }
        
        .sidebar li button {
            background: none;
            border: none;
            color: inherit;
            font: inherit;
            padding: 0;
            text-align: left;
            width: 100%;
            display: flex;
            align-items: center;
        }
        
        /* Main Content Styles */
        .main-content {
            padding: 20px;
            overflow-y: auto;
        }
        
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
            padding-bottom: 20px;
            border-bottom: 1px solid #ddd;
        }
        
        .header h1 {
            color: var(--dark-color);
        }
        
        .user-info {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        
        .user-avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background-color: var(--primary-color);
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-weight: bold;
        }
        
        /* Stats Cards */
        .stats-container {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
            margin-bottom: 30px;
        }
        
        .stat-card {
            background-color: var(--white);
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            position: relative;
            overflow: hidden;
        }
        
        .stat-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 5px;
            height: 100%;
        }
        
        .stat-card:nth-child(1)::before {
            background-color: var(--primary-color);
        }
        
        .stat-card:nth-child(2)::before {
            background-color: var(--success-color);
        }
        
        .stat-card:nth-child(3)::before {
            background-color: var(--warning-color);
        }
        
        .stat-card:nth-child(4)::before {
            background-color: var(--danger-color);
        }
        
        .stat-card h3 {
            color: var(--gray);
            font-size: 14px;
            margin-bottom: 10px;
        }
        
        .stat-card p {
            font-size: 24px;
            font-weight: bold;
            color: var(--dark-color);
        }
        
        .stat-card.trend-up p::after {
            content: " ↑";
            color: var(--success-color);
            font-size: 16px;
        }
        
        .stat-card.trend-down p::after {
            content: " ↓";
            color: var(--danger-color);
            font-size: 16px;
        }
        
        /* Product Actions - Wider Cards */
        .action-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 30px;
            gap: 20px;
        }
        
        .action-card {
            background-color: var(--white);
            border-radius: 10px;
            padding: 25px;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            flex: 1;
            min-width: 300px;
            transition: transform 0.3s;
        }
        
        .action-card:hover {
            transform: translateY(-5px);
        }
        
        .action-card img {
            width: 60px;
            height: 60px;
            margin-bottom: 15px;
        }
        
        .action-card button {
            background-color: var(--primary-color);
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            width: 100%;
        }
        
        .action-card button.delete-btn {
            background-color: var(--danger-color);
        }
        
        .action-card button:hover {
            opacity: 0.9;
        }
        
        /* Recent Orders */
        .recent-orders {
            background-color: var(--white);
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        
        .orders-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }
        
        .orders-title {
            font-size: 18px;
            font-weight: bold;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
        }
        
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        
        th {
            background-color: #f8f9fa;
            font-weight: 600;
        }
        
        tr:hover {
            background-color: #f5f5f5;
        }
        
        .status {
            padding: 5px 10px;
            border-radius: 4px;
            font-size: 12px;
            font-weight: bold;
        }
        
        .status-pending {
            background-color: #fff3cd;
            color: #856404;
        }
        
        .status-completed {
            background-color: #d4edda;
            color: #155724;
        }
        
        .status-shipped {
            background-color: #cce5ff;
            color: #004085;
        }
        
        /* Modal Styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 100;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.5);
            animation: fadeIn 0.3s ease-out;
        }
        
        .modal-content {
            background-color: #fefefe;
            margin: 5% auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 60%;
            max-width: 500px;
            animation: slideIn 0.5s ease-out;
        }
        
        .modal-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 1px solid #eee;
        }
        
        .modal-title {
            font-size: 20px;
            font-weight: bold;
            color: var(--dark-color);
        }
        
        .close {
            color: #aaa;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }
        
        .close:hover {
            color: #333;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #555;
        }
        
        .form-group input[type="text"],
        .form-group input[type="number"],
        .form-group textarea,
        .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
            box-sizing: border-box;
        }
        
        .form-group textarea {
            resize: vertical;
            min-height: 100px;
        }
        
        .form-group select {
            padding: 10px;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            background-image: url('data:image/svg+xml;utf8,<svg fill="#555" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M7 10l5 5 5-5z"/><path d="M0 0h24v24H0z" fill="none"/></svg>');
            background-repeat: no-repeat;
            background-position: right 10px center;
        }
        
        .form-group input[type="file"] {
            padding: 5px;
        }
        
        .submit-btn {
            background-color: var(--primary-color);
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            width: 100%;
        }
        
        .submit-btn:hover {
            background-color: var(--secondary-color);
        }
        
        @keyframes slideIn {
            from {
                transform: translateY(-50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }
        
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <!-- Sidebar -->
        <div class="sidebar">
            <div class="logo-details">
                <img src="${pageContext.request.contextPath}/resources/images/admin/icons8-smart-home-50.png" class="logo">
                <div class="title">
                    <h4>Smart Tech Care</h4>

                </div>
            </div>
            <ul>
                <li class="active">
                    <img src="${pageContext.request.contextPath}/resources/images/admin/dashboard.png">
                    <span>Dashboard</span>
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/resources/images/admin/group.png">
                    <span>Customers</span>
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/resources/images/admin/in-stock.png">
                    <form action="${pageContext.request.contextPath}/AdminProducts" method="post">
                        <button type="submit">Products</button>
                    </form>
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/resources/images/admin/order-delivery.png">
                    <form action="${pageContext.request.contextPath}/AllOrders" method="post">
                        <button type="submit">Orders</button>
                    </form>
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/resources/images/admin/settings.png">
                    <form action="${pageContext.request.contextPath}/AdminProfileServlet">
                        <button type="submit">Settings</button>
                    </form>
                </li>
                <li>
                    <img src="${pageContext.request.contextPath}/resources/images/admin/out.png">
                    <form action="${pageContext.request.contextPath}/logout" method="post">
                        <button type="submit">Logout</button>
                    </form>
                </li>
            </ul>
        </div>
        
        <!-- Main Content -->
        <div class="main-content">
            <div class="header">
                <h1>Admin Dashboard</h1>
                <div class="user-info">
                    <div class="user-avatar">AD</div>
                    <span>Admin User</span>
                </div>
            </div>
            
            <!-- Stats Cards -->
            <div class="stats-container">
                <div class="stat-card trend-up">
                    <h3>Monthly Earnings</h3>
                    <p>$<%= String.format("%,.2f", 45230.50) %></p>
                </div>
                <div class="stat-card trend-up">
                    <h3>Monthly Profit</h3>
                    <p>$<%= String.format("%,.2f", 22500.75) %></p>
                </div>
                <div class="stat-card trend-up">
                    <h3>Monthly Sales</h3>
                    <p><%= 128 %></p>
                </div>
                <div class="stat-card trend-up">
                    <h3>New Customers</h3>
                    <p><%= 42 %></p>
                </div>
            </div>
            
            <!-- Product Actions - Wider Cards -->
            <div class="action-row">
                <div class="action-card">
                    <img src="${pageContext.request.contextPath}/resources/images/admin/add-product.png">
                    <button id="openCustomFormBtn">Add Product</button>
                </div>
                <div class="action-card">
                    <img src="${pageContext.request.contextPath}/resources/images/admin/add-product.png">
                    <button id="openUpdateButton">Update Product</button>
                </div>
                <div class="action-card">
                    <img src="${pageContext.request.contextPath}/resources/images/admin/remove.png">
                    <button id="openDeleteBtn" class="delete-btn">Delete Product</button>
                </div>
            </div>
            
            <!-- Recent Orders -->
            <div class="recent-orders">
                <div class="orders-header">
                    <div class="orders-title">Recent Orders</div>
                    <button>View All</button>
                </div>
                <table>
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Customer</th>
                            <th>Product</th>
                            <th>Amount</th>
                            <th>Status</th>
                            <th>Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>#AC-<%= 1000 + (int)(Math.random() * 9000) %></td>
                            <td>John Smith</td>
                            <td>Arctic Cool Pro 1.5Ton</td>
                            <td>$899.99</td>
                            <td><span class="status status-completed">Completed</span></td>
                            <td>Today, 10:45 AM</td>
                        </tr>
                        <tr>
                            <td>#AC-<%= 1000 + (int)(Math.random() * 9000) %></td>
                            <td>Sarah Johnson</td>
                            <td>Breeze Master Elite 2Ton</td>
                            <td>$1,199.99</td>
                            <td><span class="status status-shipped">Shipped</span></td>
                            <td>Yesterday, 2:30 PM</td>
                        </tr>
                        <tr>
                            <td>#AC-<%= 1000 + (int)(Math.random() * 9000) %></td>
                            <td>Michael Brown</td>
                            <td>Frost Air Slim 1Ton</td>
                            <td>$749.99</td>
                            <td><span class="status status-pending">Pending</span></td>
                            <td>Yesterday, 11:15 AM</td>
                        </tr>
                        <tr>
                            <td>#AC-<%= 1000 + (int)(Math.random() * 9000) %></td>
                            <td>Emily Davis</td>
                            <td>Arctic Cool Pro 1.5Ton</td>
                            <td>$899.99</td>
                            <td><span class="status status-completed">Completed</span></td>
                            <td>May 12, 2023</td>
                        </tr>
                        <tr>
                            <td>#AC-<%= 1000 + (int)(Math.random() * 9000) %></td>
                            <td>Robert Wilson</td>
                            <td>Breeze Master Elite 2Ton</td>
                            <td>$1,199.99</td>
                            <td><span class="status status-completed">Completed</span></td>
                            <td>May 11, 2023</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    
    <!-- Add Product Modal -->
    <div id="addProductModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <span class="modal-title">Add Air Conditioner</span>
                <span class="close">&times;</span>
            </div>
            <form action="${pageContext.request.contextPath}/AddProduct" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="productId">Product ID:</label>
                    <input type="text" id="productId" name="productId" required>
                </div>
                <div class="form-group">
                    <label for="productName">Model Name:</label>
                    <input type="text" id="productName" name="productName" required>
                </div>
                <div class="form-group">
                    <label for="productDescription">Description:</label>
                    <textarea id="productDescription" name="productDescription" required></textarea>
                </div>
                <div class="form-group">
                    <label for="productCapacity">Capacity:</label>
                    <select id="productCapacity" name="capacity">
                        <option value="1 Ton">1 Ton</option>
                        <option value="1.5 Ton">1.5 Ton</option>
                        <option value="2 Ton">2 Ton</option>
                        <option value="2.5 Ton">2.5 Ton</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="productType">Type:</label>
                    <select id="productType" name="type">
                        <option value="Split AC">Split AC</option>
                        <option value="Window AC">Window AC</option>
                        <option value="Portable AC">Portable AC</option>
                        <option value="Cassette AC">Cassette AC</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="productPrice">Price ($):</label>
                    <input type="number" id="productPrice" name="productPrice" step="0.01" required>
                </div>
                <div class="form-group">
                    <label for="productQuantity">Stock Quantity:</label>
                    <input type="number" id="productQuantity" name="productQuantity" required>
                </div>
                <div class="form-group">
                    <label for="productImage">Product Image:</label>
                    <input type="file" id="productImage" name="productImage" accept="image/*">
                </div>
                <button type="submit" class="submit-btn">Add Product</button>
            </form>
        </div>
    </div>
    
    <!-- Update Product Modal -->
    <div id="updateProductModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <span class="modal-title">Update Air Conditioner</span>
                <span class="close">&times;</span>
            </div>
            <form action="${pageContext.request.contextPath}/UpdateProduct" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="updateProductId">Product ID:</label>
                    <input type="text" id="updateProductId" name="productId" required>
                </div>
                <div class="form-group">
                    <label for="updateProductName">Model Name:</label>
                    <input type="text" id="updateProductName" name="productName" required>
                </div>
                <div class="form-group">
                    <label for="updateProductDescription">Description:</label>
                    <textarea id="updateProductDescription" name="productDescription" required></textarea>
                </div>
                <div class="form-group">
                    <label for="updateProductCapacity">Capacity:</label>
                    <select id="updateProductCapacity" name="capacity">
                        <option value="1 Ton">1 Ton</option>
                        <option value="1.5 Ton">1.5 Ton</option>
                        <option value="2 Ton">2 Ton</option>
                        <option value="2.5 Ton">2.5 Ton</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="updateProductType">Type:</label>
                    <select id="updateProductType" name="type">
                        <option value="Split AC">Split AC</option>
                        <option value="Window AC">Window AC</option>
                        <option value="Portable AC">Portable AC</option>
                        <option value="Cassette AC">Cassette AC</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="updateProductPrice">Price ($):</label>
                    <input type="number" id="updateProductPrice" name="productPrice" step="0.01" required>
                </div>
                <div class="form-group">
                    <label for="updateProductQuantity">Stock Quantity:</label>
                    <input type="number" id="updateProductQuantity" name="productQuantity" required>
                </div>
                <div class="form-group">
                    <label for="updateProductImage">Product Image:</label>
                    <input type="file" id="updateProductImage" name="productImage" accept="image/*">
                </div>
                <button type="submit" class="submit-btn">Update Product</button>
            </form>
        </div>
    </div>
    
    <!-- Delete Product Modal -->
    <div id="deleteProductModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <span class="modal-title">Delete Air Conditioner</span>
                <span class="close">&times;</span>
            </div>
            <form action="${pageContext.request.contextPath}/DeleteProduct" method="post">
                <div class="form-group">
                    <label for="deleteProductId">Product ID:</label>
                    <input type="text" id="deleteProductId" name="productId" required>
                </div>
                <div class="form-group">
                    <label for="deleteProductName">Confirm Model Name:</label>
                    <input type="text" id="deleteProductName" name="productName" required>
                </div>
                <button type="submit" class="submit-btn" style="background-color: var(--danger-color);">Delete Product</button>
            </form>
        </div>
    </div>
    
    <script>
        // Modal functionality
        document.addEventListener('DOMContentLoaded', function() {
            // Get modal elements
            const addModal = document.getElementById('addProductModal');
            const updateModal = document.getElementById('updateProductModal');
            const deleteModal = document.getElementById('deleteProductModal');
            
            // Get buttons that open modals
            const addBtn = document.getElementById('openCustomFormBtn');
            const updateBtn = document.getElementById('openUpdateButton');
            const deleteBtn = document.getElementById('openDeleteBtn');
            
            // Get close buttons
            const closeBtns = document.getElementsByClassName('close');
            
            // Open modals
            addBtn.onclick = function() {
                addModal.style.display = 'block';
            }
            
            updateBtn.onclick = function() {
                updateModal.style.display = 'block';
            }
            
            deleteBtn.onclick = function() {
                deleteModal.style.display = 'block';
            }
            
            // Close modals when clicking on X
            for (let i = 0; i < closeBtns.length; i++) {
                closeBtns[i].onclick = function() {
                    addModal.style.display = 'none';
                    updateModal.style.display = 'none';
                    deleteModal.style.display = 'none';
                }
            }
            
            // Close modals when clicking outside
            window.onclick = function(event) {
                if (event.target == addModal) {
                    addModal.style.display = 'none';
                }
                if (event.target == updateModal) {
                    updateModal.style.display = 'none';
                }
                if (event.target == deleteModal) {
                    deleteModal.style.display = 'none';
                }
            }
        });
    </script>
</body>
</html>