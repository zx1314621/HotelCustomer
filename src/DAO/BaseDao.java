package DAO;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;


public class BaseDao {
	DataSource dataSource;
	
	public BaseDao()
	{
		try {
			Context context = new InitialContext();
			dataSource =
					(DataSource)context.lookup("java:comp/env/jdbc/sampleDS");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Exception:"+e);
		}
		//ServletContext context = getServletContext();	
		//dataSource = (DataSource) context.getAttribute("dataSource");
		
	}
	public Connection getConnection()throws Exception{
		return dataSource.getConnection();
	}

}
