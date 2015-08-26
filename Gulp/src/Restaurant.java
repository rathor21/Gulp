

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Restaurant1
 */
@WebServlet("/Restaurant")
public class Restaurant extends HttpServlet {
	static Connection conn = null;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Restaurant() {
        super();
        openConnection();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		if(!request.getParameter("name").isEmpty()){
	
		
		request.setAttribute("message2", getRestaurants());
		
		getServletContext().getRequestDispatcher("/restaurant.jsp").forward(
				request, response);
	
		}
		
		doPost(request, response);
		
	}

	
	
		
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		String message = "";
		String message2 = "";
		String email=request.getParameter("inputEmail");  
		String password=request.getParameter("inputPassword");  
		         
		try {      
		        String sql = "select * from userprofile where "
		        			+ " email=" + "\'" + email + "\'" + " and "
		        			+ " pwd= " + "\'" + password + "\'" 
		        			;
		    
		        ResultSet result;
				result = getFromDB(sql);
					if(result.next()){
		        	if(password.equals(result.getString("pwd"))){
		        		message += "Welcome, "+ result.getString("USER_NAME");  
		                HttpSession session=request.getSession(true);  
		                session.setAttribute("name",email);  
		                message2= getRestaurants();   
		                request.setAttribute("message1", message);
		                request.setAttribute("message2", message2);
		              
		             }

					}else{  
		                message +="Sorry, username or password error! Click logout to return";    
		                request.setAttribute("message2", message);
		                System.out.println("in else" + message);
		            }   
					getServletContext().getRequestDispatcher("/restaurant.jsp").forward(
							request, response);
		        	
		        
		        
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
        	}
	
	
public String  getRestaurants() {
		
		String message= "";
		
		try{
    		String sql = "select res_name, ROUND(AVG(CAST(rating AS FLOAT)), 2) as Average from restaurant group by res_name order by Average DESC"; 
 
    				     
    		
    		ResultSet res_result = getFromDB(sql);
			
			message = " <table class= \"table\"><thead><tr><th>Restaurant Name</th><th>Rating</th><th></th></tr></thead><tbody>";
			String res_name="";

			while (res_result.next()) {
					res_name = res_result.getString("res_name");
					System.out.println("in result " + res_name);
					String rating = res_result.getString("Average");
					message += "<tr><td>" + "<a href=restList?res_name=" + URLEncoder.encode(res_name, "UTF-8") + ">" + res_name + "</a>" + "</td><td>" + rating
							+ "</td><td>";
				}
			
			message += "</tbody></table></div>";
			return message;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return message;
	}
	
    		
	public static void openConnection() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String url = "jdbc:oracle:thin:testuser/password@localhost";
			Properties props = new Properties();
			props.setProperty("user", "testdb");
			props.setProperty("password", "password");
			conn = DriverManager.getConnection(url, props);
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void updateDB(String sql) throws SQLException {

		PreparedStatement preStatement = conn.prepareStatement(sql);

		preStatement.setQueryTimeout(10);
		preStatement.executeUpdate();
		conn.commit();

	}

	public static ResultSet getFromDB(String sql) throws SQLException {

		PreparedStatement preStatement = conn.prepareStatement(sql);
		ResultSet result = preStatement.executeQuery();
		return result;
	}
}
