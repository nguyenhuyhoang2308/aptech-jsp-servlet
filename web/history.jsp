<%-- 
    Document   : register
    Created on : Aug 10, 2020, 6:24:24 PM
    Author     : Asus
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="modals.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>History Page</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <%
        ArrayList<User> userList = new ArrayList<User>();
        if(session.getAttribute("userList") != null){
            userList = (ArrayList<User>) session.getAttribute("userList");
        }
    %>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h2 class="text-center">All User List</h2>
			</div>
			<div class="panel-body">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Birthday</th>
                                        <th>Address</th>
                                    </tr>
                                </thead>
                            </table>
                            <tbody>
                                <%
                                    int index = 1;
                                    for (User user : userList){
                                %>
                                <tr>
                                    <td><%=index++%></td>
                                    <td><%=user.getName()%></td>
                                    <td><%=user.getEmail()%></td>
                                    <td><%=user.getBirthday()%></td>
                                    <td><%=user.getAddress()%></td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
			</div>
		</div>
	</div>
</body>
</html>
