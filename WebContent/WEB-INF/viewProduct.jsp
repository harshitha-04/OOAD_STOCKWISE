<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Required meta tags always come first -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>View Inventory</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Raleway:500,900|Quicksand"
	rel="stylesheet">
<link rel="stylesheet" href="styles/main.css">
<link rel="stylesheet" href="styles/viewStyles.css">

<!-- jQuery -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.0.min.js"></script>

<script>
	// A $( document ).ready() block.
	$(document).ready(function() {
		console.log("ready!");
	});
</script>
<title>View Product</title>
</head>
<body>
	<div class="index-main">


		<!--Begin Navbar-->
		<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<h4>
					<a href="index.html">Inventory Management SpringMVC</a>
				</h4>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a class="bold" href="GetInventory.do">inventory list</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">View/Edit <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li class="active"><a class="bold" href="ViewProduct.do">view
									product</a></li>
							<li><a class="bold" href="AddProduct.do">add product</a></li>
							<li><a class="bold" href="EditProduct.do">edit product</a></li>
						</ul></li>
					<li><a class="bold" href="DeleteProduct.do">delete product</a></li>
					<li><a class="bold" href="contact.html">contact</a></li>
				</ul>
			</div>
		</div>
		</nav>

		<!--Begin Content-->
		<div class="container">
			<div class="heading">
				<h1>View Product by ID#</h1>
				<div class="well">
					<form action="ViewProductData.do" method="POST">
						<select name="ID">
							<c:forEach var="item" items="${inventory}">

								<option value="${item.ID}">Product ID: ${item.ID}</option>

							</c:forEach>
						</select> <br> <button type="submit" value="view product details" class="btn btn-primary">view</button>

					</form>

				</div>
			</div>

			<c:if test="${product.ID > 0}">
				<table>
					<tr>
						<th class="spacing">Product ID</th>
						<th class="spacing">Brand</th>
						<th class="spacing">Type</th>
						<th class="spacing">Size</th>
						<th class="spacing">Batch Date</th>
						<th class="spacing">Qty pr Carton</th>
						<th class="spacing">Qty pr Pallet</th>
					</tr>
					<tr>
						<td class="spacing">${product.ID}</td>
						<td class="spacing">${product.brand}</td>
						<td class="spacing">${product.type}</td>
						<td class="spacing">${product.size}</td>
						<td class="spacing">${product.batch}</td>
						<td class="spacing">${product.qtyCarton}</td>
						<td class="spacing">${product.qtyPallet}</td>
					</tr>
				</table>
			<div class="image">
				<img src="images/${product.image}" alt="product image">
			</div>
			</c:if>
		</div>

		<!-- /container -->
		<!-- jQuery first, then Bootstrap JS. -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

<!-- Footer -->
<footer>
<div class="footer">
	<div class="container-fluid ">
		<p>Hannah Harshitha Harshitha Haripriya</p>
	</div>
</div>
</footer>

</body>

</body>
</html>
