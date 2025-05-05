<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String contextPath = request.getContextPath();
Object ordersObj = request.getAttribute("orders");
boolean hasOrders = ordersObj != null;
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order History | SmartTech</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/orderhistory.css">
</head>

<body>
    <header>
        <div class="header-content">
            <div class="logo">SmartTech</div>
            <jsp:include page="header.jsp"></jsp:include>
        </div>
    </header>

    <main class="container">
        <h1 class="page-title">Order History</h1>

        <div class="order-table-container">
            <table class="order-table">
                <thead>
                    <tr>
                        <th>Ordered By</th>
                        <th>Order ID</th>
                        <th>Order Date</th>
                        <th>Amount</th>
                        <th>Product</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <% if (!hasOrders) { %>
                        <tr>
                            <td colspan="7">
                                <div class="empty-state">
                                    <div class="empty-state-icon">📦</div>
                                    <h3>No Orders Found</h3>
                                    <p>You haven't placed any orders yet.</p>
                                </div>
                            </td>
                        </tr>
                    <% } else { 
                        if (ordersObj instanceof java.util.List) {
                            java.util.List<java.util.Map<String, Object>> orders = (java.util.List<java.util.Map<String, Object>>) ordersObj;
                            for (java.util.Map<String, Object> order : orders) {
                                String status = (String) order.get("status");
                                boolean isDelivered = "Delivered".equals(status);
                    %>
                            <tr>
                                <td><%= order.get("userName") %></td>
                                <td>#<%= order.get("orderId") %></td>
                                <td><%= order.get("orderDate") %></td>
                                <td>Rs <%= order.get("productPrice") %></td>
                                <td><%= order.get("productName") %></td>
                                <td>
                                    <span class="status-badge <%= isDelivered ? "status-delivered" : "status-pending" %>">
                                        <%= status %>
                                    </span>
                                </td>
                                <td>
                                    <% if (isDelivered) { %>
                                        <button class="btn btn-disabled" disabled>Completed</button>
                                    <% } else { %>
                                        <form style="display:inline" method="post" action="${pageContext.request.contextPath}/ChangeDeliveryStatus">
                                            <input type="hidden" name="orderId" value="<%= order.get("orderId") %>">
                                            <button type="submit" class="btn btn-primary">Mark as Delivered</button>
                                        </form>
                                    <% } %>
                                </td>
                            </tr>
                    <%      }
                        }
                    } %>
                </tbody>
            </table>
        </div>
    </main>

    <footer>
        <jsp:include page="footer.jsp"></jsp:include>
    </footer>
</body>
</html>