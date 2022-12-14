<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Manager Home</title>
    </head>
    <body>
    	<div align="center">
	        <h1>Book List</h1>
	        <h3><a href="newBook">New Book</a></h3>
	        <table border="1">
	        	<th>No</th>
	        	<th>ID</th>
	        	<th>Name</th>
	        	<th>Author_Name</th>


				<c:forEach var="books" items="${bookList}" varStatus="status">
	        	<tr>
	        		<td>${status.index + 1}</td>
	        		<td>${books.id}</td>
					<td>${books.name}</td>
					<td>${books.authorName}</td>
					<td>
						<a href="editBook?id=${books.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="deleteBook?id=${books.id}">Delete</a>
					</td>
							
	        	</tr>
				</c:forEach>	        	
			</table>
    	</div>
    </body>
</html>
