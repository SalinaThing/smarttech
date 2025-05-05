package com.smarttech.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.smarttech.config.*;
import com.smarttech.service.DashboardService;
import com.smarttech.util.*;

/**
 * 23047540 Salina Thing 23049023 Aastha Aryal 23047513 Kriti Lama 22085575
 * Rahul Jaiswal 23047541 Rabison Raj Shakya
 * 
 */

@WebServlet("/DeleteProduct")
public class DeleteProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DashboardService dashboardService;

	public DeleteProductController(DashboardService dashboardService) {
		this.dashboardService = dashboardService;
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int productId = Integer.parseInt(request.getParameter("productId"));
		int result = dashboardService.deleteProduct(productId);
		request.getRequestDispatcher("/AdminProducts").forward(request, response);

	}

	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int productId = Integer.parseInt(req.getParameter("productId"));
		int result = dashboardService.deleteProduct(productId);
		if (result == 1) {
			req.setAttribute(StringUtils.MESSAGE_SUCCESS, "SuccessFully deleted");
			req.getRequestDispatcher(StringUtils.PAGE_URL_ADMIN).forward(req, resp);

		} else if (result == -1) {

			req.setAttribute(StringUtils.MESSAGE_SUCCESS, "Product Doesnot Exists");
			req.getRequestDispatcher(StringUtils.PAGE_URL_ADMIN).forward(req, resp);

		} else {
			System.out.print("What the fuck");

		}

	}

}