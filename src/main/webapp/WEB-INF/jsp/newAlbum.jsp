<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<body>
<h1>New Album Registration</h1>

<form:form modelAttribute="form">
    <form:errors path="" element="div" />
    <div>
        <form:label path="title">Title</form:label>
        <form:input path="title" />
        <form:errors path="title" />
    </div>

    <div>
        <form:label path="Genre">Genre</form:label>
        <form:input path="genre" />
        <form:errors path="genre"/>
    </div>

    <div>
        <form:label path="Artist">Artist</form:label>
        <form:input path="artist" />
        <form:errors path="artist"/>
    </div>

    <div>
        <input type="submit" />
    </div>
</form:form>
</body>
</html>
