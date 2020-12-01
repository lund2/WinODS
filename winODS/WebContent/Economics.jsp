<%@ page import="winODS.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.http.HttpServlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head><!DOCTYPE html>
<html>
   <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
	body {
  		font-family: Arial, Helvetica, sans-serif;
	}

	* {
  		box-sizing: border-box;
	}

	/* Create a column layout with Flexbox */
	.row {
  		display: flex;
        align-items: stretch;
	}

	/* Left column (menu) */
	.left {
  		flex: 30%;
  		padding: 15px 0;
        margin-bottom: auto;
	}

	.left h2 {
  		padding-left: 8px;
	}

	/* Right column (page content) */
	.right {
  		flex: 70%;
  		padding: 15px;
	}

	/* Style the search box */
	#mySearch {
  		width: 100%;
  		font-size: 18px;
  		padding: 11px;
  		border: 1px solid #ddd;
	}

	/* Style the navigation menu inside the left column */
	#myMenu {
  		list-style-type: none;
  		padding: 0;
  		margin: 0;
	}

	#myMenu li a {
  		padding: 12px;
  		text-decoration: none;
  		color: black;
  		display: block
	}

	#myMenu li a:hover {
  		background-color: #eee;
	}
	</style>
	<script type="text/javascript" src ="myjs.js"></script>
	
  <link rel="stylesheet" href="main.css">
<title>Economics</title>
   </head>
   
   <body>
   
   <h2>City of Windsor - Open Data Access Portal</h2>

<div class="row">
  <div class="left" style="background-color:#4682B4;">
    <input type="text" id="mySearch" onkeyup="myFunction()" placeholder="Search.." title="Type in a category">
    <ul id="myMenu">
      <li><a href="#">Download Search Results</a></li>
      <li><a href="#">Suggest Data</a></li>
      <li><a href="#">Agriculture</a></li>
      <li><a href="#">Economics</a></li>
      <li><a href="#">Education</a></li>
      <li><a href="#">Health and Safety</a></li>
      <li><a href="#">History</a></li>
      <li><a href="#">Labour</a></li>
      <li><a href="#">Law</a></li>
      <li><a href="#">Nature and Environment</a></li>
      <li><a href="#">Science and Technology</a></li>
      <li><a href="#">Transport</a></li>
    </ul>
  </div>
  
  <div class="right" style="background-color:#ddd;">
    <h2>Search Results</h2>
    <h3>Title</h3>
    <p>Brief Description...</p>
    <p>Last Updated:mm/dd/yyy</p>
    <p>Date Published:mm/dd/yyy</p>
    <p>Organization:____________</p>
     <% 
		//location of directory you want for the list of files
		String listOfFiles ="C:\\Users\\username\\eclipse-workspace\\testfolder";
		String[] pathnames;
		File f = new File(listOfFiles);
		
		pathnames = f.list();
		
		for(String pathname : pathnames)
		{
			out.println("<br/>" + pathname);
	
		}
    //This line calls the list files function from the files.java class. It should work but when running the code we were getting an error.
    //Java code directly above is the same code to get around the error message
    //files.listFiles();
     %>
  </div>
</div>
   
   //file to test the download functionality
<a href="beatles.txt" download='beatles.txt' target="_blank">Beatles File</a> 
      
      <h3>File Upload test new destination:</h3>
      Select a file to upload: <br />
      <form action = "UploadFile.jsp" method = "post"
         enctype = "multipart/form-data">
         <input type = "file" name = "file" size = "50" />
         <br />
         <input type = "submit" value = "Upload File" />
      </form>
     
    
   
      
  

      
   </body>
   
</html>
<body>

</body>
</html>
