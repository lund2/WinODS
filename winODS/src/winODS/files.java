package winODS;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class files {

	public static void main(String[] args) throws IOException {
	  
		
		/*
		 * 
		 * 
		 * OLD
		 * 
		String uploadFilePath = "../../../Justi/eclipse-workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/winODS/files";
		Path uploadPath = Paths.get("C:\\Users\\Justi\\eclipse-workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\winODS\\files");
		//Files.list(Paths.get("WebContent")).forEach(System.out::println);
		Files.list(Paths.get(uploadFilePath)).forEach(System.out::println);
		Files.list(Paths.get(uploadFilePath).subpath(2, 3)).forEach(System.out::println);
		//Files.list(Path.(uploadFilePath)).forEach(System.out::println);
		*/
		
		String[] pathnames;
		//this is where the files get uploaded from the UploadFile.jsp file
		File f = new File("../../../Justi/eclipse-workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/winODS/files");
		
		pathnames = f.list();
		
		for(String pathname : pathnames)
		{
				System.out.println(pathname);
	
		}
		
		if(f.exists())
		{
			System.out.println("Exist");
		}

}
}
