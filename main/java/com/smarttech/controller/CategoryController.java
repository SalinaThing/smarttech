package com.smarttech.controller;
import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.smarttech.model.*;
import com.smarttech.config.*;
import com.smarttech.util.*;
import com.smarttech.service.*;

/**
 * 23047540 Salina Thing 23049023 Aastha Aryal 23047513 Kriti Lama 22085575
 * Rahul Jaiswal 23047541 Rabison Raj Shakya
 * 
 */

@WebServlet("/Category")
public class CategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L; 
	DashboardService dashboardService;
    
    public CategoryController(DashboardService dashboardService) {
		super();
		this.dashboardService = dashboardService;
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String category = request.getParameter("category");
		if(category.equals("all")){

			ArrayList<ProductModel> products = (ArrayList<ProductModel>) dashboardService.getProductsInfo();
			request.setAttribute(StringUtils.PRODUCTS_DETAILS, products);
			request.getRequestDispatcher("/pages/products.jsp").forward(request, response);
			
		}else {
			ArrayList<ProductModel> products = (ArrayList<ProductModel>)  dashboardService.getProductsCategoryWise(category);
			request.setAttribute(StringUtils.PRODUCTS_DETAILS, products);
			request.getRequestDispatcher("/pages/products.jsp").forward(request, response);	
			
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	}

}
