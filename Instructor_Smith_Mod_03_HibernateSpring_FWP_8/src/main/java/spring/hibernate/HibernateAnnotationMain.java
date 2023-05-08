package spring.hibernate;

import java.util.Iterator;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class HibernateAnnotationMain {
	private static final Logger log = LoggerFactory.getLogger(PersonDAOImpl.class);

	public static void main(String[] args) {
		List list = null;
		PersonDAO dao = new PersonDAOImpl();
		dao.batch(100);
		dao.deleteAll();
		print(dao.getPeopleDBList());
		dao.batch(5);
		print(dao.getPeopleDBList());  
		
		dao.close();
	}

	private static void print(List<Person> peopleDBList) {
		int i = 0;
		for (Iterator iterator = peopleDBList.iterator(); iterator.hasNext();) {
			Person person = (Person) iterator.next();
			System.out.println(i + " " + person);
			i++;
		}
	}
}
