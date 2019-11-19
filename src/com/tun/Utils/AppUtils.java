package com.tun.Utils;

import java.util.HashMap;
import java.util.Map;
 
import javax.servlet.http.HttpSession;
 
import com.tun.Beans.*;
 
public class AppUtils {
 
    private static int REDIRECT_ID = 0;
 
    private static final Map<Integer, String> id_uri_map = new HashMap<Integer, String>();
    private static final Map<String, Integer> uri_id_map = new HashMap<String, Integer>();
 
    // LÆ°u trá»¯ thÃ´ng tin ngÆ°á»�i dÃ¹ng vÃ o Session.
    public static void storeLoginedUser(HttpSession session, customer loginedUser) {
        // TrÃªn JSP cÃ³ thá»ƒ truy cáº­p thÃ´ng qua ${loginedUser}
        session.setAttribute("loginedUser", loginedUser);
    }
 
    // Láº¥y thÃ´ng tin ngÆ°á»�i dÃ¹ng lÆ°u trá»¯ trong Session.
    public static customer getLoginedUser(HttpSession session) {
        customer loginedUser = (customer) session.getAttribute("loginedUser");
        return loginedUser;
    }
 
    public static int storeRedirectAfterLoginUrl(HttpSession session, String requestUri) {
        Integer id = uri_id_map.get(requestUri);
 
        if (id == null) {
            id = REDIRECT_ID++;
 
            uri_id_map.put(requestUri, id);
            id_uri_map.put(id, requestUri);
            return id;
        }
 
        return id;
    }
 
    public static String getRedirectAfterLoginUrl(HttpSession session, int redirectId) {
        String url = id_uri_map.get(redirectId);
        if (url != null) {
            return url;
        }
        return null;
    }
 
}