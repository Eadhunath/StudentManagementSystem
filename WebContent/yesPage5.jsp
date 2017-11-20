<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link rel="stylesheet" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
body {
    font-family: "Lato", sans-serif;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #ADD8E6;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
</head>
<body>

<div id="mySidenav" class="sidenav" align="centre">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <center>
  <font size="5">UPDATE</font>
  </center>
  <br>
  <br>
  <a href="TeacherAssignments1.jsp">ASSIGNMENTS</a><br>
    <a href="Notice.jsp">NOTICE</a><br>
    <a href="Test.jsp">TEST</a>
  
</div>
<div align="left">
<br>
<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Click Here</span>
</div>
<script>
function openNav() {
    document.getElementById("mySidenav").style.width = "400px";
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}
</script>
     
 <section class="container">
    <div class="login">
      <h1>Number of Assignments Submitted</h1>
        <%@ page import = "java.sql.*" %>  
      <% 	    
	    String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/Student"; //test is the db name. 3306 is the default port
		String userName = "root"; //username to db
		String passWord = "mysql"; //password to db
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url,userName,passWord);
		 String name = (String)request.getParameter("Name");
		String query = String.format("select * from CN where username ='"+name+"'");
		Statement st=conn.createStatement();
		ResultSet rs=st.executeQuery(query);
		if(rs.next())
		{%>
			<tr>
			<tr><td>1:: <%=rs.getString("submitted_1")%></td></tr><br>
			<tr><td>2:: <%=rs.getString("submitted_2")%></td></tr><br>
			<tr><td>3:: <%=rs.getString("submitted_3")%></td></tr><br>
			<tr><td>4:: <%=rs.getString("submitted_4")%></td></tr><br>
			<tr><td>5:: <%=rs.getString("submitted_5")%></td></tr><br>
			<tr><td>6:: <%=rs.getString("submitted_6")%></td></tr><br>
			<tr><td>Project:: <%=rs.getString("project")%></td></tr>
			
		<%}
%>
 <p><a href="welcomePage.jsp">Done</a></p>
</body>
</html>