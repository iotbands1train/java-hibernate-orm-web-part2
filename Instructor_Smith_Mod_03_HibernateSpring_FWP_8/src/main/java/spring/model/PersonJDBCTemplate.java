package spring.model;

import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.slf4j.*;
import spring.aspect.LoggingAspect;

public class PersonJDBCTemplate implements PersonDAO {
    private DataSource ds;
    private JdbcTemplate jdbc;
    private static Logger log = LoggerFactory.getLogger(LoggingAspect.class.getName());

    @Override
    public void setDataSource(DataSource ds) {
        this.ds = ds;
        this.jdbc = new JdbcTemplate(ds);
    }

    @Override
    public void create(Person p) {
        String sql = "insert into person " + "( id, fname," + " lname, street, city, state, zip, phone ) " + "values " + "( ?, ?, ?, ?, ?, ?, ?, ? ) ";
        jdbc.update(sql, p.getId(), p.getFname(), p.getLname(), p.getStreet(), p.getCity(), p.getState(), p.getZip(), p.getPhone());
        log.info(" " + p);
    }

    @Override
    public Person getPerson(Long id) {
        String SQL = "select * from Person where id = ?";
        Person p = jdbc.queryForObject(SQL, new Object[] { id }, new PersonMapper());
        log.info(" " + p);
        return p;
    }

    @Override
    public List<Person> getPeopleDBList() {
        String SQL = "select * from Person";
        List<Person> p = jdbc.query(SQL, new PersonMapper());
        if(p==null||p.size()<1)create(new Person(3L,"Ariana", "Coronel","5302 Prairie Ridge Rd.","Houston","Tx","77053","832-836-2198"));
        log.info(" [Top ] " + p.get(0));
        log.info(" [Bottom ] " + p.get(p.size() - 1));
        return p;
    }

    @Override
    public void delete(Long id) {
        String SQL = "delete from Person where id = ?";
        jdbc.update(SQL, id);
        log.info("Deleted Record with ID = " + id);
        return;
    }

    @Override
    public void update(Person p) {
        String sql = "update Person set fname = ?," + " lname = ?, street = ?, city = ?," + " state = ?, zip = ?, phone = ? where id = ?";
        jdbc.update(sql, p.getFname(), p.getLname(), p.getStreet(), p.getCity(), p.getState(), p.getZip(), p.getPhone(), p.getId());
        log.info(new java.util.Date() + " " + "Updated Record = " + p);
        return;
    }

    @Override
    public void deleteAll() {
        String sql = "Truncate table Person";
        jdbc.batchUpdate(sql);
          sql = "insert into person " + "( id, fname," + " lname, street, city, state, zip, phone ) " + "values " + "( 1, 'Ariana', 'Coronel', " + "'5302 Prairie Ridge Rd.', 'Houston', 'Tx', '77053', '832-836-2198' ) ";
        jdbc.batchUpdate(sql);
        
    }
}