<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trainers List</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
            h1
            {
                text-align: center;
            }
            .header{
                font-weight: bold;
            }
        </style>

    </head>
    <body>
        <h1>Trainers List</h1>
        <table>
            <tr class="header">
                <td>ID</td><td>First Name</td><td>Last Name</td><td>Subject</td><td>Edit</td><td>Delete</td>
            </tr>
            <c:forEach items="${trainers}" var="trainer">
                <tr>

                    <td>${trainer.id}</td>
                    <td>${trainer.firstName}</td>
                    <td>${trainer.lastName}</td>
                    <td>${trainer.subject}</td>
                    <td><button type="submit" class="btn btn-warning"><a href="<c:url value='/${editurl}/${trainer.id}' /> ">Edit</a></button></td>
                    <td><button type="submit" class="btn btn-danger"><a href="<c:url value='/${deleteurl}/${trainer.id}' />">Delete</a></button></td>
                </tr>
            </c:forEach>
        </table>
        </br>
        </br>
        <div id="msg">${msg}</div>
        <button type="submit" class="btn btn-success"><a href="<c:url value='/new' />">Add</a></button>
    </body>
</html>
