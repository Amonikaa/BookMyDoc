package beans;


import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Map;
import java.util.Properties;


public class dBase {

	private Connection connection;
	private Statement statement;
	private ResultSet results = null;
	
	@SuppressWarnings("unused")
	private String query;

	public void createConn() throws ClassNotFoundException,SQLException, IOException {
		//System.getProperty("cisco.life");
		//String testvar=System.getProperty("cisco.life");
		//String testvar=System.getenv("cisco.life");
		//System.out.println("Cisco var "+testvar);
		
/*		Map<Object, Object> env = System.getProperties();
        for (Object envName : env.keySet()) {
            System.out.format("%s=%s%n",
                              (String) envName,
                              env.get((String) envName));
        }*/
				
		Class.forName("com.mysql.jdbc.Driver");
		
		System.out.println("***Adding NEw *******");
		Properties props = new Properties();
		ClassLoader loader = dBase.class.getClassLoader();
		URL currentPath = loader.getResource("beans/dBase.class");
		System.out.println("Original URL == " + currentPath);
		String basePath = currentPath.toString().toString().replace("beans/dBase.class", "");
		if (basePath.contains("file:/")) {
			basePath = basePath.replace("file:", "");
		}
		
		System.out.println("Base Path == "+ basePath); 
		
