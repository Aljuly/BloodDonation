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
            <p style="color: black">Enter new hospital information. </p>
            <sf:form method="post" action="Addhospital">
                <p style="color: black">hospital ID: <font color = "#FF0000">*</font>
                    <sf:input type="text" name="getHospitalId">&nbsp;
                </p>
                <p style="color: black">hospital name: <sf:input type="text" name="hospitalName">&nbsp;</p>
                <p style="color: black">hospital address: <sf:input type="text" name="hospitalAddress">&nbsp;</p>
                <p style="color: black">hospital region: <sf:input type="text" name="hospitalRegion">&nbsp;</p>               
                <p>                   
                    <input type="submit" name="Submit" value="Submit"  >
                    <input type="reset" value="Reset">
                </p>
            </sf:form> 
        <p style="color: white">* required fields</p>
        </div>
    </body>
</html>


