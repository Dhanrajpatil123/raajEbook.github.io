<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page isELIgnored = "false" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ebook: login</title>
<%@include file="All_component/allCSS.jsp"%>


</head>
<body style="background-color: #f0f1f2">


	<%@include file="All_component/navbar.jsp"%>

	<!-- -------------------------- navbar end ---------------------- -->




	<div class="container p-">

		<div class="row">

			<div class="col-md-4 offset-md-4">

				<div class="card" style="border-radius: 15px">

					<div class="card-body">


						<h3 class="text-center">Login</h3>
						
						
					<c:if test="${not empty failedMsg }">
						<p class = "text-center text-danger">${failedMsg}</p>
						<c:remove var="failedMsg" scope = "session"/>
					</c:if>
					
					
					<c:if test="${not empty success }">
						<p class = "text-center text-success">${success}</p>
						<c:remove var="failedMsg" scope = "session"/>
					</c:if>
					
					
					

						<form action="Login" method="Post">
						
						
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									required="required" name = "email">

							</div>


							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" required="required" name = "password">
							</div>



							<div class="text-center">
								<button type="submit" class="btn btn-primary">Login</button><br>
								<a href="register.jsp">Create Account</a>
							</div>

						</form>
					</div>

				</div>


			</div>

		</div>


	</div>












	<!-- -------------------------- footer ---------------------- -->

	<%-- <%@include file="All_component/footer.jsp"%> --%>

</body>
</html>



</body>
</html>
















