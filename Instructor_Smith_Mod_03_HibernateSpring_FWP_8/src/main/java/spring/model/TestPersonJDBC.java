package spring.model;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestPersonJDBC {
	
	public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");

        PersonJDBCTemplate personJDBCTemplate = (PersonJDBCTemplate) context.getBean("jdbc");

        System.out.println("------Listing Multiple Records--------");
        List<Person> persons = personJDBCTemplate.getPeopleDBList();
        if (persons == null || persons.size() < 1)
            System.out.println("No people in this database");
        int i = 1;
        for (Person record : persons) {
            System.out.print(i + " = ID : " + record.getId());
            System.out.print(", FName : " + record.getFname());
            System.out.println(", LName : " + record.getLname());
            i++;
        }

    }

}
