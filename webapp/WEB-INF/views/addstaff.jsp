<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html>
<html>
    <head> 
        <title>Add Staff</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div style="text-align: center">
            <p style="color: black">Enter new staff information. </p>
            <sf:form method="POST" commandName="Addstaff">
                <p style="color: black">Staff ID:<font color = "#FF0000">*</font>
                    <sf:input type="text" path="staffId"/>&nbsp;
                </p>
                <p style="color: black">HospitalID : <sf:input path="hospital.hospitalID"/>&nbsp;</p>
                <p style="color: white">Address : 
                    <sf:input path="address"/>&nbsp;
                    <sf:input path="city"/>&nbsp;
                </p>
                <p style="color: black">First name : <sf:input path="firstName"/>&nbsp;</p>
                <p style="color: black">Last name : <sf:input path="lastName"/>&nbsp;</p>
                <p style="color: black">contact : <sf:input path="contactPhone"/>&nbsp;</p>
                <p style="color: black">gender : 
                    <sf:select path="gender">
                        <option>M</option>
                        <option>F</option>
                    </sf:select>&nbsp;
                </p>
                <p style="color: black">IC number: <sf:input type="text" path="icNumber"/>&nbsp;</p>
                <p> 
                    <input type="submit" name="Submit" value="Submit">
                    <input type="reset" value="Reset">
                </p>
            </sf:form> 
            <p style="color: white">* required fields</p>
        </div>
    </body>
</html>


