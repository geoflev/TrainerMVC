<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trainers List</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
        <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
    </head>
    <body>
        <div class="generic-container">
            <div class="panel panel-default">
                <div class="panel-heading"><span class="lead">List of Trainers </span></div>
                <table class="table table-hover">
                    <thead id="thead">
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Subject</th>
                            <th width="100"></th>
                            <th width="100"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${trainers}" var="trainer">
                            <tr>
                                <td>${trainer.firstName}</td>
                                <td>${trainer.lastName}</td>
                                <td>${trainer.subject}</td>
                                <td><a href="<c:url value='/${editurl}/${trainer.id}' />" class="btn btn-warning custom-width">Edit</a></td>
                                <td><a href="<c:url value='/${deleteurl}/${trainer.id}' />" class="btn btn-danger custom-width">Delete</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="well">
                <td><a href="<c:url value='/new' />" class="btn btn-primary custom-width" id="submitbtn" >Add</a></td>
            </div>
        </div>
    </body>
</html>
