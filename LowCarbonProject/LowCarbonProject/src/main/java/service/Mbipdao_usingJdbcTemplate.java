package service;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import org.springframework.stereotype.Service;

import entity.Electricity;
import entity.Month;
import entity.User;
import entity.recycle;
import entity.water;
@Service
public class Mbipdao_usingJdbcTemplate {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	public boolean registerUser(User user) {
		

	  
	        String query = "INSERT INTO User (fullName, phoneNumber, password, confirmPassword, address, city, state, zipCode) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?)";
	        int rowsAffected = jdbcTemplate.update(query,
	                
	                user.getFullName(),
	                user.getPhoneNumber(),
	                user.getPassword(),
	                user.getConfirmPassword(),
	                user.getAddress(),
	                user.getCity(),
	                user.getState(),
	                user.getZipCode());

	        if (rowsAffected > 0) {
	            return true;
	        }

	            else return false;
	}
	public void addWater(User user, double amount, Month month) {
	    if (user != null && month != null) {
	       
	      
	        String userWaterMonthInsertQuery = "INSERT INTO water (userfullName, wAmount, monthNumber, wCC) VALUES (?, ?, ?, ?)";
	        jdbcTemplate.update(userWaterMonthInsertQuery, user.getFullName(), amount, month.getMonthNumber(), amount*0.419);
	    }
	}
	public List<water> getWater()
	{   String query = "SELECT * FROM water ORDER BY wCC ASC";
		return jdbcTemplate.query(query, new BeanPropertyRowMapper<water>(water.class));
	}
	public List<water>getUserWater(String userFullName)
	{
		   String query = "SELECT * FROM water WHERE userFullName = ? ORDER BY wCC ASC";
		     return jdbcTemplate.query(query, new BeanPropertyRowMapper<water>(water.class), userFullName);
		   
		}
	public List<Electricity>getUserElectricity(String userFullName)
	{
		   String query = "SELECT * FROM electricity WHERE userFullName = ? ORDER BY eCC ASC";
		     return jdbcTemplate.query(query, new BeanPropertyRowMapper<Electricity>(Electricity.class), userFullName);
		   
		}
	
	public List<recycle>getUserRecycle(String userFullName)
	{
		   String query = "SELECT * FROM recycle WHERE userFullName = ? ORDER BY rCC ASC";
		     return jdbcTemplate.query(query, new BeanPropertyRowMapper<recycle>(recycle.class), userFullName);
		   
		}
	
	
	public List<Electricity> getElectricity()
	{   String query = "SELECT * FROM electricity ORDER BY eCC ASC";
		return jdbcTemplate.query(query, new BeanPropertyRowMapper<Electricity>(Electricity.class));
	}
	public List<recycle> getRecycle()
	{   String query = "SELECT * FROM recycle ORDER BY rCC ASC";
		return jdbcTemplate.query(query, new BeanPropertyRowMapper<recycle>(recycle.class));
	}


    public void addElectricity(User user, double amount, Month month) {
        if (user != null && month != null) {
            String query = "INSERT INTO electricity (userfullName, eAmount, monthNumber, eCC) VALUES (?, ?, ?, ?)";
            jdbcTemplate.update(query, user.getFullName(),amount, month.getMonthNumber(),amount*0.584 );
        }
    }

    public void addRecycle(User user, double amount, Month month) {
        if (user != null && month != null) {
            String query = "INSERT INTO recycle (userfullName, rAmount, monthNumber, rCC) VALUES (?, ?, ?, ?)";
            jdbcTemplate.update(query, user.getFullName(),amount, month.getMonthNumber(),amount*2.860 );
        }
    }
   
	public boolean loginUser(String fullName, String password) {
	    String query = "SELECT COUNT(*) FROM User WHERE fullName = ? AND password = ?";
	    int count = jdbcTemplate.queryForObject(query, Integer.class, fullName, password);
	    return count > 0;
	}
	public void changePassword(User user, String newPassword) {
	    String query = "UPDATE User SET password = ? WHERE fullName = ?";
	    jdbcTemplate.update(query, newPassword, user.getFullName());
	}
	public boolean loginAdmin(String fullName, String password) {
	    String query = "SELECT COUNT(*) FROM admin WHERE fullName = ? AND password = ?";
	    int count = jdbcTemplate.queryForObject(query, Integer.class, fullName, password);
	    return count > 0;
	}
	 public boolean deleteUser(String userName) {
	        
	        String query = "DELETE FROM User WHERE fullName = ?";
	        int rowsAffected = jdbcTemplate.update(query, userName);

	        return rowsAffected > 0;
	    }
	 public List<User> getAllUsers() {
	        
	        String query = "SELECT * FROM user";
	        return jdbcTemplate.query(query, new BeanPropertyRowMapper<User>(User.class));
	    }
	 public int getTotalWaterForUser(String userFullName) {
		    String query = "SELECT COUNT(*) FROM water WHERE userFullName = ?";
		    return jdbcTemplate.queryForObject(query, Integer.class, userFullName);
		}
	 public int getTotalElectricityForUser(String userFullName) {
		    String query = "SELECT COUNT(*) FROM electricity WHERE userFullName = ?";
		    return jdbcTemplate.queryForObject(query, Integer.class, userFullName);
		}
	 public int getTotalRecycleForUser(String userFullName) {
		    String query = "SELECT COUNT(*) FROM recycle WHERE userFullName = ?";
		    return jdbcTemplate.queryForObject(query, Integer.class, userFullName);
		}
     public int getTotalUser() {
    	 String query="SELECT COUNT(*) FROM user";
    	 return jdbcTemplate.queryForObject(query, Integer.class);
     }
     public int getTotalWater()
     {
    	  String query = "SELECT COUNT(*) FROM water";
		    return jdbcTemplate.queryForObject(query, Integer.class);
     }
     public int getTotalElectricity() {
		    String query = "SELECT COUNT(*) FROM electricity";
		    return jdbcTemplate.queryForObject(query, Integer.class);
		}
	 public int getTotalRecycle() {
		    String query = "SELECT COUNT(*) FROM recycle";
		    return jdbcTemplate.queryForObject(query, Integer.class);
		}


}
