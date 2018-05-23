<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Add hospital</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div style="text-align: center">
            <p style="color: black">Enter new hospital information. </p>
            <sf:form method="GET" commandName="Addhospital">

                <p style="color: black">hospital name: <sf:input path="hospitalName"/>&nbsp;</p>
                <p style="color: black">hospital address: <sf:input path="hospitalAddress"/>&nbsp;</p>
                <p style="color: black">hospital region: <sf:input path="hospitalRegion"/>&nbsp;</p>
                <p>                   
                    <input type="submit" name="Submit" value="Submit" />
                    <input type="reset" value="Reset" />
                </p>
            </sf:form> 
            <p style="color: white">* required fields</p>
        </div>
    </body>
</html>


