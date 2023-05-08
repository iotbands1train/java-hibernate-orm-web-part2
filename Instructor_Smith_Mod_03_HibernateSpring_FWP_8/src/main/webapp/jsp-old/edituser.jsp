<%@page import="com.jdbc.MyJDBC"%>  
<jsp:useBean id="u" class="com.model.Person"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  

<style type="text/css">
  <%@include file="../css/style-1.css" %>
</style>
<script type="text/javascript">
  <%@include file="../js/script.js" %>
</script>
<%  
int i=MyJDBC.update(u);  
response.sendRedirect("viewusers-by-row-asc.jsp");  
%> 