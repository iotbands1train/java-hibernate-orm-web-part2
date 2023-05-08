package spring.model;

import java.util.List;
import javax.sql.DataSource;

public interface PersonDAO {
	/** 
     * This is the method to be used to initialize
     * database resources ie. connection.
  */
  public void setDataSource(DataSource ds);
  
  /** 
     * This is the method to be used to create
     * a record in the Person table.
  */
  public void create(Person p);
  
  /** 
     * This is the method to be used to list down
     * a record from the Person table corresponding
     * to a passed Person id.
  */
  public Person getPerson(Long id);
  
  /** 
     * This is the method to be used to list down
     * all the records from the Person table.
  */
  public List<Person> getPeopleDBList();
  
  /** 
     * This is the method to be used to delete
     * a record from the Person table corresponding
     * to a passed Person id.
  */
  public void delete(Long id);
  
  /** 
     * This is the method to be used to update
     * a record into the Person table.
  */
  public void update(Person p);

  /**
    * This is the method to be used to delete all records from the Person table.
    */
   public void deleteAll();
}
