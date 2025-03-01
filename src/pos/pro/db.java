package pos.pro;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Jayson
 */
public class db {

  public static Connection mycon() {
    Connection con = null;

    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      con = DriverManager.getConnection("jdbc:mysql://localhost/pos?useSSL=false", "root", "");
      return con;
    } catch (ClassNotFoundException | SQLException e) {
      System.out.println("Database connection error: " + e.getMessage());
      return null;
    }
  }

  public static void main(String[] args) {
    Connection conn = mycon();
    if (conn != null) {
      System.out.println("Database connection successful!");
      try {
        conn.close();
      } catch (SQLException e) {
        System.out.println("Error closing connection: " + e.getMessage());
      }
    } else {
      System.out.println("Failed to connect to database");
    }
  }
}
