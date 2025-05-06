<%@ page import="java.sql.*, javax.sql.*, javax.naming.*, java.util.*" %>
<%@ page session="true" %>
<%
    String dbURL = "jdbc:mysql://localhost:3306/smarttech";
    String dbUser = "root";
    String dbPass = "";
    Connection conn = null;

    int userID = session.getAttribute("UserID") != null ? (Integer) session.getAttribute("UserID") : -1;

    if (userID == -1) {
        out.println("<h3>User not logged in.</h3>");
        return;
    }

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

        // Fetch user info
        PreparedStatement userStmt = conn.prepareStatement("SELECT * FROM user WHERE UserID = ?");
        userStmt.setInt(1, userID);
        ResultSet userRs = userStmt.executeQuery();
        userRs.next();
        String username = userRs.getString("Username");

        // Cart items
        PreparedStatement cartStmt = conn.prepareStatement(
            "SELECT ci.ProductID, ci.Quantity, p.Name, p.Price FROM cart c " +
            "JOIN cartitems ci ON c.CartID = ci.CardID " +
            "JOIN products p ON ci.ProductID = p.ProductID WHERE c.UserID = ?");
        cartStmt.setInt(1, userID);
        ResultSet cartRs = cartStmt.executeQuery();

        // Orders
        PreparedStatement orderStmt = conn.prepareStatement("SELECT * FROM orders WHERE UserID = ?");
        orderStmt.setInt(1, userID);
        ResultSet orderRs = orderStmt.executeQuery();

        // Reviews
        PreparedStatement reviewStmt = conn.prepareStatement(
            "SELECT r.Rating, p.Name FROM review r " +
            "JOIN products p ON r.ProductID = p.ProductID WHERE r.UserID = ?");
        reviewStmt.setInt(1, userID);
        ResultSet reviewRs = reviewStmt.executeQuery();

%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container py-5">
    <h2 class="mb-4">Welcome, <%= username %>!</h2>

    <!-- Cart Section -->
    <div class="card mb-4">
        <div class="card-header bg-primary text-white">Your Cart</div>
        <div class="card-body p-0">
            <table class="table table-striped mb-0">
                <thead><tr><th>Product</th><th>Quantity</th><th>Price</th></tr></thead>
                <tbody>
                <% while (cartRs.next()) { %>
                    <tr>
                        <td><%= cartRs.getString("Name") %></td>
                        <td><%= cartRs.getInt("Quantity") %></td>
                        <td>$<%= cartRs.getDouble("Price") %></td>
                    </tr>
                <% } %>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Orders Section -->
    <div class="card mb-4">
        <div class="card-header bg-success text-white">Your Orders</div>
        <div class="card-body p-0">
            <table class="table table-hover mb-0">
                <thead><tr><th>Order ID</th><th>Date</th><th>Total</th><th>Status</th></tr></thead>
                <tbody>
                <% while (orderRs.next()) { %>
                    <tr>
                        <td><%= orderRs.getInt("OrderID") %></td>
                        <td><%= orderRs.getTimestamp("Orderdate") %></td>
                        <td>$<%= orderRs.getDouble("totalamount") %></td>
                        <td><%= orderRs.getString("Orderstatus") %></td>
                    </tr>
                <% } %>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Reviews Section -->
    <div class="card mb-4">
        <div class="card-header bg-warning">Your Reviews</div>
        <div class="card-body p-0">
            <table class="table mb-0">
                <thead><tr><th>Product</th><th>Rating</th></tr></thead>
                <tbody>
                <% while (reviewRs.next()) { %>
                    <tr>
                        <td><%= reviewRs.getString("Name") %></td>
                        <td><%= reviewRs.getString("Rating") %></td>
                    </tr>
                <% } %>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

<%
    // Close all resources
    if (userRs != null) userRs.close();
    if (cartRs != null) cartRs.close();
    if (orderRs != null) orderRs.close();
    if (reviewRs != null) reviewRs.close();
    if (conn != null) conn.close();
    } catch (Exception e) {
        out.println("<p>Error: " + e.getMessage() + "</p>");
        e.printStackTrace();
    }
%>
