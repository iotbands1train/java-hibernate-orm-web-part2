package spring.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class PersonMapper implements RowMapper<Person> {

	public Person mapRow(ResultSet rs, int rowNum)
			throws SQLException {
		Person u = new Person();
		u.setId(rs.getLong("id"));
		u.setFname(rs.getString("fname"));
		u.setLname(rs.getString("lname"));
		u.setStreet(rs.getString("street"));
		u.setCity(rs.getString("city"));
		u.setState(rs.getString("state"));
		u.setZip(rs.getString("zip"));
		u.setPhone(rs.getString("phone"));
		return u;
		
		
	}
}