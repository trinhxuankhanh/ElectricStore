package com.tun.Filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
 
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tun.Beans.*;
import com.tun.Request.UserRoleRequestWrapper;
import com.tun.Utils.*;

@WebFilter("/*")
public class SecurityFilter implements Filter {
 
    public SecurityFilter() {
    }
 
    @Override
    public void destroy() {
    }
 
    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
 
        String servletPath = request.getServletPath();
 
        // ThÃ´ng tin ngÆ°á»�i dÃ¹ng Ä‘Ã£ Ä‘Æ°á»£c lÆ°u trong Session
        // (Sau khi Ä‘Äƒng nháº­p thÃ nh cÃ´ng).
        customer loginedUser = AppUtils.getLoginedUser(request.getSession());
 
        if (servletPath.equals("/login")) {
            chain.doFilter(request, response);
            return;
        }
        HttpServletRequest wrapRequest = request;
 
        if (loginedUser != null) {
            // User Name
            String userName = loginedUser.getUsername();
 
            // CÃ¡c vai trÃ² (Role).
            String roles = loginedUser.getRole();
            List<String> listRole=new ArrayList<String>();
            listRole.add(roles);
            // GÃ³i request cÅ© bá»Ÿi má»™t Request má»›i vá»›i cÃ¡c thÃ´ng tin userName vÃ  Roles.
            wrapRequest = new UserRoleRequestWrapper(userName, listRole, request);
        }
 
        // CÃ¡c trang báº¯t buá»™c pháº£i Ä‘Äƒng nháº­p.
        if (SecurityUtils.isSecurityPage(request)) {
 
            // Náº¿u ngÆ°á»�i dÃ¹ng chÆ°a Ä‘Äƒng nháº­p,
            // Redirect (chuyá»ƒn hÆ°á»›ng) tá»›i trang Ä‘Äƒng nháº­p.
            if (loginedUser == null) {
 
                String requestUri = request.getRequestURI();
 
                // LÆ°u trá»¯ trang hiá»‡n táº¡i Ä‘á»ƒ redirect Ä‘áº¿n sau khi Ä‘Äƒng nháº­p thÃ nh cÃ´ng.
                int redirectId = AppUtils.storeRedirectAfterLoginUrl(request.getSession(), requestUri);
 
                response.sendRedirect(wrapRequest.getContextPath() + "/login?redirectId=" + redirectId);
                return;
            }
 
            // Kiá»ƒm tra ngÆ°á»�i dÃ¹ng cÃ³ vai trÃ² há»£p lá»‡ hay khÃ´ng?
            boolean hasPermission = SecurityUtils.hasPermission(wrapRequest);
            if (!hasPermission) {
 
                RequestDispatcher dispatcher //
                        = request.getServletContext().getRequestDispatcher("/accessDeniedView.jsp");
 
                dispatcher.forward(request, response);
                return;
            }
        }
 
        chain.doFilter(wrapRequest, response);
    }
 
    @Override
    public void init(FilterConfig fConfig) throws ServletException {
 
    }
 
}
