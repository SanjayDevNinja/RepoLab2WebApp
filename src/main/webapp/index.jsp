<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
    <title>Lab2 Sanjay</title>
</head>
<body>
   
    
    <%
    Date now = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
    String currentTime = sdf.format(now);

    if (now.getHours() < 12) {
        out.println("<h1>Good morning, Sanjay, Welcome to COMP367</h1>");
    } else {
        out.println("<h1>Good afternoon, Sanjay, Welcome to COMP367</h1>");
    }
	%>
</body>
</html>



