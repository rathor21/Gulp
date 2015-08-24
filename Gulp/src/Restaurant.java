

import java.io.IOException;
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
		
		doPost(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String message = "";
		String res_name = "";
		String rating = "";
		
		
		ResultSet result;
		String sql = "select res_name, rating from restaurant";
				
		System.out.println(sql);
		
		try {
			result = getFromDB(sql);
			message += " <table class= \"table\"><thead><tr><th>Restaurant Name</th><th>Rating</th><th></th></tr></thead><tbody>";
			
			while (result.next()) {
				res_name = result.getString("res_name");
				rating = result.getString("rating");
				
				message += "<tr><td>" + "<a href=" + "\"" + "restList" + "\"" + res_name + "</td><td>" + rating
						+ "</td><td>";
			}
	
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		message += "</tr>";
		
		request.setAttribute("message", message);
		getServletContext().getRequestDispatcher("/restaurant.jsp").forward(
				request, response);
		
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

	}

	public static ResultSet getFromDB(String sql) throws SQLException {

		PreparedStatement preStatement = conn.prepareStatement(sql);
		ResultSet result = preStatement.executeQuery();
		return result;
	}
}
