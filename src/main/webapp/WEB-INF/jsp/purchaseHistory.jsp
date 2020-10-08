<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table class="table table-striped">
							<thead>
								<tr>
									<th>SNo</th>
									<th>Course Name</th>
									<th>Enrolled On</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<%--     <c:set var="count" value="0" scope="page" /> --%>
								<c:forEach items="${purchaseHistory}" var="paymentDtls">
									<tr>
										<td><c:set var="count" value="${count + 1}" scope="page" />
											<c:out value="${count}" /></td>
										<td>333${paymentDtls.courseName}</td>
										<td>555${paymentDtls.paid_on}</td>
										<td><a
											href="/purchaseDtls"
											class="btn btn-primary a-btn-slide-text"> <span
												class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
												<span><strong>fff</strong></span>
										</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
</body>
</html>