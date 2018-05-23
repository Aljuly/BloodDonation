<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Delete incoming blood transaction</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <sf:form method="post" action="deletehospital">
            <p style="color: black">hospital ID:<font color = "#FF0000">*</font>
                <sf:input path="ishospital">&nbsp;
            </p>
            <h1><s:url href="/hospital" style="color: black">OK</a></h1>
            <p>
                <input type="reset" value="Reset">
            </p>
        </sf:form> 
    </body>
</html>
