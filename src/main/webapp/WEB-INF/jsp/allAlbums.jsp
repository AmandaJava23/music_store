<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Mina album</title>
    <style>
        body {
            background-color: #f8f8f8; /* Ljus bakgrund */
            color: #333; /* Mörk text */
            font-family: 'Georgia', serif; /* Vintage-typografi */
            text-align: center;
            margin: 0;
            padding-top: 5em;
        }

        .container {
            margin-top: 2em;
        }

        h1 {
            color: #b22222; /* Mörk röd färg för rubriken */
            font-size: 2.5em;
            margin-bottom: 20px;
            text-shadow: 2px 2px #ddd; /* Lätt skugga för vintage känsla */
        }

        nav ul {
            list-style-type: none;
            padding: 0;
        }

        nav ul li {
            display: inline;
            margin: 0 15px;
        }

        nav ul li a {
            text-decoration: none;
            color: #b22222; /* Mörk röd färg för länkar */
            font-size: 1.2em;
        }

        nav ul li a:hover {
            color: #c03; /* Ljusare röd vid hover */
        }

        .gif-container {
            margin: 20px auto;
            width: 80%;
            max-width: 400px;
            background-color: #fff;
            padding: 10px;
            border: 5px solid #b22222; /* Mörk röd ram runt gif */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Lätt skugga */
        }

        .gif-container img {
            width: 100%;
            height: auto;
            border-radius: 10px;
        }

        .album-list {
            list-style: none;
            padding: 0;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .album-item {
            background-color: #fff;
            border: 2px solid #b22222; /* Mörk röd ram runt varje album */
            margin: 10px;
            padding: 10px;
            border-radius: 10px;
            font-size: 0.9em;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Lätt skugga */
            width: 150px; /* Mindre storlek på album-boxarna */
            text-align: center;
        }

        .album-item:hover {
            background-color: #f0f0f0; /* Ljusare bakgrund vid hover */
        }

        .album-item button {
            background-color: #b22222; /* Mörk röd bakgrund för knappen */
            color: #fff; /* Vit text */
            border: none;
            padding: 3px 6px;
            border-radius: 5px;
            font-size: 0.9em;
            cursor: pointer;
            margin-left: 15px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1); /* Lätt skugga */
            margin-top: 0.5rem;
        }

        .album-item button:hover {
            background-color: #c03; /* Ljusare röd bakgrund vid hover */
        }

    </style>
</head>
<body>
<div class="container">
    <h1>My albums</h1>
    <nav>
        <ul>
            <li><a href="<spring:url value='/website/albums/welcome.html'/>">Home</a></li>
            <li><a href="<spring:url value='/website/albums/list.html'/>">Albums</a></li>
            <li><a href="<spring:url value='/website/albums/newAlbum.html'/>">New Album</a></li>
        </ul>
    </nav>
    <div class="gif-container">
        <img src="<spring:url value='/assets/vinyl.gif'/>" alt="Vinyl GIF">
    </div>
    <ul class="album-list">
        <c:forEach items="${albums}" var="album">
            <li class="album-item">
                    ${album.title} <br>
                    ${album.artist} <br>
                    ${album.genre} <br>
                <button onclick="deleteAlbum(${album.id})">X</button>
            </li>
        </c:forEach>
    </ul>
</div>

<script>
    function deleteAlbum(id) {
        if (confirm("Är du säker på att du vill ta bort detta album?")) {
            fetch(`/albums/\${id}`, {
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

</body>
</html>

