<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
   <title>Mina album</title>
   <script>
      function deleteAlbum(id) {
         if (confirm("Är du säker på att du vill ta bort detta album?")) {
            fetch(`/website/albums/${id}`, {
               method: 'DELETE'
            })
                    .then(response => {
                       if (response.ok) {
                          alert("Album borttaget!");
                          location.reload();
                       } else {
                          alert("Misslyckades att ta bort album.");
                       }
                    })
                    .catch(error => {
                       console.error("Det uppstod ett fel vid borttagning av albumet:", error);
                    });
         }
      }
   </script>
</head>
<body>
<h1>Albums page</h1>

<ul>
   <c:forEach items="${albums}" var="album">
      <li>
            ${album.title}
         <button onclick="deleteAlbum(${album.id})">Ta bort</button>
      </li>
   </c:forEach>
</ul>
</body>
</html>

