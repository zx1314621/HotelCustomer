package Listener;

import java.util.Date;

import javax.naming.*;
import javax.servlet.*;
import javax.servlet.annotation.WebListener;
import javax.sql.DataSource;

/**
 * Application Lifecycle Listener implementation class DataSourceListener
 *
 */
@WebListener
public class DataSourceListener implements ServletContextListener, ServletContextAttributeListener {

    /**
     * Default constructor. 
     */
    public DataSourceListener() {
        // TODO Auto-generated constructor stub
    }
	/**
     * @see ServletContextAttributeListener#attributeAdded(ServletContextAttributeEvent)
     */
    public void attributeAdded(ServletContextAttributeEvent scae)  { 
         // TODO Auto-generated method stub
    	context = scae.getServletContext();
    	context.log("增加属性"+new Date());
    }

	/**
     * @see ServletContextAttributeListener#attributeRemoved(ServletContextAttributeEvent)
     */
    public void attributeRemoved(ServletContextAttributeEvent scae)  { 
         // TODO Auto-generated method stub
    	context = scae.getServletContext();
    	context.log("删除属性"+new Date());
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	context = sce.getServletContext();
    	context.removeAttribute("dataSource");
    	context.log("程序结束"+new Date());
    }
	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    private ServletContext context = null;
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	Context ctx = null;
    	DataSource dataSource = null;
    	context = sce.getServletContext();
    	try {
    		if(ctx == null)
			{
    			ctx = new InitialContext();
    		}
    		dataSource =
    				(DataSource)ctx.lookup("java:comp/env/jdbc/sampleDS");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	context.setAttribute("dataSource", dataSource);
    	context.log("程序开始"+new Date());
    	
    }
	@Override
	public void attributeReplaced(ServletContextAttributeEvent arg0) {
		// TODO Auto-generated method stub
		context = arg0.getServletContext();
    	context.log("更改属性"+new Date());
	}
}
