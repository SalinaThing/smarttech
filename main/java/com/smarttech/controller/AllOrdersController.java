package com.smarttech.controller;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.smarttech.model.*;
import com.smarttech.service.*;

/**
 * 23047540 Salina Thing 23049023 Aastha Aryal 23047513 Kriti Lama 22085575
 * Rahul Jaiswal 23047541 Rabison Raj Shakya
 * 
 */

@WebServlet("/AllOrders")
public class AllOrdersController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DashboardService dashboardService;
       
	public AllOrdersController(DashboardService dashboardService) {
		super();
		this.dashboardService = dashboardService;
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			ArrayList<OrderModel> orders= (ArrayList<OrderModel>) dashboardService.getAllOrders();
			request.setAttribute("orders", orders);
			request.getRequestDispatcher("/pages/order_history.jsp").forward(request, response);
			
			
					
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
