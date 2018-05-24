<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Add hospital</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div style="text-align: center">
            <p style="color: black">Enter hospital information. </p>
            <sf:form method="post" action="addhospital">
                <p style="color: black">hospital ID: <font color = "#FF0000">*</font>
                    <sf:input path="getHospitalId"/>&nbsp;
                </p>
                <p style="color: black">hospital name: <sf:input path="hospitalName"/>&nbsp;</p>
                <p style="color: black">hospital address: <sf:input path="hospitalAddress"/>&nbsp;</p>
                <p style="color: black">hospital region: <sf:input path="hospitalRegion"/>&nbsp;</p>               
                <p>                   
                    <cs:input type="submit" value="Edit" path="edithospital" />
                    <cs:input type="submit" value="Delete" path="deletehospital" />
                    <input type="reset" value="Reset">
                </p>
            </sf:form> 
        <p style="color: white">* required fields</p>
        </div>
    </body>
</html>


