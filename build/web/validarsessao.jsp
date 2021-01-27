<%  if (session == null || session.getAttribute("user_id") == null ) {  %>
        <jsp:forward page="index.jsp"/>
<%  }  %>