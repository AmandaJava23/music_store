<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <title>Hem</title>
    <style>
        body {
            text-align: center;
        }

        nav ul {
            list-style-type: none;
            padding: 0;
        }

        nav ul li {
            display: inline;
            margin: 0 10px;
        }

        a {
            text-decoration: none;
            color: black;
        }

        img {
            display: block;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<div>
    <h1>Välkommen till vår musiksida</h1>
    <nav>
        <ul>
            <li><a href="<spring:url value='/home'/>">Home</a></li>
            <li><a href="<spring:url value='/website/albums/list.html'/>">Albums</a></li>
            <li><a href="<spring:url value='/website/albums/newAlbum.html'/>">New Album</a></li>
            <li><a href="<spring:url value='/contact'/>">Contact</a></li>
            <li><a href="<spring:url value='/website/albums/welcome.html'/>">Welcome</a></li>
        </ul>
    </nav>
    <img src="<spring:url value='/assets/vinyl.gif'/>" alt="Vinyl GIF">
</div>
</body>
</html>
