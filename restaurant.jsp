<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="header">
            <div class="logo">
            <img class="logo-img" src="data:image/png;base64,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";" alt="logo image"/>
            </div>
             <div class="nav-items">
        		<ul>
          			<li>Home</li>
          			<li>About Us</li>
          			<li>Contact Us</li>
          			<li>Cart</li>
       			</ul>
      		 </div>
    </div>
    
    
    <%
    
    String jdbcURL = "jdbc:mysql://localhost:3306/restaurantdata";
    String jdbcUsername = "root";
    String jdbcPassword = "root";

   Connection con = null;
    Statement statement = null;
    ResultSet resultSet = null;

    try {
    
        Class.forName("com.mysql.cj.jdbc.Driver");

       
        con = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

       
        statement = con.createStatement();

        
        String sql = "SELECT Resturant_img, Resturant_Name, AVG_rating, costForTwo FROM resturant_details";
        resultSet = statement.executeQuery(sql);

       
        while (resultSet.next()) {
            String Resturant_img = resultSet.getString("Resturant_img");
            String Resturant_Name = resultSet.getString("Resturant_Name");
            Double AVG_rating = resultSet.getDouble("AVG_rating");
            String costForTwo = resultSet.getString("costForTwo");
        
%>
    
    <div class="res-container">
    <div class="res-card" >
        <img
          class="res-logo"
          alt="res-logo"
          src="https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/<%= Resturant_img %>";  
        />
        <h3><%= Resturant_Name %></h3>
        <h4><%= AVG_rating %></h4>
        <h4><%= costForTwo %></h4>
    </div>
    </div>
    
<%
        } 
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        
       
        if (con != null) try { con.close(); } catch (SQLException ignore) {}
    }
%>
    



</body>
</html>