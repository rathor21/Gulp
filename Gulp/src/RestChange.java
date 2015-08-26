
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
 * Servlet implementation class RestChange
 */
@WebServlet("/RestChange")
public class RestChange extends HttpServlet {
	static Connection conn = null;

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RestChange() {
		super();
		openConnection();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("in get");
		String message1 = "<form action=updateProfile method=post>"
						+ "<div class=form-group style=width:30%> "
						+ "<label for=email>email address</label>"
						+ "<input type=textarea class=form-control name=email placeholder=Change Email> "
						+ "</div>"
						+ "<button type=submit class=btn btn-primary name=submit>Submit</button></form>"	
						;
		
		request.setAttribute("message1", message1);
		
		getServletContext().getRequestDispatcher("/restaurant.jsp")
		.forward(request, response);
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			String res_name = request.getParameter("rest_name");
			String description = request.getParameter("description");
			String address = request.getParameter("address");

			String sql = "update RESTAURANT set " + "address=" + "\'" + address
					+ "\'" + ", " + "DESCRIPTION=" + "\'" + description + "\'"
					+ " where res_name=" + "\'" + res_name + "\'";
			updateDB(sql);
			
			System.out.println(sql);
			request.setAttribute("message1", "successfully updated");
			getServletContext().getRequestDispatcher("/restaurant.jsp")
					.forward(request, response);

		} catch (Exception e) {
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
