

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class EditReview
 */
@WebServlet("/EditReview")
public class EditReview extends HttpServlet {
	
	static Connection conn = null;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditReview() {
        super();
        openConnection();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String usr_id = "";
			String review = request.getParameter("review");
			String rating = request.getParameter("rating");
			HttpSession session = request.getSession();

			DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
			Date date = new Date();
			System.out.println(dateFormat.format(date));

			String sql = "select user_id from userprofile where email= " + "\'"
					+ session.getAttribute("name") + "\'";
			System.out.println(sql + "   session name");

			ResultSet result = getFromDB(sql);

			while (result.next()) {
				usr_id = result.getString("user_id");
			}

			if (CheckReview(usr_id, session.getAttribute("res_name").toString()) == false) {
				String line = "review already present for this restaurant cannot add review";

				request.setAttribute("message1", line);
			}

			else {
				String res_name = session.getAttribute("res_name").toString();
				String address = "add " + res_name;
				String desc = "desc  " + res_name;
				
				String sql_new = "update restaurant set  Date_REVIEW="
						
						+ "\'"
						+ dateFormat.format(date)
						+ "\'"
						+ ","
						+ " REVIEW= "
						+ "\'"
						+ review
						+ "\'"
						+ ","
						+ "rating = "
						+ "\'"
						+ rating
						+ "\'"
						
						+ " where user_id="
						+ "\'"
						+ usr_id
						+ "\'" 
						+ " and "
						+ " res_name="
						+ "\'" + res_name + "\'"
						;
				
				
				System.out.println(sql_new);
				updateDB(sql_new);
				request.setAttribute("message1", "added Successfully!!");
			}
			getServletContext().getRequestDispatcher("/restaurant.jsp")
					.forward(request, response);
		}
		catch (SQLException e) {
		
			e.printStackTrace();
		}

	
	
	
	
	}
	public boolean CheckReview(String usr_id, String res_name) {
		boolean check = false;
		try {
			String sql_new = "select restaurant.res_name as name, restaurant.review as review, restaurant.rating as rate, userprofile.user_name as usr_name,"
					+ "restaurant.DATE_REVIEW as dateIn from restaurant , userprofile"
					+ " where restaurant.user_id = userprofile.user_id"
					+ " and userprofile.user_id= "
					+ "\'"
					+ usr_id
					+ "\'"
					+ " and " + "restaurant.res_name= " + "\'" + res_name + "\'"
					+ " order by restaurant.DATE_REVIEW DESC";
			
			System.out.println(sql_new);
			ResultSet res;

			res = getFromDB(sql_new);
			
			if (res.next()) {
				check = true;
			}
	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return check;
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
