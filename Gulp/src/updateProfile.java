

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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class updateProfile
 */
@WebServlet("/updateProfile")
public class updateProfile extends HttpServlet {
	static Connection conn = null;

	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateProfile() {
        super();
        openConnection();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Restaurant res = new Restaurant();
		
		String button = request.getParameter("restaurant");
		System.out.println(button);
		
		
		if (button == "") {
		} else {
			
			request.setAttribute("message2", res.getRestaurants());
			
			getServletContext().getRequestDispatcher("/restaurant.jsp").forward(
					request, response);
		
			}
		
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("name").toString());
		
		String sql = "update userprofile set email="
					+ "\'" + request.getParameter("email") + "\'" 
					+ " where email=" + "\'" + session.getAttribute("name").toString() + "\'"
					;
		System.out.println(sql);
		
	
		updateDB(sql);
		
		request.setAttribute("message1", "successfully updated profile");
		getServletContext().getRequestDispatcher("/restaurant.jsp").forward(request, response);
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
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
			e1.printStackTrace();

		} catch (SQLException e) {
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
