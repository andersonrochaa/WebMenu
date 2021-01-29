<%  //String user_id = (String) session.getAttribute("user_id");
    if (session.getAttribute("user_id") == null) {
        response.sendRedirect("index.jsp");
%>

<%}%>