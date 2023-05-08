package spring.hibernate;

import java.util.Arrays; 
import java.util.List; 
import javax.sql.DataSource;

import org.hibernate.*; 
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
 

@Repository
public class PersonDAOImpl implements PersonDAO {

	private static final Logger logger = LoggerFactory.getLogger(PersonDAOImpl.class);
	private double time;
	private long end;
	private long start;

	@Override
	public void create(Person p) {
		Session session = getSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.persist(p);
			tx.commit();
			logger.info("Person saved successfully, Person Details=" + p);
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	@Override
	public void update(Person p) {
		Session session = getSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			session.update(p);
			tx.commit();
			logger.info("Person updated successfully, Person Details=" + p);
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	@SuppressWarnings({ "unchecked", "null" })
	@Override
	public List<Person> getPeopleDBList() {
		Session session = getSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			List<Person> p = session.createQuery("from Person").list();
			if (p != null) {
				logger.info("Person List::" + p);
			} else {
				p.add(RandomPerson.randomPerson());
			}
			tx.commit();
			return p;
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return Arrays.asList(RandomPerson.randomPerson());
	}

	@SuppressWarnings({ "removal" })
	@Override
	public Person getPerson(Long id) {
		Person person = null;

		Session session = getSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			try {
				person = (Person) session.get(Person.class, new Long(id));
			} catch (NullPointerException e) {
				person = new Person(0L, "NoPersonData", "NoPersonData", "NoPersonData", "NoPersonData", "NoPersonData",
						"NoPersonData", "NoPersonData");
				tx.commit();
				return person;
			} catch (ObjectNotFoundException e) {
				person = new Person(0L, "NoPersonData", "NoPersonData", "NoPersonData", "NoPersonData", "NoPersonData",
						"NoPersonData", "NoPersonData");
				tx.commit();
				return person;
			} catch (Exception e) {
				person = new Person(0L, "NoPersonData", "NoPersonData", "NoPersonData", "NoPersonData", "NoPersonData",
						"NoPersonData", "NoPersonData");
				tx.commit();
				return person;
			}
			if (null != person) {
				logger.info("Found person =" + person);
			}
			tx.commit();

		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return person;
	}

	@SuppressWarnings("deprecation")
	@Override
	public void delete(Long id) {
		Session session = getSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			Person p = (Person) session.load(Person.class, new Long(id));
			if (null != p) {
				session.delete(p);
				logger.info("Person deleted successfully, person details=" + p);
			}
			tx.commit();

		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	private static Session getSession() {
		return HibernateUtil.getSessionAnnotationFactory().openSession();
	}

	@Override
	public void close() {
		// TODO Auto-generated method stub
		HibernateUtil.getSessionAnnotationFactory().close();
	}

	@Override
	public void setDataSource(DataSource ds) {
		 jdbc = new JdbcTemplate(ds);
	}
	 private static DataSource ds;
	    private static JdbcTemplate jdbc; 
	    public static void deleteAl() {
	        String sql = "Truncate table Person";
	        jdbc.batchUpdate(sql);
	          sql = "insert into person " + "( id, fname," + " lname, street, city, state, zip, phone ) " + "values " + "( 1, 'Instructor', 'Smith', " + "'16301 Chimney Rock Rd.', 'Houston', 'Tx', '77053', '281-634-2450' ) ";
	        jdbc.batchUpdate(sql);
	        
	    }
	@SuppressWarnings("unchecked")
	@Override
	public void deleteAll() { 
			Session session = getSession();
			Transaction tx = null;
			try {
				tx = session.beginTransaction();
				ApplicationContext c = 
			             new ClassPathXmlApplicationContext("delete.xml");		 
				 ((PersonDAOImpl) c.getBean("jdbc")).deleteAl();
				 
				tx.commit(); 
			} catch (HibernateException e) {
				if (tx != null)
					tx.rollback();
				e.printStackTrace();
			} finally { 
				session.close(); 
				logger.info("current size => "+getPeopleDBList().size()); 
			}
	}

	@Override
	public void batch(Integer xval) {
		// TODO Auto-generated method stub
		  
		Session session = getSession();
		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			
			for (int i = 0; i < xval; i++) {
				session.saveOrUpdate(RandomPerson.randomPerson());
				if(i%50==0) {
					session.flush();
				}
			}
			tx.commit();
			

		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			
			session.close();
		}
	}

}