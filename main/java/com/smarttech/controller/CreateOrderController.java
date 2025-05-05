package com.smarttech.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.smarttech.service.*;
import com.smarttech.util.*;

/**
 * 23047540 Salina Thing 23049023 Aastha Aryal 23047513 Kriti Lama 22085575
 * Rahul Jaiswal 23047541 Rabison Raj Shakya
 * 
 */

@WebServlet("/CreateOrder")
public class CreateOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DashboardService dashboardService;
    
    public CreateOrderController(DashboardService dashboardService) {
		super();
		this.dashboardService = dashboardService;
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession userSession = request.getSession();
		String userName = (String)userSession.getAttribute(StringUtils.USERNAME);
		int result  = dashboardService.createOrder(userName);
		if(result==1) {
			
			request.setAttribute("orderSuccess", "Success");
			request.getRequestDispatcher("/home.jsp").forward(request, response);	
			
		}else {

	
			
		}
				
	}

}