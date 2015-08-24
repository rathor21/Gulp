import java.io.*;
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
		System.out.println("in get");
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String message = "";
		String name = "";
		String email = "";
		String zipcode = "";
		name = request.getParameter("name");
		email = request.getParameter("email");
		zipcode = request.getParameter("email");
		String button = request.getParameter("button");
		
		System.out.println("$$$$$$$$" + button);
		// System.out.println(button);
		if (button == null) {
			
		} else {
			
			String sql = " insert into userprofile(user_name, email, zipcode, user_id) values("
						+ "\'" + name + "\'"  + ","
						+ "\'" + email + "\'" + ","
						+ "\'" + zipcode + "\'" + ","
						+ "user_id_seq.nextval" 
						+")"
						;
			
			try {
				updateDB(sql);
				
				sql = "select res_name, rating from restaurant";
				
				System.out.println(sql);
							
				ResultSet result = getFromDB(sql);
				message += " <table class= \"table\"><thead><tr><th>Restaurant Name</th><th>Rating</th><th></th></tr></thead><tbody>";
					
				while (result.next()) {
						String res_name = result.getString("res_name");
						String rating = result.getString("rating");
						System.out.println(res_name);
						message += "<tr><td>" + "<a href=" + res_name + ">" + res_name + "</a>" + "</td><td>" + rating
								+ "</td><td>";
					}
				
				message += "</tbody></table></div>";
				request.setAttribute("message", message);
				
				getServletContext().getRequestDispatcher("/restaurant.jsp").forward(
						request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
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