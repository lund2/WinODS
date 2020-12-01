<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "javax.servlet.http.*" %>
<%@ page import = "org.apache.commons.fileupload.*" %>
<%@ page import = "org.apache.commons.fileupload.disk.*" %>
<%@ page import = "org.apache.commons.fileupload.servlet.*" %>
<%@ page import = "org.apache.commons.io.output.*" %>

<%

	//this string will depend on the destination you have set on your local machine, ex:
	String uploadHere ="C:\\Users\\username\\eclipse-workspace\\uploadedfiles";
	
	/*
	*IF IT IS RUNNING ON MAC
	*String uploadHere ="/Users/username/eclipse-workspace/uploadedfiles";
	*/
	
	DiskFileItemFactory factory = new DiskFileItemFactory();
	factory.setSizeThreshold(1024);
	
	//this is where the file will go if it exceeds threshold limit
	//once again, local machine dependent
	factory.setRepository(new File("C:\\Users\\username\\eclipse-workspace"));
	ServletFileUpload uploader = new ServletFileUpload(factory);
	
	try
	{
		
		List items = uploader.parseRequest(request);
		Iterator iterator = items.iterator();
		while(iterator.hasNext())
		{
			FileItem item = (FileItem)iterator.next();
			File file = new File(uploadHere, item.getName());
			item.write(file);
			out.write("<p>"+file.getName()+" was uploaded successfully</p>");
			
		}
	}
	catch(FileUploadException e)
	{
		out.write("<p>FileUploadException was thrown... "+e.getMessage()+"</p>");
				
	}
	catch(Exception e)
	{
		out.write("<p>an Exception was thrown..."+e.getMessage()+"</p>");
	}
	
	
%>
