package com.smarttech.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import com.smarttech.model.*;
import com.smarttech.service.DashboardService;
import com.smarttech.service.UserService;
import com.smarttech.util.*;

@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50)
/**
 * 23047540 Salina Thing 23049023 Aastha Aryal 23047513 Kriti Lama 22085575
 * Rahul Jaiswal 23047541 Rabison Raj Shakya
 * 
 */

@WebServlet("/UpdateProduct")
public class UpdateProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DashboardService dashboardService;

	public UpdateProductController(UserService userService, DashboardService dashboardService) {
		this.dashboardService = dashboardService;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int productId = Integer.parseInt(request.getParameter("productId"));
		String productName = request.getParameter("productName");
		String description = request.getParameter("productDescription");
		int price = Integer.parseInt(request.getParameter("productPrice"));
		int categoryId = Integer.parseInt(request.getParameter("categoryId"));
		int quantity = Integer.parseInt(request.getParameter("productQuantity"));
		Part part = request.getPart("productImage");

		ProductModel product = new ProductModel(productId, productName, description, price, categoryId, quantity, part);
		String savePath = StringUtils.IMAGE_DIR_SAVE_PATH;
		String fileName = product.getImageUrlFromPart();
		if (!fileName.isEmpty() && fileName != null)
			part.write(savePath + fileName);

		int res = dashboardService.updateProduct(product);
		System.out.print("result:" + res);
		if (res == 1) {

			request.setAttribute("productUpdated", "true");
			request.getRequestDispatcher("/pages/admin.jsp").forward(request, response);

		} else if (res == -1) {

			request.setAttribute("productUpdate", "false");
			request.getRequestDispatcher("/pages/admin.jsp").forward(request, response);

		}

	}

}