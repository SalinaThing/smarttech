package com.smarttech.util;

import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.HttpServletRequest;

public class SessionUtils {
    
    // Constants moved to StringUtils
    public static final String USERNAME = StringUtils.SESSION_USERNAME;
    public static final String REDIRECT_URL = StringUtils.SESSION_REDIRECT_URL;
    

    private SessionUtils() {
        // Utility class - prevent instantiation
    }

    // Session validation methods
    public static boolean isSessionValid(HttpSession session) {
        return session != null;
    }

    public static boolean isLoggedIn(HttpSession session) {
        return isSessionValid(session) && session.getAttribute(USERNAME) != null;
    }

    public static boolean isAdmin(HttpSession session) {
        return isLoggedIn(session) && StringUtils.ADMIN_ROLE.equals(getUsername(session));
    }

    // Attribute accessors
    public static String getUsername(HttpSession session) {
        return isSessionValid(session) ? (String) session.getAttribute(USERNAME) : null;
    }

    public static Object getAttribute(HttpSession session, String attribute) {
        return isSessionValid(session) ? session.getAttribute(attribute) : null;
    }

    public static String getStringAttribute(HttpSession session, String attribute) {
        Object value = getAttribute(session, attribute);
        return value != null ? value.toString() : null;
    }

    // URL handling
    public static void storeRequestedURL(HttpServletRequest request) {
        if (request == null) return;
        
        HttpSession session = request.getSession(false);
        if (session != null) {
            String requestedUrl = request.getRequestURL().toString();
            String queryString = request.getQueryString();
            
            session.setAttribute(REDIRECT_URL, 
                queryString != null ? requestedUrl + "?" + queryString : requestedUrl);
        }
    }

    public static String getAndRemoveRedirectUrl(HttpSession session) {
        return getAndRemoveAttribute(session, REDIRECT_URL);
    }

    // Session modification methods
    public static void setAuthenticatedUser(HttpSession session, String username) {
        if (isSessionValid(session)) {
            session.setAttribute(USERNAME, username);
        }
    }
    
    public static void setAttribute(HttpSession session, String name, Object value) {
        if (isSessionValid(session)) {
            session.setAttribute(name, value);
        }
    }
    
    public static void removeAttribute(HttpSession session, String name) {
        if (isSessionValid(session)) {
            session.removeAttribute(name);
        }
    }
    
    public static String getAndRemoveAttribute(HttpSession session, String name) {
        String value = getStringAttribute(session, name);
        removeAttribute(session, name);
        return value;
    }

    // Request-based convenience methods
    public static void setAttribute(HttpServletRequest request, String key, Object value) {
        if (request != null) {
            setAttribute(request.getSession(), key, value);
        }
    }

    public static Object getAttribute(HttpServletRequest request, String key) {
        return request != null ? getAttribute(request.getSession(false), key) : null;
    }

    public static void removeAttribute(HttpServletRequest request, String key) {
        if (request != null) {
            removeAttribute(request.getSession(false), key);
        }
    }

    public static void invalidateSession(HttpServletRequest request) {
        if (request != null) {
            HttpSession session = request.getSession(false);
            if (session != null) {
                session.invalidate();
            }
        }
    }
}