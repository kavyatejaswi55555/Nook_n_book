<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.List,com.ts.dto.Category" import="java.util.List,com.ts.dao.CategoryDAO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

body {
	background-image:
		url("https://thumbs.dreamstime.com/z/house-repair-property-maintenance-laborer-tool-equipment-home-service-isolated-white-wall-background-house-repair-124982803.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-width: 466px;
	 background-size:cover;
}
.navbar {
  overflow: hidden;
  background-color: #FA6775;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: Cornsilk;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: Black;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: #ddd;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #F08080;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
.bg-img
{
background-position:center;
background-repeat:no-repeat;
background-size:cover;
position:relative;
}
.mySlides{display:none;}
</style>
</head>
<body>
<% 
CategoryDAO categoryDao = new CategoryDAO();
List<Category> categoryList = categoryDao.getAllCategorys();
request.setAttribute("categoryList", categoryList); 
%>
<form action="SelectServlet" method="post" accept-charset="utf-8" class="form" role="form">
<div class="navbar">
   <div class="dropdown"><font color="Cornsilk">CATEGORIES</font>
    <button class="dropbtn">
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
       <td><a href='SelectServlet?catId=1'>AC SERVICES</a></td>
      <td><a href='SelectServlet?catId=2'>BEAUTY SERVICES</a></td>
      <td><a href='SelectServlet?catId=3'>HOME SERVICES</a></td>
    </div>
  </div> 
  <a href="CustomerBooking">BOOKING DETAILS</a>
  <a href="Home.html">LOG OUT</a>
</div>

</form>
<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 1500); // Change image every 2 seconds
}
</script>
		
</body>
</html>