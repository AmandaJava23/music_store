<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>New Album Registration</title>
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

        .album-form {
            width: 80%;
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border: 5px solid #b22222; /* Mörk röd ram runt formuläret */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Lätt skugga */
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            font-size: 1em;
            border: 2px solid #b22222; /* Mörk röd ram runt input-fälten */
            border-radius: 5px;
        }

        .form-error {
            color: #b22222; /* Mörk röd färg för felmeddelanden */
            font-size: 0.9em;
            margin-top: 5px;
        }

        .btn-submit {
            background-color: #b22222; /* Mörk röd bakgrund för submit-knappen */
            color: #fff; /* Vit text */
            border: none;
            padding: 10px 20px;
            font-size: 1em;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-submit:hover {
            background-color: #c03; /* Ljusare röd vid hover */
        }

        .home-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #b22222; /* Mörk röd bakgrund för hemlänken */
            color: #fff; /* Vit text */
            text-decoration: none;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1); /* Lätt skugga */
        }

        .home-link:hover {
            background-color: #c03; /* Ljusare röd vid hover */
        }

    </style>
    <script>
        function submitForm(event) {
            event.preventDefault(); // Förhindra standard formulärsändning

            const form = document.querySelector('.album-form');
            const formData = new FormData(form);
            const jsonData = {};

            formData.forEach((value, key) => {
                jsonData[key] = value;
            });

            fetch('/albums', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(jsonData)
            })
                .then(response => {
                    if (response.ok) {
                        alert('Album sparat!');
                        window.location.href = '/website/albums/list.html'; // Ompekning efter framgång
                    } else {
                        alert('Misslyckades att spara album.');
                    }
                })
                .catch(error => {
                    console.error('Det uppstod ett fel:', error);
                    alert('Det uppstod ett fel vid sparandet av album.');
                });
        }
    </script>
</head>
<body>
<div class="container">
    <h1>New Album Registration</h1>

    <form class="album-form" onsubmit="submitForm(event)">
        <div class="form-group">
            <label for="title">Title</label>
            <input type="text" id="title" name="title" class="form-control" />
        </div>

        <div class="form-group">
            <label for="artist">Artist</label>
            <input type="text" id="artist" name="artist" class="form-control" />
        </div>
        <div class="form-group">
            <label for="genre">Genre</label>
            <input type="text" id="genre" name="genre" class="form-control" />
        </div>

        <div class="form-group">
            <input type="submit" class="btn-submit" value="Submit" />
        </div>
    </form>

    <a href="<spring:url value='/website/albums/welcome.html'/>" class="home-link">Home</a>
</div>
</body>
</html>
