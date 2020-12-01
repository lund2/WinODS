package winODS;

import javax.servlet.http.HttpServlet;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class files {

	public static void listFiles() throws IOException {
	  
		
		//must add local file patch here.
		String uploadHere ="C:\\Users\\username\\eclipse-workspace\\testfolder";
		String[] pathnames;
		File f = new File(uploadHere);
		
		pathnames = f.list();
		PrintWriter out = null;
	

		for(String pathname : pathnames)
		{
			out.println(pathname);
	
		}
		
}
}
