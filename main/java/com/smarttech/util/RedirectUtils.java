package com.smarttech.util;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public final class RedirectUtils {

    private RedirectUtils() {
        // Private constructor to prevent instantiation
    }

    // Basic redirect methods
    public static void redirectToLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        redirectToPage(request, response, StringUtils.PAGE_URL_LOGIN);
    }

    public static void redirectToHome(HttpServletRequest request, HttpServletResponse response) throws IOException {
        redirectToPage(request, response, StringUtils.PAGE_URL_HOME);
    }

    public static void redirectToAdmin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        redirectToPage(request, response, StringUtils.PAGE_URL_ADMIN);
    }

    // Error handling redirect
    public static void redirectWithError(HttpServletRequest request, HttpServletResponse response, 
            String path, String errorMessage) throws IOException {
        if (request != null && response != null) {
            SessionUtils.setAttribute(request.getSession(), StringUtils.MESSAGE_ERROR, errorMessage);
            redirectToPage(request, response, path);
        }
    }

    // Core redirect method
    public static void redirectToPage(HttpServletRequest request, HttpServletResponse response, 
            String page) throws IOException {
        if (request != null && response != null && !StringUtils.isBlank(page)) {
            response.sendRedirect(request.getContextPath() + page);
        }
    }

    // Forward methods
    public static void forwardToPage(HttpServletRequest request, HttpServletResponse response, 
            String page) throws ServletException, IOException {
        if (request != null && response != null && !StringUtils.isBlank(page)) {
            request.getRequestDispatcher(page).forward(request, response);
        }
    }

    // Message handling with forward
    public static void setMessageAndForward(HttpServletRequest request, HttpServletResponse response, 
            String messageType, String message, String page) throws ServletException, IOException {
        if (request != null) {
            request.setAttribute(messageType, message);
        }
        forwardToPage(request, response, page);
    }

    // Combined message and redirect
    public static void setMessageAndRedirect(HttpServletRequest request, HttpServletResponse response, 
            String messageType, String message, String page) throws IOException {
        if (request != null) {
            SessionUtils.setAttribute(request.getSession(), messageType, message);
        }
        redirectToPage(request, response, page);
    }
}