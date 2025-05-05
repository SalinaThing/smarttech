<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String contextPath = request.getContextPath();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Checkout | SmartTech</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/order.css" />
</head>
<body>

    <jsp:include page="header.jsp" />

    <main class="container">
        <h1 class="page-title">Order Checkout</h1>

        <div class="checkout-container">
            <!-- Left Column - Order Details -->
            <div class="checkout-section">
                <!-- Shipping Information -->
                <div>
                    <h2 class="card-title">Shipping Information</h2>
                    <form id="checkoutForm" action="<%=contextPath %>/CreateOrder" method="post">
                        <div class="form-group">
                            <label class="form-label">Full Name</label>
                            <input type="text" class="form-input" name="fullName" required>
                        </div>
                        <div class="form-group">
                            <label class="form-label">Address</label>
                            <input type="text" class="form-input" name="address" required>
                        </div>
                        <div class="form-group">
                            <label class="form-label">City</label>
                            <input type="text" class="form-input" name="city" required>
                        </div>
                        <div class="form-group">
                            <label class="form-label">Phone Number</label>
                            <input type="tel" class="form-input" name="phone" required>
                        </div>

                        <!-- Payment Method -->
                        <div>
                            <h2 class="card-title">Payment Method</h2>
                            <div class="payment-option">
                                <input type="radio" id="cod" name="paymentMethod" value="cod" checked>
                                <label for="cod">Cash on Delivery</label>
                            </div>
                            <div class="payment-option">
                                <input type="radio" id="card" name="paymentMethod" value="card">
                                <label for="card">Credit/Debit Card</label>
                            </div>
                            <div class="payment-option">
                                <input type="radio" id="digital" name="paymentMethod" value="digital">
                                <label for="digital">Digital Wallet</label>
                            </div>
                        </div>
                        
                        <!-- Hidden fields for order data -->
                        <input type="hidden" name="orderData" id="orderData" value="">
                    </form>
                </div>
            </div>

            <!-- Right Column - Order Summary -->
            <div class="checkout-section">
                <h2 class="card-title">Order Summary</h2>
                
                <!-- Order Items -->
                <div class="order-items">
                    <!-- This should be dynamically populated -->
                    <div class="order-item">
                        <p>Your selected items will appear here</p>
                    </div>
                </div>
                
                <!-- Order Total -->
                <div class="order-total">
                    <p>Total: <span class="total-amount">$0.00</span></p>
                </div>
                
                <!-- Action Buttons -->
                <div class="action-buttons">
                    <button type="submit" form="checkoutForm" class="btn btn-primary">Place Order</button>
                    <button type="button" class="btn btn-secondary" onclick="cancelOrder()">Cancel Order</button>
                </div>
            </div>
        </div>
    </main>

    <jsp:include page="footer.jsp" />

    <script>
    
        function cancelOrder() {
            if(confirm("Are you sure you want to cancel this order?")) {
                window.location.href = "${pageContext.request.contextPath}/cart";
            }
        }
        
        // Form validation
        document.getElementById('checkoutForm').addEventListener('submit', function(e) {
            // Validate required fields
            const requiredInputs = document.querySelectorAll('.form-input[required]');
            let isValid = true;
            
            requiredInputs.forEach(input => {
                if (!input.value.trim()) {
                    input.style.borderColor = 'red';
                    isValid = false;
                } else {
                    input.style.borderColor = '';
                }
            });
            
            // Here you would typically gather order items data
            // document.getElementById('orderData').value = JSON.stringify(orderItems);
            
            if (!isValid) {
                e.preventDefault();
                alert('Please fill in all required fields');
                return false;
            }
            
            return true;
        });
    </script>
</body>
</html>