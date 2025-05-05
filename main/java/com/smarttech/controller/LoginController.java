package com.smarttech.controller;

import java.io.IOException;

import com.smarttech.model.UserModel;
import com.smarttech.service.DashboardService;
import com.smarttech.service.UserService;
import com.smarttech.util.CookieUtils;
import com.smarttech.util.SessionUtils;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * 23047540 Salina Thing 23049023 Aastha Aryal 23047513 Kriti Lama 22085575
 * Rahul Jaiswal 23047541 Rabison Raj Shakya
 * 
 */

@WebServlet(asyncSupported = true, urlPatterns = { "/login" })
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private final DashboardService dashboardService;
    private final UserService userService;

    public LoginController(UserService userService, DashboardService dashboardService) {
        this.dashboardService = dashboardService;
        this.userService = userService;
    }

    /**
     * Handles GET requests to the login page.
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(request, response);
    }

    /**
     * Handles POST requests for user login.
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        UserModel userModel = new UserModel(username, password);
        Boolean loginStatus = userService.loginUser(userModel);  // ✅ Corrected

        if (loginStatus != null && loginStatus) {
            SessionUtils.setAttribute(req, "username", username);

            if ("admin".equalsIgnoreCase(username)) {
                CookieUtils.addCookie(resp, "role", "admin", 5 * 60); // 5 hours
                resp.sendRedirect(req.getContextPath() + "/dashboard");
            } else {
                CookieUtils.addCookie(resp, "role", "user", 5 * 60);
                resp.sendRedirect(req.getContextPath() + "/home");
            }
        } else {
            handleLoginFailure(req, resp, loginStatus);
        }
    }

    /**
     * Handles login failures by setting error attributes and forwarding to the login page.
     */
    private void handleLoginFailure(HttpServletRequest req, HttpServletResponse resp, Boolean loginStatus)
            throws ServletException, IOException {
        String errorMessage = (loginStatus == null)
                ? "Our server is under maintenance. Please try again later!"
                : "User credential mismatch. Please try again!";
        req.setAttribute("error", errorMessage);
        req.getRequestDispatcher("/WEB-INF/pages/login.jsp").forward(req, resp);
    }
}
