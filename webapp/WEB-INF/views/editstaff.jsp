<!-- This page is use to let the user to add new customer record into database.
    author:Daniel Lim Heng Jie, Andy Chiah Chee Han
-->
<html>
    <head>
       
         <title>Edit Staff</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div style="text-align: center">
            <p style="color: black">Enter new staff information. </p>
        <form method="post" action="EditStaff">
            <p style="color: black">Staff ID:<font color = "#FF0000">*</font>
                <input type="text" name="idstaff">&nbsp;</p>
            <p style="color: black">HospitalID : <input type="text" name="idhospital">&nbsp;
            </p>
            
            <p style="color: black">address: <input type="text" name="HPaddress">&nbsp;
            </p>
            <p style="color: white">asdasdsdadaada<input type="text" name="address">&nbsp;
            </p>
            <p style="color: black">first name: <input type="text" name="firstname">&nbsp;
            </p>
            <p style="color: black">last name: <input type="text" name="lastname">&nbsp;
            </p>
            <p style="color: black">contact: <input type="text" name="contact">&nbsp;
            </p>
           <p style="color: black">gender: <select name="staffgender">
                <option>M</option>
                <option>F</option>
            </select>&nbsp;
            </p>
            <p style="color: black">IC number: <input type="text" name="stafficnumber">&nbsp;
            </p>
            <p><input type="submit" name="Submit" value="Submit"  >
                <input type="reset" value="Reset">
            </p>
            
            
        </form> 
        <p style="color: white">* required fields</p>
        </div>
    </body>
</html>


