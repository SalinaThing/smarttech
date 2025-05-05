package com.smarttech.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.smarttech.service.*;

/**
 * 23047540 Salina Thing 23049023 Aastha Aryal 23047513 Kriti Lama 22085575
 * Rahul Jaiswal 23047541 Rabison Raj Shakya
 * 
 */

@WebServlet("/ChangeDeliveryStatus")
public class ChangeDeliveryStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DashboardService dashboardService;
    
    public ChangeDeliveryStatus(DashboardService dashboardService) {
		super();
		this.dashboardService = dashboardService;
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int orderId = Integer.parseInt(request.getParameter("orderId"));
		dashboardService.changeDeliveryStatus(orderId);
		response.sendRedirect(request.getContextPath()+"/AllOrders");
	
	
	}

}