package com.smarttech.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.smarttech.config.DbConfig;
import com.smarttech.model.ProductModel;
import com.smarttech.service.DashboardService;

/**
 * 23047540 Salina Thing 23049023 Aastha Aryal 23047513 Kriti Lama 22085575
 * Rahul Jaiswal 23047541 Rabison Raj Shakya
 * 
 */
@WebServlet("/productdetail")
public class ProductDetailController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private DashboardService dashboardService;

    public ProductDetailController() {
        super();
    }

    @Override
    public void init() throws ServletException {
        this.dashboardService = new DashboardService(new DbConfig());
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int productId = Integer.parseInt(request.getParameter("productId"));
            ProductModel product = dashboardService.getProductDetail(productId);
            request.setAttribute("product", product);
            request.getRequestDispatcher("/WEB-INF/pages/productdetails.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid product ID");
        } catch (Exception e) {
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
                    "Error retrieving product details: " + e.getMessage());
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
