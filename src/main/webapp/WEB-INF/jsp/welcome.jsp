<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Hem</title>
    <style>
        body {
            background-color: #f8f8f8;
            color: #333;
            font-family: 'Georgia', serif;
            text-align: center;
            margin: 0;
            padding-top: 5em;
        }

        .container {
            margin-top: 2em;
        }

        h1 {
            color: #b22222;
            font-size: 2.5em;
            margin-bottom: 20px;
            text-shadow: 2px 2px #ddd;
        }

        nav ul {
            list-style-type: none;
            padding: 0;
        }

        nav ul li {
            display: inline;
            margin: 0 15px;
        }

        .nav-link {
            text-decoration: none;
            color: #b22222; /* Mörk röd färg för länkar */
            font-size: 1.2em;
        }

        .nav-link:hover {
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

    </style>
</head>
<body>
<div class="container">
    <h1>Welcome to your music store</h1>
    <nav>
        <ul>
            <li><a href="<spring:url value='/website/albums/welcome.html'/>" class="nav-link">Home</a></li>
            <li><a href="<spring:url value='/website/albums/list.html'/>" class="nav-link">Albums</a></li>
            <li><a href="<spring:url value='/website/albums/newAlbum.html'/>" class="nav-link">New Album</a></li>
        </ul>
    </nav>
    <div class="gif-container">
        <img src="<spring:url value='/assets/vinyl.gif'/>" alt="Vinyl GIF">
    </div>
</div>
</body>
</html>
