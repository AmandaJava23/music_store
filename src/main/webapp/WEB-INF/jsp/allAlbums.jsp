<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
   <title>Albums page</title>
</head>
<body>
<h1>Albums page</h1>

<ul>
   <c:forEach items="${albums}" var="album">
      <li>${album}</li>
   </c:forEach>
</ul>
</body>
</html>
