<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/6/26 0026
  Time: 上午 11:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.LinkedHashMap" %>
<%@ page import="java.util.HashMap" %>
<%


        Enumeration<?> enumeration = session.getAttributeNames();
        // 遍历enumeration中的
        char f = '0';
        String m = request.getParameter("id");
        while (enumeration.hasMoreElements()) {
            // 获取session键值
            String name = enumeration.nextElement().toString();
            System.out.println("sesseion name "+name);
            if(name=="list"){
//                Map<String,Integer> last = (HashMap<String ,Integer>)session.getAttribute("list");
//                last.put(m,1);
                String r = (String)session.getAttribute("list");
                session.setAttribute("list",r+" "+m);
                f='1';
                break;
            }
        }
        if(f=='0'){
//            Map<String,Integer> last = new HashMap<String,Integer>();
//            last.put(m,1);
//            session.setAttribute("list",last);
            session.setAttribute("list","");
        }
        response.sendRedirect("Market.jsp");


%>
