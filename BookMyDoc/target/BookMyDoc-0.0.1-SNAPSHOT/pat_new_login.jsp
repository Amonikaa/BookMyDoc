 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<script src="pat_log.js" >
</script>
<title>Doctor's Online</title>

<link rel="stylesheet" type="text/css" href="style.css" />

<style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
</head>
<body>
<div id="maincontainer">

<div id="header">
<h1>Doctor's Online</h1>
<span>An Online Appointment Booking System</span>
</div>

<div id="contentwrapper">
<div id="contentcolumn">

<h2>Registration Successful!!</h2>
You Can LogIn By This ID:  <%=(Integer)request.getAttribute("user") %>

<p><form name="login_form" method="post" action="ControlServlet"onsubmit="return isNumeric();">
  <label>User ID:      <span class="style1">...................</span>
  <input type="text" name="id" value=<%=(Integer)request.getAttribute("user") %>>
  </label><br /><br />

    <label>Password:<span class="style1">    ................</span>
    <input type="password" name="password"/>
    <input type="hidden" name="page" value="pat_login.jsp">
  </label><br /><br />



      <p>&nbsp;</p>
      <p>
        <label> <span class="style1">.....................
        </span>
        <input type="submit" name="login" id="login" value="Login" />
        </label>
        <br />
          <br />
            </p>
</form>

<p></div>
</div>

<div id="leftcolumn">
<h4>Navigation</h4>

<ul id="navlist">
<li><a href="index.jsp">Home</a></li>
<li><a href="pat_register.jsp">Patient Registration</a></li>
<li><a href="doc_register.jsp">Doctor's Registration</a></li>

</ul>

<div class="greybox">
<li><a href="pat_login.jsp">Patient's Login</a></li>
<li><a href="doc_login.jsp">Doctor's Login</a></li>
<li><a href="admin_login.jsp">Admin Login</a></li>
</div>

</div>

<div id="push"></div>

</div>


</body>
</html>
 