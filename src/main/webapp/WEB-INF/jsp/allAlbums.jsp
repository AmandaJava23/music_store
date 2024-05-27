<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
   <title>Mina album</title>
</head>
<body>
<h1>Albums page</h1>
<ul>
   <c:forEach items="${albums}" var="album">
      <li>
            ${album}
      </li>
   </c:forEach>
</ul>
<a href="<spring:url value='/website/albums/welcome.html'/>">Home</a>
</body>
</html>

