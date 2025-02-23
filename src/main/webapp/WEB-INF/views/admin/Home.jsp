<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<title>Trang chủ Admin</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/admin/css/home.css">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<link rel="stylesheet" type="text/css"
	href="https://npmcdn.com/flatpickr/dist/themes/material_orange.css">

</head>
<body>
	<aside class="sidebar" id="sidebar">
		<div class="sidebar__logo" id="sidebarLogo">
			<img src="<%=request.getContextPath()%>/assets/admin/image/logo.png"
				alt="Logo" />
		</div>

		<nav class="sidebar__nav">
			<a href="#" class="active menu-parent" id="dashboardParent"><img
				src="<%=request.getContextPath()%>/assets/admin/image/dashboard.png"
				alt="dashboard" class="active" /><span>Dashboard</span><img
				src="<%=request.getContextPath()%>/assets/admin/image/down-arrow.png"
				alt="down" class="arrow active" /></a> 
			<div class="submenu" id="dashboardSubmenu">
    			<a href="#">eCommerce</a>
    			<a href="#">Analytics</a>
    			<a href="#">Marketing</a>
    			<a href="#">CRM</a>
    			<a href="#">Stocks</a>
  			</div>
			<a href="#"><img
				src="<%=request.getContextPath()%>/assets/admin/image/dashboard.png"
				alt="dashboard" /><span>Dashboard</span></a> 
			<a href="#"><img
				src="<%=request.getContextPath()%>/assets/admin/image/dashboard.png"
				alt="dashboard" /><span>Dashboard</span></a> 
			<a href="#"><img
				src="<%=request.getContextPath()%>/assets/admin/image/dashboard.png"
				alt="dashboard" /><span>Dashboard</span></a> 
			<a href="#"><img
				src="<%=request.getContextPath()%>/assets/admin/image/dashboard.png"
				alt="dashboard" /><span>Dashboard</span></a> 
			<a href="#"><img
				src="<%=request.getContextPath()%>/assets/admin/image/dashboard.png"
				alt="dashboard" /><span>Dashboard</span></a>
		</nav>
	</aside>

	<div class="main">
		<header class="header">
			<div class="header__left">
				<button class="header__toggle" id="toggleBtn">
					<img
						src="<%=request.getContextPath()%>/assets/admin/image/menu.png"
						alt="menu" />
				</button>
				<div class="search-box">
					<input type="text" placeholder="Search or type command..." />
					<div class="search-box__icon"><img
				src="<%=request.getContextPath()%>/assets/admin/image/magnifying-glass.png"
				alt="search" /></div>
				</div>
			</div>

			<div class="header__right">
				<!-- Nút thông báo -->
				<button class="header__notify">
					&#128276;
					<!-- Icon chuông dạng text -->
				</button>
				<!-- Thông tin user -->
				<div class="header__user">
					<img src="https://via.placeholder.com/40" alt="User" /> <span>Emirhan
						Boruch</span>
				</div>
			</div>
		</header>

		<!-- Nội dung chính -->
		<main class="content">
			<!-- Cards (thống kê) -->
			<div class="cards">
				<div class="card">
					<div class="card__title">Customers</div>
					<div class="card__value">3,782</div>
					<div class="card__change positive">+1.10%</div>
				</div>
				<div class="card">
					<div class="card__title">Orders</div>
					<div class="card__value">5,359</div>
					<div class="card__change negative">-9.05%</div>
				</div>
				<div class="card">
					<div class="card__title">Revenue</div>
					<div class="card__value">$45,387</div>
					<div class="card__change positive">+5.00%</div>
				</div>
				<div class="card">
					<div class="card__title">Visitors</div>
					<div class="card__value">10,259</div>
					<div class="card__change positive">+2.45%</div>
				</div>
			</div>

			<!-- Bảng Recent Orders -->
			<div class="orders">
				<div class="orders__header">
					<h2>Recent Orders</h2>
					<div class="orders__actions">
						<button class="btn">Filter</button>
						<button class="btn btn--secondary">See all</button>
					</div>
				</div>
				<table>
					<thead>
						<tr>
							<th>Products</th>
							<th>Category</th>
							<th>Price</th>
							<th>Status</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Macbook Pro 13"</td>
							<td>Laptop</td>
							<td>$2399.00</td>
							<td class="status delivered">Delivered</td>
						</tr>
						<tr>
							<td>Apple Watch Ultra</td>
							<td>Watch</td>
							<td>$799.00</td>
							<td class="status delivered">Delivered</td>
						</tr>
						<tr>
							<td>iPhone 13 Pro Max</td>
							<td>SmartPhone</td>
							<td>$1899.00</td>
							<td class="status pending">Pending</td>
						</tr>
					</tbody>
				</table>
			</div>
		</main>
	</div>

	<script>
		document.addEventListener('DOMContentLoaded', function() {
			const toggleBtn = document.getElementById('toggleBtn');
			const sidebar = document.getElementById('sidebar');
			const logoDiv = document.getElementById('sidebarLogo');
		    const logoImg = logoDiv.querySelector('img');
		    const dashboardParent = document.getElementById('dashboardParent');
		    const dashboardSubmenu = document.getElementById('dashboardSubmenu');

		    toggleBtn.addEventListener('click', function() {
		        sidebar.classList.toggle('collapsed');
		        
		        if (sidebar.classList.contains('collapsed')) {
		          logoImg.setAttribute('src', '<%=request.getContextPath()%>/assets/admin/image/image-logo.png');
		        } else {
		          logoImg.setAttribute('src', '<%=request.getContextPath()%>/assets/admin/image/logo.png');
		        }
		        
		        if (dashboardSubmenu.classList.contains('open')) {
		            dashboardSubmenu.classList.remove('open');
		            dashboardParent.classList.remove('open');
		          }
		      });

		    dashboardParent.addEventListener('click', function(e) {
		      e.preventDefault(); 

		      if (!sidebar.classList.contains('collapsed')) {
		    	    dashboardSubmenu.classList.toggle('open');
		    	    dashboardParent.classList.toggle('open');
		    	  }
		    });
		});
	</script>

</body>
</html>