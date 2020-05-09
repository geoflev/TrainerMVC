<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Trainer</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body>
        <h1>Register a new Trainer</h1>
        <form:form method="POST" action="new" modelAttribute="trainer">
            <form:input type="hidden" path="id" id="id"/>
            <table>
                <tr>
                    <td><label for="firstName">First Name </label> </td>
                    <td><form:input path="firstName" /></td>
                    <td><form:errors path="firstName" cssClass="error"/></td>
                </tr>
                <tr>
                    <td><label for="lastName">Last Name </label> </td>
                    <td><form:input path="lastName" /></td>
                    <td><form:errors path="lastName" cssClass="error"/></td>
                </tr>
                <tr>
                    <td><label for="subject">Subject </label> </td>
                    <td><form:input path="subject" /></td>
                    <td><form:errors path="subject" cssClass="error"/></td>
                </tr>
                <tr>
                    <td>
                        <input type="submit">
                    </td>
                </tr>
            </table>
        </form:form>
        <br>
        <div id="msg">${message}</div>
        <div id="list"><a href="<c:url value='/${listurl}' />">Back to the list of Trainers</a></div>
    </body>
</html>
