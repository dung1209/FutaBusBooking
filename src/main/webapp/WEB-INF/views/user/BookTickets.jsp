<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<title>Đặt vé</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/assets/user/css/booktickets.css">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<link rel="stylesheet" type="text/css"
	href="https://npmcdn.com/flatpickr/dist/themes/material_orange.css">

</head>
<body>

	<header class="header-container">
		<img
			src="<%=request.getContextPath()%>/assets/user/image/home_banner.png"
			alt="FUTA Bus Lines" class="banner-image">
	</header>

	<div class="hero-container">
		<div class="items-start">
			<div>
				<img
					src="<%=request.getContextPath()%>/assets/user/image/vietnam.svg"
					width="26" alt="language icon"> <span class="mx-2 text-white">vi</span>
				<img
					src="<%=request.getContextPath()%>/assets/user/image/icon_form_droplist.svg"
					alt="icon_form_droplist">
			</div>
			<div>
				<img
					src="<%=request.getContextPath()%>/assets/user/image/download_app.svg"
					width="26" alt="download app icon"> <span
					class="mx-2 text-white">Tải ứng dụng</span> <img
					src="<%=request.getContextPath()%>/assets/user/image/icon_form_droplist.svg"
					alt="icon_form_droplist">
			</div>
		</div>

		<img
			src="<%=request.getContextPath()%>/assets/user/image/home_logo.svg"
			alt="FUTA Bus Lines" class="hero-image">

		<div class="justify-end">
			<img src="<%=request.getContextPath()%>/assets/user/image/person.svg"
				width="26" style="margin: 0 10px" alt="download app icon"> <a
				class="gap-3"> Đăng nhập/Đăng ký </a>
		</div>
	</div>

	<nav>
		<ul>
			<li><a href="#" class="border-choice">TRANG CHỦ</a></li>
			<li><a href="#">LỊCH TRÌNH</a></li>
			<li><a href="#">TRA CỨU VÉ</a></li>
			<li><a href="#">TIN TỨC</a></li>
			<li><a href="#">HOÁ ĐƠN</a></li>
			<li><a href="#">LIÊN HỆ</a></li>
			<li><a href="#">VỀ CHÚNG TÔI</a></li>
		</ul>
	</nav>

	<img
		src="<%=request.getContextPath()%>/assets/user/image/home_background.png"
		alt="FUTA Bus Lines" class="centered-image">

	<section class="search-section">
		<h2>Tìm chuyến xe</h2>

		<div class="booking-options">
			<div class="trip-options">
				<label class="option"> <span> <input type="radio"
						class="ant-radio-input" name="trip-type" checked="" value="false">
						<span class="ant-radio-inner"></span>
				</span> <span>Một chiều</span>
				</label> <label class="option"> <span> <input type="radio"
						class="ant-radio-input" name="trip-type" value="true"> <span
						class="ant-radio-inner"> </span>
				</span> <span>Khứ hồi</span>
				</label>
			</div>
			<span class="guide-link"> <a target="_blank" rel="noreferrer"
				href="/huong-dan-dat-ve-tren-web">Hướng dẫn mua vé</a>
			</span>
		</div>

		<form class="booking-form">
			<div class="form-group">
				<label for="departure">Điểm đi</label> <input id="departure"
					name="departure" class="form-control" placeholder="Chọn điểm đi"
					autocomplete="off">
				<ul id="dropdown-list-departure" class="dropdown-list">
				</ul>
			</div>

			<div class="form-group">
				<label for="destination">Điểm đến</label> <input id="destination"
					name="destination" class="form-control" placeholder="Chọn điểm đến"
					autocomplete="off">
				<ul id="dropdown-list-destination" class="dropdown-list">
				</ul>
			</div>

			<div class="form-group">
				<label for="myID">Ngày đi</label> <input id="myID"
					class="form-control" value="2025-01-09">
			</div>

			<!-- <div class="form-group">
				<label for="return-date">Ngày về</label> <input id="return-date"
					type="text" name="return-date" class="form-control"
					placeholder="Thêm ngày về" disabled>
			</div> -->

			<div class="form-group">
				<label for="tickets">Số vé</label> <input id="tickets"
					name="tickets" class="form-control" placeholder="1"
					autocomplete="off" value="1" readonly>
				<ul id="dropdown-list-tickets" class="dropdown-list">
					<li data-value="1">1</li>
					<li data-value="2">2</li>
					<li data-value="3">3</li>
					<li data-value="4">4</li>
					<li data-value="5">5</li>
				</ul>
				<span class="dropdown-icon">&#9662;</span>
			</div>

			<button type="submit" class="search-button">Tìm chuyến xe</button>
		</form>

	</section>

	<div class="filter-container">
		<div class="filter-section">
			<div class="filter-header">
				<h5>BỘ LỌC TÌM KIẾM</h5>
				<div class="filter-actions">
					<button class="reset-filter">Bỏ lọc</button>
					<img
						src="<%=request.getContextPath()%>/assets/user/image/delete.svg"
						width="22" height="22" alt="delete">
				</div>
			</div>
			
			<div class="filter-group">
				<label>Giờ đi</label>
				<div class="filter-options">
					<label><input type="checkbox"> Sáng sớm 00:00 -
						06:00 (0)</label> <label><input type="checkbox"> Buổi sáng
						06:00 - 12:00 (0)</label> <label><input type="checkbox">
						Buổi chiều 12:00 - 18:00 (0)</label> <label><input type="checkbox">
						Buổi tối 18:00 - 24:00 (31)</label>
				</div>
			</div>
			<div class="divide"></div>
			<div class="filter-group">
				<label>Loại xe</label>
				<div class="filter-options">
					<button class="btn-filter">Ghế</button>
					<button class="btn-filter">Giường</button>
					<button class="btn-filter">Limousine</button>
				</div>
			</div>
			<div class="divide"></div>
			<div class="filter-group">
				<label>Hàng ghế</label>
				<div class="filter-options">
					<button class="btn-filter">Hàng đầu</button>
					<button class="btn-filter">Hàng giữa</button>
					<button class="btn-filter">Hàng cuối</button>
				</div>
			</div>
			<div class="divide"></div>
			<div class="filter-group">
				<label>Tầng</label>
				<div class="filter-options">
					<button class="btn-filter">Tầng trên</button>
					<button class="btn-filter">Tầng dưới</button>
				</div>
			</div>
		</div>
		
		<div class="result-section">
			<div class="search-location-section">
				<h3>TP. Hồ Chí Minh - Lâm Đồng (31)</h3>
				<div class="result-filters">
					<button class="btn-result-filter"><img
						src="<%=request.getContextPath()%>/assets/user/image/save_money.svg" alt="save_money">Giá rẻ bất ngờ</button>
					<button class="btn-result-filter"><img
						src="<%=request.getContextPath()%>/assets/user/image/clock.svg" alt="clock">Giờ khởi hành</button>
					<button class="btn-result-filter"><img
						src="<%=request.getContextPath()%>/assets/user/image/seat.svg" alt="seat">Ghế trống</button>
				</div>
			</div>

			<div class="trip-list">
				<div class="trip-item">
					<div class="trip-details">
						<div class="trip-info">
							<div class="time-info">
								<p class="duration">01:50</p>
								<img src="<%=request.getContextPath()%>/assets/user/image/pickup.svg" width="22" height="22" alt="pickup">
								<span class="flex-1 border-b-2 border-dotted"></span>
								<p><span class="time">8 giờ</span> <span class="timezone">(Asian/Ho Chi Minh)</span></p>
								<span class="flex-1 border-b-2 border-dotted"></span>
								<img src="<%=request.getContextPath()%>/assets/user/image/station.svg" width="22" height="22" alt="station">
								<p class="duration">05:50</p>
							</div>
							
							<div class="location-info">
								<p>Bến Xe Miền Tây</p>
								<p>Bến Xe Đà Lạt</p>
							</div>
						</div>
						
						<div class="trip-summary">
							<span class="kind">Limousine</span> 
							<span class="blank">19 chỗ trống</span> 
							<span class="price">290.000đ</span>
						</div>
					</div>
					
					<div class="divide"></div>
					
					<div class="trip-action">
						<span>Chọn ghế</span>
						<span>Lịch trình</span>
						<span>Trung chuyển</span>
						<span>Chính sách</span>
						<button class="btn-select">Chọn chuyến</button>
					</div>
				</div>
				
				<div class="trip-item">
					<div class="trip-details">
						<div class="trip-info">
							<div class="time-info">
								<p class="duration">01:50</p>
								<img src="<%=request.getContextPath()%>/assets/user/image/pickup.svg" width="22" height="22" alt="pickup">
								<span class="flex-1 border-b-2 border-dotted"></span>
								<p><span class="time">8 giờ</span> <span class="timezone">(Asian/Ho Chi Minh)</span></p>
								<span class="flex-1 border-b-2 border-dotted"></span>
								<img src="<%=request.getContextPath()%>/assets/user/image/station.svg" width="22" height="22" alt="station">
								<p class="duration">05:50</p>
							</div>
							
							<div class="location-info">
								<p>Bến Xe Miền Tây</p>
								<p>Bến Xe Đà Lạt</p>
							</div>
						</div>
						
						<div class="trip-summary">
							<span class="kind">Limousine</span> 
							<span class="blank">19 chỗ trống</span> 
							<span class="price">290.000đ</span>
						</div>
					</div>
					
					<div class="divide"></div>
					
					<div class="trip-action">
						<span>Chọn ghế</span>
						<span>Lịch trình</span>
						<span>Trung chuyển</span>
						<span>Chính sách</span>
						<button class="btn-select">Chọn chuyến</button>
					</div>
				</div>
				
				<div class="trip-item">
					<div class="trip-details">
						<div class="trip-info">
							<div class="time-info">
								<p class="duration">01:50</p>
								<img src="<%=request.getContextPath()%>/assets/user/image/pickup.svg" width="22" height="22" alt="pickup">
								<span class="flex-1 border-b-2 border-dotted"></span>
								<p><span class="time">8 giờ</span> <span class="timezone">(Asian/Ho Chi Minh)</span></p>
								<span class="flex-1 border-b-2 border-dotted"></span>
								<img src="<%=request.getContextPath()%>/assets/user/image/station.svg" width="22" height="22" alt="station">
								<p class="duration">05:50</p>
							</div>
							
							<div class="location-info">
								<p>Bến Xe Miền Tây</p>
								<p>Bến Xe Đà Lạt</p>
							</div>
						</div>
						
						<div class="trip-summary">
							<span class="kind">Limousine</span> 
							<span class="blank">19 chỗ trống</span> 
							<span class="price">290.000đ</span>
						</div>
					</div>
					
					<div class="divide"></div>
					
					<div class="trip-action">
						<span>Chọn ghế</span>
						<span>Lịch trình</span>
						<span>Trung chuyển</span>
						<span>Chính sách</span>
						<button class="btn-select">Chọn chuyến</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer>
		<div class="footer-container">
			<div class="footer-contact">
				<h3>TRUNG TÂM TỔNG ĐÀI & CSKH</h3>
				<p class="hotline">1900 6067</p>
				<p>CÔNG TY CỔ PHẦN XE KHÁCH PHƯƠNG TRANG</p>
				<p>Địa chỉ: Số 01 Tô Hiến Thành, Phường 3, TP. Đà Lạt.</p>
				<p>Email: hotro@futa.vn</p>
				<p>Điện thoại: 02838386852</p>
				<p>Fax: 02838386853</p>
			</div>
			<div class="footer-links">
				<h4>FUTA Bus Lines</h4>
				<ul>
					<li><a href="#">Về chúng tôi</a></li>
					<li><a href="#">Lịch trình</a></li>
					<li><a href="#">Tuyển dụng</a></li>
					<li><a href="#">Tin tức & Sự kiện</a></li>
					<li><a href="#">Mạng lưới văn phòng</a></li>
				</ul>
			</div>
			<div class="footer-support">
				<h4>Hỗ trợ</h4>
				<ul>
					<li><a href="#">Tra cứu thông tin đặt vé</a></li>
					<li><a href="#">Điều khoản sử dụng</a></li>
					<li><a href="#">Câu hỏi thường gặp</a></li>
					<li><a href="#">Hướng dẫn đặt vé trên Web</a></li>
					<li><a href="#">Hướng dẫn nạp tiền trên App</a></li>
				</ul>
			</div>
			<div class="footer-apps">
				<h4>TẢI APP FUTA</h4>
				<a href="#"><img
					src="<%=request.getContextPath()%>/assets/user/image/CHPlay.svg"
					alt="CH Play"></a> <a href="#"><img
					src="<%=request.getContextPath()%>/assets/user/image/AppStore.svg"
					alt="App Store"></a>
			</div>
		</div>
		<div class="footer-logos">
			<img
				src="<%=request.getContextPath()%>/assets/user/image/BusLines.svg"
				alt="FUTA Bus Lines"> <img
				src="<%=request.getContextPath()%>/assets/user/image/logo_futa_express.svg"
				alt="FUTA Express"> <img
				src="<%=request.getContextPath()%>/assets/user/image/_FUTA_Advertising.svg"
				alt="FUTA Advertising"> <img
				src="<%=request.getContextPath()%>/assets/user/image/reststop.png"
				alt="Phúc Lộc Rest Stop">
		</div>
		<div class="footer-bottom">
			<p>© 2025 | Học viện Công nghệ Bưu chính Viễn thông cơ sở TP. Hồ
				Chí Minh | Thiết kế bởi: Nguyễn Văn Dũng - Nguyễn Hữu Vinh - Lê Minh
				Thông</p>
		</div>
	</footer>

	<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
	<script>
    	flatpickr("#myID", {
    		dateFormat: "d/m/Y",
    	});
    </script>

	<script>
    
    document.addEventListener("DOMContentLoaded", function () {
        const departureInput = document.getElementById("departure");
        const destinationInput = document.getElementById("destination");
        const dropdownDeparture = document.getElementById("dropdown-list-departure");
        const dropdownDestination = document.getElementById("dropdown-list-destination");

        const cities = [
            "Hải Dương", "Hải Phòng", "Hòa Bình", "Hậu Giang", "Hưng Yên",
            "Lâm Đồng", "TP. Hồ Chí Minh", "Hà Nội", "Đà Nẵng", "Cần Thơ"
        ];

        const showDropdown = (input, dropdown, filter = "") => {
            dropdown.innerHTML = ""; 
            const filteredCities = cities.filter(city => city.toLowerCase().includes(filter.toLowerCase()));

            if (filteredCities.length > 0) {
                filteredCities.forEach(city => {
                    const li = document.createElement("li");
                    li.textContent = city;
                    li.addEventListener("click", () => {
                        input.value = city; 
                        dropdown.style.display = "none"; 
                    });
                    dropdown.appendChild(li);
                });
                dropdown.style.display = "block";
            } else {
                dropdown.style.display = "none";
            }
        };

        departureInput.addEventListener("focus", () => {
            showDropdown(departureInput, dropdownDeparture);
        });

        destinationInput.addEventListener("focus", () => {
            showDropdown(destinationInput, dropdownDestination);
        });

        departureInput.addEventListener("input", () => {
            const query = departureInput.value;
            showDropdown(departureInput, dropdownDeparture, query);
        });

        destinationInput.addEventListener("input", () => {
            const query = destinationInput.value;
            showDropdown(destinationInput, dropdownDestination, query);
        });

        document.addEventListener("click", (event) => {
            if (!departureInput.contains(event.target) && !dropdownDeparture.contains(event.target)) {
                dropdownDeparture.style.display = "none";
            }
            if (!destinationInput.contains(event.target) && !dropdownDestination.contains(event.target)) {
                dropdownDestination.style.display = "none";
            }
        });
        
        const input = document.getElementById("tickets");
        const dropdown = document.getElementById("dropdown-list-tickets");

        // Hiển thị danh sách khi nhấp vào ô input
        input.addEventListener("click", function () {
            dropdown.style.display = dropdown.style.display === "block" ? "none" : "block";
        });

        // Cập nhật giá trị khi chọn một mục trong danh sách
        dropdown.addEventListener("click", function (e) {
            if (e.target.tagName === "LI") {
                input.value = e.target.getAttribute("data-value");
                dropdown.style.display = "none";
            }
        });

        // Ẩn danh sách khi nhấp ra ngoài
        document.addEventListener("click", function (e) {
            if (!dropdown.contains(e.target) && e.target !== input) {
                dropdown.style.display = "none";
            }
        });
    });

    </script>

</body>
</html>