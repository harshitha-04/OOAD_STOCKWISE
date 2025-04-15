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
<link rel="stylesheet" href="styles/viewInventoryStyles.css">

<!-- jQuery -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.10.0.min.js"></script>

<script>
	// A $( document ).ready() block.
	$(document).ready(function() {
		console.log("ready!");
	});
</script>
<title>View Inventory</title>
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
					<li class="active"><a class="bold" href="GetInventory.do">inventory
							list</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">View/Edit <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a class="bold" href="ViewProduct.do">view product</a></li>
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
		<h1 class="center">Inventory List</h1>
		<div class="row">
			<div class="col-md-12">
				<div class="addButtonTop">
					<form action="AddProduct.do" method="GET">
						<button type="submit" name="ID" value="ID"
							class="btn btn-md btn-success">add product</button>
					</form>
				</div>
			</div>
		</div>

		<div class="container" id="inventoryList">
			<table class="table-hover table-responsive">
				<thead class="thead-inverse">
					<tr>
						<th>Product ID</th>
						<th>Brand</th>
						<th>Type</th>
						<th>Size</th>
						<th>Batch Date</th>
						<th>Qty pr Carton</th>
						<th>Qty pr Pallet</th>
						<th colspan="3">Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${inventory}">
						<tr>
							<td class="spacing">${item.ID}</td>
							<td class="spacing">${item.brand}</td>
							<td class="spacing">${item.type}</td>
							<td class="spacing">${item.size}</td>
							<td class="spacing">${item.batch}</td>
							<td class="spacing">${item.qtyCarton}</td>
							<td class="spacing">${item.qtyPallet}</td>
							<td class="viewButton"><form
									action="ViewProduct.do?ID=${item.ID}" method="GET">
									<button type="submit" name="ID" value="${item.ID}"
										class="btn btn-xs btn-primary">view</button>
								</form></td>
							<td class="editButton"><form
									action="EditProduct.do?ID=${item.ID}" method="GET">
									<button type="submit" name="ID" value="${item.ID}"
										class="btn btn-xs btn-warning">edit</button>
								</form></td>
							<td class="deleteButton"><form action="DeleteProductData.do"
									method="POST">
									<button type="submit" name="ID" value="${item.ID}"
										class="btn btn-xs btn-danger">delete</button>
								</form></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	



		<!-- /container -->
		<!-- jQuery first, then Bootstrap JS. -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</div>

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
</html>
