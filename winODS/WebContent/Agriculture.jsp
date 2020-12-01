<!DOCTYPE html>
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
<title>Agriculture</title>
   </head>
   
   <body>
   
   <h2>City of Windsor - Open Data Access Portal</h2>

<div class="row">
  <div class="left" style="background-color:#4682B4;">
    <input type="text" id="mySearch" onkeyup="myFunction()" placeholder="Search.." title="Type in a category">
    <ul id="myMenu">
      <li><a href="#">Download Search Results</a></li>
      <li><a href="#">Suggest Data</a></li>
      <li><a href="Agriculture.jsp">Agriculture</a></li>
      <li><a href="Economics.jsp">Economics</a></li>
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
   
  
  <a href="beatles.txt" download='beatles.txt' target="_blank">Beatles File</a> 
      
      <h3>File Upload:</h3>
      Select a file to upload: <br />
      <form action = "uploadTest.jsp" method = "post"
         enctype = "multipart/form-data">
         <input type = "file" name = "file" size = "50" />
         <br />
         <input type = "submit" value = "Upload File" />
      </form>
     
  
  </div>
  
  
</div>
   
   

    
   
      
  

      
   </body>
   
</html>
