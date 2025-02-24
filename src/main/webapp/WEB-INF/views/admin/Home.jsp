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
				src="<%=request.getContextPath()%>/assets/admin/image/user.png"
				alt="user" class="active" /><span>Người Dùng</span><img
				src="<%=request.getContextPath()%>/assets/admin/image/down-arrow.png"
				alt="down" class="arrow active" /></a> 
			<div class="submenu" id="dashboardSubmenu">
    			<a href="#">Nhân Viên</a>
    			<a href="#">Khách hàng</a>
    			<a href="#">Phân Quyền</a>
  			</div>
			<a href="#"><img
				src="<%=request.getContextPath()%>/assets/admin/image/route.png"
				alt="route" /><span>Quản Lý Tuyến Xe</span></a> 
			<a href="#"><img
				src="<%=request.getContextPath()%>/assets/admin/image/map.png"
				alt="map" /><span>Quản Lý Chuyến Xe</span></a> 
			<a href="#"><img
				src="<%=request.getContextPath()%>/assets/admin/image/bus-bus.png"
				alt="bus" /><span>Quản Lý Xe</span></a> 
			<a href="#"><img
				src="<%=request.getContextPath()%>/assets/admin/image/bill.png"
				alt="bill" /><span>Quản Lý Hoá Đơn</span></a> 
			<a href="#"><img
				src="<%=request.getContextPath()%>/assets/admin/image/chart.png"
				alt="chart" /><span>Thống Kê</span></a>
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
			</div>

			<div class="header__right">
				<div class="header__user" onclick="toggleModal()">
					<img
						src="<%=request.getContextPath()%>/assets/admin/image/users.png"
						alt="User" /> 
					<span>Xin chào <strong>Emirhan Boruch</strong></span>
					<img
				src="<%=request.getContextPath()%>/assets/admin/image/down-arrow.png"
				alt="down" />
				</div>
				
				<div class="user-modal" id="userModal">
        			<div class="user-modal__content">
            			<p><strong>Emirhan Boruch</strong></p>
            			<p>emirhanboruch51@gmail.com</p>
            			<div class="user-modal__item"><img
							src="<%=request.getContextPath()%>/assets/admin/image/profile.png"
							alt="profile" /> Chỉnh sửa hồ sơ</div>
            			<hr>
            			<div class="user-modal__item logout"><img
							src="<%=request.getContextPath()%>/assets/admin/image/log-out.png"
							alt="log-out" class="log-out"/> Đăng xuất</div>
        			</div>
    			</div>
			</div>
		</header>

		<main class="content">
			<div class="cards">
				<div class="card">
					<div class="card__text">
            			<div class="card__title">Khách hàng</div>
            			<div class="card__value">3,782</div>
        			</div>
					<img
				src="<%=request.getContextPath()%>/assets/admin/image/customer.png"
				alt="customer" />
				</div>
				<div class="card">
					<div class="card__text">
						<div class="card__title">Tổng số xe</div>
						<div class="card__value">59</div>
					</div>
					<img
				src="<%=request.getContextPath()%>/assets/admin/image/bus.png"
				alt="bus" />
				</div>
				<div class="card">
					<div class="card__text">
						<div class="card__title">Số chuyến xe</div>
						<div class="card__value">187</div>
					</div>
					<img
				src="<%=request.getContextPath()%>/assets/admin/image/bus-route.png"
				alt="bus-route" />
				</div>
				<div class="card">
					<div class="card__text">
						<div class="card__title">Tổng doanh thu tháng</div>
						<div class="card__value">102.000.259</div>
					</div>
					<img
				src="<%=request.getContextPath()%>/assets/admin/image/money.png"
				alt="money" />
				</div>
			</div>

			<div class="orders">
				<div class="orders__header">
					<h2>Danh sách người dùng</h2>
					<div class="orders__actions">
						<div class="search-box">
							<input type="text" placeholder="Nhập từ khoá để tìm kiếm..." />
							<div class="search-box__icon"><img
								src="<%=request.getContextPath()%>/assets/admin/image/magnifying-glass.png"
								alt="search" /></div>
						</div>
					</div>
				</div>
				
				<table>
					<thead>
						<tr>
							<th>Products</th>
							<th>Category</th>
							<th>Price</th>
							<th>Status</th>
							<th>Hành động</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Macbook Pro 13"</td>
							<td>Laptop</td>
							<td>$2399.00</td>
							<td class="status delivered">Delivered</td>
							<td>
								<img
								src="<%=request.getContextPath()%>/assets/admin/image/see.png"
								alt="detail" />
								<img
								src="<%=request.getContextPath()%>/assets/admin/image/update.png"
								alt="search" />
								<img
								src="<%=request.getContextPath()%>/assets/admin/image/delete.png"
								alt="search" />
							</td>
						</tr>
						<tr>
							<td>Apple Watch Ultra</td>
							<td>Watch</td>
							<td>$799.00</td>
							<td class="status delivered">Delivered</td>
							<td>
								<img
								src="<%=request.getContextPath()%>/assets/admin/image/see.png"
								alt="detail" />
								<img
								src="<%=request.getContextPath()%>/assets/admin/image/update.png"
								alt="search" />
								<img
								src="<%=request.getContextPath()%>/assets/admin/image/delete.png"
								alt="search" />
							</td>
						</tr>
						<tr>
							<td>iPhone 13 Pro Max</td>
							<td>SmartPhone</td>
							<td>$1899.00</td>
							<td class="status pending">Pending</td>
							<td>
								<img
								src="<%=request.getContextPath()%>/assets/admin/image/see.png"
								alt="detail" />
								<img
								src="<%=request.getContextPath()%>/assets/admin/image/update.png"
								alt="search" />
								<img
								src="<%=request.getContextPath()%>/assets/admin/image/delete.png"
								alt="search" />
							</td>
						</tr>
						<tr>
							<td>iPhone 13 Pro Max</td>
							<td>SmartPhone</td>
							<td>$1899.00</td>
							<td class="status pending">Pending</td>
							<td>
								<img
								src="<%=request.getContextPath()%>/assets/admin/image/see.png"
								alt="detail" />
								<img
								src="<%=request.getContextPath()%>/assets/admin/image/update.png"
								alt="search" />
								<img
								src="<%=request.getContextPath()%>/assets/admin/image/delete.png"
								alt="search" />
							</td>
						</tr>
						<tr>
							<td>iPhone 13 Pro Max</td>
							<td>SmartPhone</td>
							<td>$1899.00</td>
							<td class="status pending">Pending</td>
							<td>
								<img
								src="<%=request.getContextPath()%>/assets/admin/image/see.png"
								alt="detail" />
								<img
								src="<%=request.getContextPath()%>/assets/admin/image/update.png"
								alt="search" />
								<img
								src="<%=request.getContextPath()%>/assets/admin/image/delete.png"
								alt="search" />
							</td>
						</tr>
						<tr>
					</tbody>
				</table>
				
				<div class="pagination-container">
    				<p class="pagination-info">Showing 1 - 5 of 10 Products</p>
    				<div class="pagination">
        				<span class="prev disabled">Prev</span>
        				<span class="page active">1</span>
        				<span class="page">2</span>
        				<span class="next">Next</span>
    				</div>
				</div>
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
		
		function toggleModal() {
		    var modal = document.getElementById("userModal");
		    modal.classList.toggle("show");
		}
		
		document.addEventListener("click", function(event) {
		    var modal = document.getElementById("userModal");
		    var userHeader = document.querySelector(".header__user");
		    
		    if (!userHeader.contains(event.target) && !modal.contains(event.target)) {
		        modal.classList.remove("show");
		    }
		});
	</script>

</body>
</html>