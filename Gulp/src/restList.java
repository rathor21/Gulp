

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class restList
 */
@WebServlet("/restList")
public class restList extends HttpServlet {
	static Connection conn = null;
	private static final long serialVersionUID = 1L;
       

	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public restList() {
        super();
        openConnection();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String message = "";
		try {
		
		String res_name = URLDecoder.decode(request.getParameter("res_name"), "UTF-8");
		
		System.out.println(res_name);
		HttpSession session = request.getSession();
		session.setAttribute("res_name", res_name);
		
		String sql = "select restaurant.res_name as name , restaurant.description as description, restaurant.address as address, restaurant.review as review, restaurant.rating as rate, userprofile.user_name as usr_name, restaurant.DATE_REVIEW as dateIn from restaurant , userprofile " 
			+" where restaurant.res_name = " + "\'" + res_name + "\'"
			+ " and restaurant.user_id = userprofile.user_id "
			+ " order by restaurant.DATE_REVIEW DESC"
			;
		
		 ResultSet	result = getFromDB(sql);
		
		 System.out.println(sql);
		 String line = "<table class=" 
	        		+ "\"table table-striped\"" 
	        		+ "style=width:60%>";
	        
	        line += 
     			"<tr>" 
     			+"<th>" + "User_name" + "</th> <br>"
     			+"<th>" + "Date of Review" + "</th><br>"
     			+"<th>" + "Review" + "</th><br>"
     			+"<th>" + "Ratings" + "</th><br>"
     			+ "</tr>"
     			;
	        
		while(result.next()){
			
			message = "<h3>" + res_name + "</h3>";
			
			message += "<h4>" + result.getString("description")+"</h4>";
			message += "<h4>" + result.getString("address") + "</h4>";
			
			session.setAttribute("add " + res_name, result.getString("address"));
			session.setAttribute("desc  " + res_name, result.getString("description"));
			
			message += "<div> ";
			
			message += "<a href=" + "\"" + "writeReview.jsp" + "\"" + ">  Write Review </a></div>";
			
			message += "<a href=" + "\"" + "editReview.jsp" + "\"" + ">  Edit Review </a></div>";
			line += "<tr>" 
				  +"<td>" + result.getString("usr_name") + "</td>"
				  + "<td>" +result.getString("dateIn") + "</td>"
				  + "<td>" +result.getString("review") + "</td>"
				  + "<td>" +result.getString("rate") + "</td>"
				  +"</tr>"
				  ;
			
		}
		System.out.println(message);
		line += "</table>";
		
		request.setAttribute("message1", message);
		request.setAttribute("message2", line);
		getServletContext().getRequestDispatcher("/restaurant.jsp").forward(
				request, response);
		
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
			}

	
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

			if (CheckReview(usr_id, session.getAttribute("res_name").toString()) == true) {
				String line = "review already present for this restaurant cannot add review";

				request.setAttribute("message1", line);
			}

			else {
				String res_name = session.getAttribute("res_name").toString();
				String address = "add " + res_name;
				String desc = "desc  " + res_name;

				String sql_new = "insert into restaurant (RES_NAME, Date_REVIEW, REVIEW, RATING, user_id, address, description) values("
						+ "\'"
						+ res_name
						+ "\'"
						+ ","
						+ "\'"
						+ dateFormat.format(date)
						+ "\'"
						+ ","
						+ "\'"
						+ review
						+ "\'"
						+ ","
						+ "\'"
						+ rating
						+ "\'"
						+ ","
						+ "\'"
						+ usr_id
						+ "\'"
						+ ","
						+ "\'"
						+ session.getAttribute(address).toString()
						+ "\'"
						+ ","
						+ "\'"
						+ session.getAttribute(desc).toString()
						+ "\'"
						+ ")";

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
