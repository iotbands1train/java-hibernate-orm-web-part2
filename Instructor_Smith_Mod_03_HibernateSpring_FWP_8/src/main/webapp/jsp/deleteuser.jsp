<%@page import="spring.model.*"%>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext" %>
<jsp:useBean id="u" class="spring.model.Person"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<style type="text/css">
  <%@include file="../css/style-1.css" %>
</style>
<script type="text/javascript">
  <%@include file="../js/script.js" %>
</script>
<%ApplicationContext context = new ClassPathXmlApplicationContext("Beans.xml");
PersonJDBCTemplate jdbc = 
(PersonJDBCTemplate)context.getBean("jdbc");
 jdbc.delete(u.getId());
response.sendRedirect("viewusers-by-row-asc.jsp");
%> 