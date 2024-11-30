<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
    + request.getContextPath();
%> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Bookstore</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" >
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    
    <!-- Add background CSS here -->
    <style>
        body {
            background-image: url('img/background.jpg'); /* Thay đổi đường dẫn theo ảnh của bạn */
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }
    </style>
</head>
<body>
    
    <!-- header -->
    <jsp:include page="header.jsp" />

    <!-- Page content -->
    <div class="container mt-4">
        <div class="row">
            <!-- Menu left -->
            <jsp:include page="left.jsp"></jsp:include>
            <!-- End Menu left -->

            <!-- Slider and Products -->
            <div class="col-lg-9">
                <!-- Slider -->
                <div id="carouselExampleIndicators" class="carousel slide mb-4"
                    data-bs-ride="true">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide-to="0" class="active" aria-current="true"
                            aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators"
                            data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="img/slider/LangBac4.png" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="img/slider/LangBac5.png" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="img/slider/LangBac6.png" class="d-block w-100" alt="...">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button"
                        data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button"
                        data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
                <!-- End Slider -->
                <!-- Products -->
                <div class="row">
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#"><img class="card-img-top" src="img/product/Hà Nội.jpg"
                                alt=""></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="<%=url %>/thongTinTourDuLich.jsp">Hà Nội</a>
                                </h4>
                                <h5>2.000.000</h5>
                                <p class="card-text">
                                    Hà Nội luôn thu hút du khách với một màu sắc đặc trưng, một nét văn hóa đậm đà bản sắc và một lối sống riêng chẳng thể lẫn với bất kỳ nơi nào khác. Cùng khám phá Hà Nội với chương trình Du lịch Hà Nội 1 ngày với nhiều hoạt động thú vị: tham quan Văn Miếu Quốc Tử Giám, lăng chủ tịch Hồ Chí Minh, hoàng thành Thăng Long,..
                                </p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733;
                                    &#9733; &#9734;</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#"><img class="card-img-top" src="img/product/Bắc Giang.jpg"
                                alt=""></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="<%=url %>/thongTinTourDuLich.jsp">Bắc Giang</a>
                                </h4>
                                <h5>1.000.000</h5>
                                <p class="card-text">
                                    Bắc Giang là một điểm đến du lịch đầy tiềm năng với sự kết hợp hài hòa giữa thiên nhiên tươi đẹp, lịch sử lâu đời và văn hóa đặc sắc. Tỉnh này thu hút du khách bởi các di tích lịch sử - văn hóa, danh thắng tự nhiên và các làng nghề truyền thống.
                                </p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733;
                                    &#9733; &#9734;</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#"><img class="card-img-top" src="img/product/Hải Dương.jpg"
                                alt=""></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="<%=url %>/thongTinTourDuLich.jsp">Hải Dương</a>
                                </h4>
                                <h5>1.000.000</h5>
                                <p class="card-text">
                                    Hải Dương là một tỉnh nằm ở miền Bắc Việt Nam, thuộc vùng đồng bằng sông Hồng, cách thủ đô Hà Nội khoảng 60km về phía Đông Nam. Hải Dương không chỉ nổi bật với vị trí địa lý thuận lợi mà còn là nơi lưu giữ nhiều giá trị văn hóa, lịch sử và các danh lam thắng cảnh đặc sắc.
                                </p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733;
                                    &#9733; &#9734;</small>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#"><img class="card-img-top" src="img/product/Thanh Hoá.jpg"
                                alt=""></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="<%=url %>/thongTinTourDuLich.jsp">Thanh Hoá</a>
                                </h4>
                                <h5>50.000</h5>
                                <p class="card-text">Thanh Hóa là tỉnh nằm ở cửa ngõ Bắc Trung Bộ, cách Hà Nội khoảng 150km về phía Nam. Đây là một điểm đến hấp dẫn, hội tụ đầy đủ các yếu tố để phát triển du lịch với bề dày lịch sử - văn hóa, cảnh quan thiên nhiên đa dạng và những bãi biển tuyệt đẹp.</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733;
                                    &#9733; &#9734;</small>
                            </div>
                        </div>
                    </div>
                                <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#"><img class="card-img-top" src="img/product/Phú Thọ.jpg"
                                alt=""></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="<%=url %>/thongTinTourDuLich.jsp">Phú Thọ</a>
                                </h4>
                                <h5>50.000</h5>
                                <p class="card-text">Phú Thọ – Miền đất Tổ linh thiêng
Phú Thọ, vùng đất cội nguồn dân tộc, là nơi ghi dấu lịch sử của các Vua Hùng – những người dựng nên nhà nước Văn Lang đầu tiên. Với quần thể di tích Đền Hùng, Bảo tàng Hùng Vương, cùng làn điệu Hát Xoan độc đáo, Phú Thọ là điểm đến không thể bỏ qua để tìm về cội nguồn văn hóa Việt.
Tour du lịch Phú Thọ 1 ngày đưa du khách về miền đất tổ thiêng liêng, tham quan Khu di tích Đền Hùng, tìm hiểu lịch sử tại Bảo tàng Hùng Vương và thưởng thức Hát Xoan – di sản văn hóa phi vật thể của nhân loại. Hành trình còn mang đến cơ hội thưởng thức đặc sản địa phương và mua quà lưu niệm từ vùng đất giàu truyền thống này. Hãy cùng trải nghiệm một ngày ý nghĩa và đầy cảm xúc tại Phú Thọ!
</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733;
                                    &#9733; &#9734;</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="card h-100">
                            <a href="#"><img class="card-img-top" src="img/product/Bắc Ninh.jpg"
                                alt=""></a>
                            <div class="card-body">
                                <h4 class="card-title">
                                    <a href="<%=url %>/thongTinTourDuLich.jsp">Bắc Ninh</a>
                                </h4>
                                <h5>50.000</h5>
                                <p class="card-text">Tour du lịch Bắc Ninh 1 ngày đưa quý khách khám phá vùng đất Kinh Bắc – cái nôi của văn hóa Phật giáo và lịch sử Việt Nam. Hành trình ghé thăm các di tích nổi tiếng như Chùa Bút Tháp cổ kính, Chùa Dâu – trung tâm Phật giáo đầu tiên của nước ta, Chùa Phật Tích linh thiêng với những bức tượng đá kỳ công, và Đền Đô uy nghi – nơi thờ 8 vị vua triều Lý. Đan xen trong chuyến đi là những khoảnh khắc hòa mình vào cảnh sắc thanh bình và tận hưởng các món ăn đặc sản Bắc Ninh.

</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">&#9733; &#9733; &#9733;
                                    &#9733; &#9734;</small>
                            </div>
                        </div>
                    </div>
                    <!-- Add more product cards here as necessary -->

                </div>              
                <!-- End Products -->
            </div>
            <!-- End Slider and Products -->
        </div>
    </div>
    <!-- End Page content -->

    <!-- footer -->
    <%@include file="footer.jsp" %>

</body>
</html>
