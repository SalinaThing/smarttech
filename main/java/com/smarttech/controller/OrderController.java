package com.smarttech.controller;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.smarttech.model.*;
import com.smarttech.service.DashboardService;
import com.smarttech.service.UserService;
import com.smarttech.config.*;
import com.smarttech.util.*;
/**
 * 23047540 Salina Thing 23049023 Aastha Aryal 23047513 Kriti Lama 22085575
 * Rahul Jaiswal 23047541 Rabison Raj Shakya
 * 
 */
@WebServlet("/OrderController")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DashboardService dashboardService;
	UserService userService;

	public OrderController(UserService userService, DashboardService dashboardService) {
		this.dashboardService = dashboardService;
		this.userService = userService;
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userName = (String) session.getAttribute(StringUtils.USERNAME);
		ArrayList<CartModel> cartList = (ArrayList<CartModel>) userService.getAllCartItems(userName);
		request.setAttribute("order", cartList);
		String totalPrice = String.valueOf(dashboardService.getTotalPrice(userName));
		request.setAttribute("totalPrice", totalPrice);
		request.getRequestDispatcher("/pages/order.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}