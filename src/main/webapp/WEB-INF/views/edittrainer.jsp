<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Trainer</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
        <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
    </head>
    <body>
        <div class="generic-container">
            <h2>Edit Trainer</h2>
            <form:form  id="form" method="POST" action="{id}" modelAttribute="trainer" class="form-horizontal">
                <form:input type="hidden" path="id" id="id" />

                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="firstName">First Name</label>
                        <div class="col-md-7">
                            <form:input type="text" path="firstName" id="firstName" class="form-control input-sm" maxlength="45"/>
                            <div class="has-error">
                                <form:errors path="firstName" cssClass="error" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="lastName">Last Name</label>
                        <div class="col-md-7">
                            <form:input type="text" path="lastName" id="lastName" class="form-control input-sm" maxlength="45"/>
                            <div class="has-error">
                                <form:errors path="lastName" cssClass="error" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="subject">Subject</label>
                        <div class="col-md-7">
                            <form:input type="text" path="subject" id="subject" class="form-control input-sm" maxlength="45"/>
                            <div class="has-error">
                                <form:errors path="subject" cssClass="error" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div id="error"></div>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
                <div style="float:right;" ><a href="<c:url value='/${listurl}' />">Back to the list of Trainers</a></div>
            </form:form>
        </div>
        <script src="${pageContext.request.contextPath}/static/css/JS.js"></script>
    </body>
</html>
