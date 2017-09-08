package testBean;
import java.sql.*;
public class studentSelect {
 public void insert(studentVO item) throws Exception {
  String number = item.getNumber();
  String name = item.getName();
  Class.forName("com.mysql.jdbc.Driver");
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/201623504","201623504","201623504");
  PreparedStatement sql = conn.prepareStatement("select * from student");
  while(rs.next()) {
	  String number = rs.getString("number");
	  String name = rs.getString("name"); %>
	  <%= number %>
	  <%= name %><br>
	   <% }
  sql.executeUpdate();
 }
}