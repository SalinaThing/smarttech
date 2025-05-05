package com.smarttech.util;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Arrays;
import java.util.Optional;

/**
 * Utility class for managing HTTP cookies in a web application.
 * Provides methods to add, retrieve, and delete cookies with security best practices.
 * 
 * @author 
 */
public final class CookieUtils {

    // Common cookie names
    public static final String USERNAME_COOKIE = "username";
    public static final String REMEMBER_ME_COOKIE = "rememberMe";
    
    // Default cookie settings
    private static final int DEFAULT_MAX_AGE = 30 * 60; // 30 minutes
    private static final String ROOT_PATH = "/";
    private static final boolean DEFAULT_HTTP_ONLY = true;
    private static final boolean DEFAULT_SECURE = true;

    private CookieUtils() {
        // Private constructor to prevent instantiation
    }

    /**
     * Creates a secure cookie with default settings
     * @param name Cookie name
     * @param value Cookie value
     * @return Configured Cookie object
     */
    private static Cookie createSecureCookie(String name, String value) {
        Cookie cookie = new Cookie(name, value);
        cookie.setPath(ROOT_PATH);
        cookie.setHttpOnly(DEFAULT_HTTP_ONLY);
        cookie.setSecure(DEFAULT_SECURE);
        return cookie;
    }

    /**
     * Adds a user authentication cookie with default settings
     * @param response HttpServletResponse to add cookie to
     * @param username Username value to store
     */
    public static void addUserCookie(HttpServletResponse response, String username) {
        addCookie(response, USERNAME_COOKIE, username, DEFAULT_MAX_AGE);
    }

    /**
     * Adds a cookie with configurable parameters
     * @param response HttpServletResponse to add cookie to
     * @param name Cookie name
     * @param value Cookie value
     * @param maxAge Maximum age in seconds (0 = session cookie, -1 = delete)
     */
    public static void addCookie(HttpServletResponse response, String name, String value, int maxAge) {
        if (response == null || StringUtils.isBlank(name)) {
            return;
        }
        
        Cookie cookie = createSecureCookie(name, value);
        cookie.setMaxAge(maxAge);
        response.addCookie(cookie);
    }

    /**
     * Retrieves a cookie by name
     * @param request HttpServletRequest containing cookies
     * @param name Name of cookie to find
     * @return Optional containing the Cookie if found
     */
    public static Optional<Cookie> getCookie(HttpServletRequest request, String name) {
        if (request == null || request.getCookies() == null || StringUtils.isBlank(name)) {
            return Optional.empty();
        }
        
        return Arrays.stream(request.getCookies())
                .filter(cookie -> name.equals(cookie.getName()))
                .findFirst();
    }

    /**
     * Retrieves a cookie value by name
     * @param request HttpServletRequest containing cookies
     * @param name Name of cookie to find
     * @return Cookie value if found, otherwise null
     */
    public static String getCookieValue(HttpServletRequest request, String name) {
        return getCookie(request, name)
                .map(Cookie::getValue)
                .orElse(null);
    }

    /**
     * Deletes a cookie by setting max age to 0
     * @param response HttpServletResponse to modify
     * @param name Name of cookie to delete
     */
    public static void deleteCookie(HttpServletResponse response, String name) {
        if (response != null && !StringUtils.isBlank(name)) {
            addCookie(response, name, null, 0);
        }
    }

    /**
     * Adds a remember-me cookie with extended expiration
     * @param response HttpServletResponse to add cookie to
     * @param username Username to remember
     */
    public static void addRememberMeCookie(HttpServletResponse response, String username) {
        if (response != null && !StringUtils.isBlank(username)) {
            addCookie(response, REMEMBER_ME_COOKIE, username, 7 * 24 * 60 * 60); // 1 week
        }
    }
}