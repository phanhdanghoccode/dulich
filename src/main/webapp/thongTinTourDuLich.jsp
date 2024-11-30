<%@page import="model.KhachHang"%>
<%@page import="model.DiaDiem"%>
<%@page import="database.DAODiaDiem"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + request.getContextPath();
%> 

<%
    // Lấy ID địa điểm từ tham số request
    String diaDiemId = request.getParameter("id");

    // Kiểm tra ID có hợp lệ không
    DiaDiem diaDiem = null;
    if (diaDiemId != null && !diaDiemId.isEmpty()) {
        // Sử dụng DAO để lấy thông tin địa điểm từ CSDL
        DAODiaDiem daoDiaDiem = new DAODiaDiem();
        diaDiem = daoDiaDiem.selectById(new DiaDiem(diaDiemId));
    }

    // Nếu không tìm thấy thông tin, báo lỗi
    if (diaDiem == null) {
        out.println("<h3>Không tìm thấy thông tin địa điểm!</h3>");
        return;
    }
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

        <style>


            .container {
                position: relative;
                margin-bottom: 200px; /* Tăng khoảng cách để timeline không đè lên bảng */
            }

            .timeline-container {
                position: relative;
                margin-bottom: 50px;
            }

            .card {
                position: relative;
                z-index: 10; /* Đặt bảng thông tin phía trên */
                background-color: white;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                border-radius: 10px;
            }

            .line {
                position: absolute;
                z-index: 0; /* Đường nối nằm dưới cùng */
            }

            .image-circle {
                width: 200px;
                height: 200px;
                border-radius: 50%;
                overflow: hidden;
                background: #f0f0f0;
                display: flex;
                align-items: center;
                justify-content: center;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            }

            .image-circle img {
                width: 100%;
                height: auto;
            }

            .timeline-text {
                font-size: 16px;
                font-weight: bold;
                margin: 10px;
            }
        </style>
    </head>
    <body>
        <!-- header -->
        <jsp:include page="header.jsp" />

        <!-- Page content -->
        <div class="container mt-4">
            <div class="row">
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
                                <img src="<%= diaDiem.getImg1()%>" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="<%= diaDiem.getImg3()%>" class="d-block w-100" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="<%= diaDiem.getImg2()%>" class="d-block w-100" alt="...">
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

                    <div class="container">
                        <div class="intro text-center">
                            <h2>Bắc Ninh</h2>
                            <p>
                                Tour du lịch Bắc Ninh 1 ngày đưa quý khách khám phá vùng đất Kinh Bắc – cái nôi của văn hóa
                                Phật giáo và lịch sử Việt Nam. Hành trình ghé thăm các di tích nổi tiếng như Chùa Bút Tháp 
                                cổ kính, Chùa Dâu – trung tâm Phật giáo đầu ti
                                ên của nước ta, Chùa Phật Tích linh thiêng với những bức tượng đá kỳ công, và Đền Đô uy 
                                nghi – nơi thờ 8 vị vua triều Lý. Đan xen trong chuyến đi là những khoảnh khắc hòa mình vào cảnh sắc thanh bình và tận hưởng các món ăn đặc sản Bắc Ninh.

                                
                                 du lịch Bắc Ninh 1 ngày đưa quý khách khám phá vùng đất Kinh Bắc – cái nôi của văn hóa
                                Phật giáo và lịch sử Việt Nam. Hành trình ghé thăm các di tích nổi tiếng như Chùa Bút Tháp 
                                cổ kính, Chùa Dâu – trung tâm Phật giáo đầu ti
                                ên của nước ta, Chùa Phật Tích linh thiêng với những bức tượng đá kỳ công, và Đền Đô uy 
                               



                            </p>
                        </div>
                        <div class="container "> 
                            

                            <!-- Timeline Layout -->
                            <div class="info-box" style="position: absolute; top: 20px; left: 300px; width: 500px; background-color: rgba(255, 255, 255, 0.8); padding: 20px; border-radius: 8px;">
                                <h3>7:00-8:30:</h3>
                                <h3>Chùa Dâu </h3>
                                <p>     Nơi khởi  nên của nước ta, Chùa Phật Tích linh thiêng với những bức tượng đá kỳ công, và Đền Đô uy 
                                nghi – nơi thờ 8 vị vua tnguồn Phật giáo Việt Nam.</p>
                                <h5>12:00 - Ăn trưa</h5>
                                
                            </div>


                            <div class="timeline-container" style="top: 0px; left: 10px;">
                                <div class="timeline-text"> Chùa Dâu</div>
                                <div class="image-circle">
                                    <img src="img/diadiem/img_dd1.png" alt="placeholder">
                                </div>
                            </div>
                            
                             <div class="info-box" style="position: absolute; top: 340px; left: 10px; width: 500px; background-color: rgba(255, 255, 255, 0.8); padding: 20px; border-radius: 8px;">
                                <h3>9:00-10:30 :</h3>
                                 <h3>Đền Đô</h3>
                                <p>Đền Đô - nơi khởi nguồn Phật giáo Việt Nam.</p>
                                
                            </div>

                            <div class="timeline-container" style="top: 60px; left: 700px;">
                                <div class="image-circle">
                                    <img src="img/diadiem/img_dd2.png" alt="placeholder">
                                </div>
                                <div class="timeline-text">Đền Đô</div>
                            </div>

                             <div class="info-box" style="position: absolute; top: 650px; left: 450px; width: 500px; background-color: rgba(255, 255, 255, 0.8); padding: 20px; border-radius: 8px;">
                                <h3>Điểm đến</h3>
                                <p>Chùa Phật Tích - nơi khởicủa nước ta, Chùa Phật Tích linh thiêng với những bức tượng đá kỳ công, và Đền Đô uy 
                                nghi – nơi thờ 8 vị vua triều Lý. Đan xen trong chuyến đ nguồn Phật giáo Việt Nam.</p>
                                <h3>Lịch trình</h3>
                                <ul>
                                    <li>9:00 - Đón khách tại Hà Nội</li>
                                    <li>10:00 - Thăm Chùa Dâu</li>
                                    <li>12:00 - Ăn trưa</li>
                                    <li>14:00 - Thăm Đền Đô</li>
                                </ul>
                            </div>


                            <div class="timeline-container" style="top: 100px; left: 10px;">
                                <div class="timeline-text">Chùa Phật Tích</div>
                                <div class="image-circle">
                                    <img src="img/diadiem/img_dd3.png" alt="placeholder">
                                </div>
                            </div>
                            <div class="timeline-container" style="top: 60px; left: 700px;">
                                <div class="image-circle">
                                    <img src="img/diadiem/img_dd4.png" alt="placeholder">
                                </div>
                                <div class="timeline-text">Đền thờ Trạng nguyên Lê Văn Thịnh</div>
                            </div>

                            <!-- Line 1 -->
                            <div class="line" style="top: 10px; left: 10px; width: 1200px; height: 1200px;">
                                <svg viewBox="0 0 800 400" xmlns="http://www.w3.org/2000/svg">
                                <path d="M 120 150 Q 200 270 480 290" stroke="black" fill="transparent" stroke-width="2" />
                                </svg>
                            </div>

                            <div class="line" style="top: 10px; left: 10px; width: 1200px; height: 500px;">
                                <svg viewBox="0 0 800 800" xmlns="http://www.w3.org/2000/svg">
                                <path d="M 100 460 Q 180 340 480 350" stroke="black" fill="transparent" stroke-width="2" />
                                </svg>
                            </div>

                            <div class="line" style="top: 10px; left: 10px; width: 1200px; height: 1200px;">
                                <svg viewBox="0 0 800 800" xmlns="http://www.w3.org/2000/svg">
                                <path d="M 150 550 Q 330 730 480 690" stroke="black" fill="transparent" stroke-width="2" />
                                </svg>
                            </div>

                        </div>


                        <!--                         Line 2 
                                                <div class="line" style="top: 300px; left: 200px; width: 400px; height: 200px;">
                                                    <svg viewBox="0 0 400 200" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M 50 150 Q 200 200 350 50"  stroke="black" fill="transparent" stroke-width="2" />
                                                    </svg>
                                                </div>-->





                    </div>

                    <div class="container mt-4 position-relative">
                        <!-- Line 1 -->
                        <div class="position-absolute" style="top: 75px; left: 120px; width: 300px; height: 2px;">
                            <svg viewBox="0 0 300 2" xmlns="http://www.w3.org/2000/svg">
                            <path d="M 0 1 L 300 1" stroke="black" fill="transparent" stroke-width="2" stroke-dasharray="5,5" />
                            </svg>
                        </div>
                        <!-- Line 2 -->
                        <div class="position-absolute" style="top: 175px; left: 120px; width: 300px; height: 2px;">
                            <svg viewBox="0 0 300 2" xmlns="http://www.w3.org/2000/svg">
                            <path d="M 0 1 L 300 1" stroke="black" fill="transparent" stroke-width="2" stroke-dasharray="5,5" />
                            </svg>
                        </div>
                        <!-- Line 3 -->
                        <div class="position-absolute" style="top: 275px; left: 120px; width: 300px; height: 2px;">
                            <svg viewBox="0 0 300 2" xmlns="http://www.w3.org/2000/svg">
                            <path d="M 0 1 L 300 1" stroke="black" fill="transparent" stroke-width="2" stroke-dasharray="5,5" />
                            </svg>
                        </div>
                    </div>








                    <!-- Information Card -->
                    <div class="container mt-5">
                        <div class="card shadow">
                            <div class="card-body">
                                <h5 class="card-title mb-4">Thông tin chung</h5>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        <strong>Giá tour:</strong> <%= diaDiem.getGiaTour()%> VND
                                    </li>
                                    <li class="list-group-item">
                                        <strong>Ngày khả dụng:</strong> <%= diaDiem.getThoiGianDienRa()%>
                                    </li>
                                    <li class="list-group-item">
                                        <strong>Thời lượng:</strong> <%= diaDiem.getThoiLuong()%> giờ
                                    </li>
                                    <li class="list-group-item">
                                        <strong>Địa chỉ:</strong> 
                                        <a href="<%= diaDiem.getLinkGGmap()%>" target="_blank" rel="noopener noreferrer">
                                            <%= diaDiem.getDiaDiem()%>
                                        </a>
                                    </li>
                                </ul>
                                <button id="bookTourBtn" class="btn btn-primary mt-4">Đặt tour</button>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>


        <!-- footer -->
        <%@include file="footer.jsp" %>
    </body>
    </
