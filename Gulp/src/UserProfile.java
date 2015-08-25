import java.io.*;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Random;
import java.util.Scanner;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;


@WebServlet("/UserProfile")
public class UserProfile extends HttpServlet {
	static Connection conn = null;

	

	public void init() throws ServletException {
		// Do required initialization
		super.init();
		openConnection();

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();

			String sql = "select user_id from userprofile where " + " email="
					+ "\'" + session.getAttribute("name") + "\'";

			ResultSet result = getFromDB(sql);
			String usr_id = "";
			if (result.next()) {
				usr_id = result.getString("user_id");
			}
			String line = "";
			
				String sql_new = "select restaurant.res_name as name, restaurant.review as review, restaurant.rating as rate, userprofile.user_name as usr_name,"
						+ "restaurant.DATE_REVIEW as dateIn from restaurant , userprofile"
						+ " where restaurant.user_id = userprofile.user_id"
						+ " and userprofile.user_id= "
						+ "\'"
						+ usr_id
						+ "\'"
						+ " order by restaurant.DATE_REVIEW DESC";
				System.out.println(sql);
				System.out.println(sql_new);
				ResultSet res = getFromDB(sql_new);
				line += "<h2> Profile: Reviews Written </h2>";
				
				line += "<table class=" + "\"table table-striped\""
						+ "style=width:60%>";

				line += "<tr>" + "<th>" + "Restaurant Name" + "</th> <br>"
						+ "<th>" + "Date of Review" + "</th><br>" + "<th>"
						+ "Review" + "</th><br>" + "<th>" + "Ratings"
						+ "</th><br>" + "</tr>";
				// line +=
				// " <table class= \"table\"><thead><tr><th>Restaurant Name</th><th>Rating</th><th></th></tr></thead><tbody>";

				while (res.next()) {
			
					 
					line += "<tr>" + "<td>" + res.getString("name") + "</td>"
							+ "<td>" + res.getString("dateIn") + "</td>"
							+ "<td>" + res.getString("review") + "</td>"
							+ "<td>" + res.getString("rate") + "</td>"
							+ "</tr>";

				}

				line += "</tbody></table></div>";
			

			request.setAttribute("message2", line);

			getServletContext().getRequestDispatcher("/restaurant.jsp")
					.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		// create session id
		try {
		HttpSession mySession = request.getSession();
		
		String message = "";
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String zipcode = request.getParameter("zipcode");
		String pwd = request.getParameter("password");
		String button = request.getParameter("button");
		
		if (button == null) {
			
		} else {
			
			String sql = " insert into userprofile(user_name, email, zipcode, pwd, user_id) values("
						+ "\'" + name + "\'"  + ","
						+ "\'" + email + "\'" + ","
						+ "\'" + zipcode + "\'" + ","
						+ "\'" + pwd + "\'"  + ","
						+ "user_id_seq.nextval" 
						+")"
						;
			// insert the values for new user.
			System.out.println(sql);
			
			
				updateDB(sql);
				String message1 = "Welcome, "+name;  
                HttpSession session=request.getSession(true);  
                session.setAttribute("name",name);  
                
                String message2 = "<a href" + "=" + "\"Restaurant?name=" + session.getAttribute("name") + "\"" + ">"+  "List of restaurants" + "</a>" ;
                request.setAttribute("message1", message1);
                request.setAttribute("message2", message2);
                
                getServletContext().getRequestDispatcher("/restaurant.jsp").forward(
    					request, response);
               
		}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
		}
	

	public void destroy() {
		// do nothing.
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