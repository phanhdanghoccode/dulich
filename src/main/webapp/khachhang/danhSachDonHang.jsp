<%@ include file="../header.jsp" %>
<main>
    <h2>Danh Sách ??n Hàng</h2>

    <c:if test="${not empty donHangs}">
        <table border="1">
            <thead>
                <tr>
                    <th>Mã ??n Hàng</th>
                    <th>Ngày ??t</th>
                    <th>S?n Ph?m</th>
                    <th>S? L??ng</th>
                    <th>Giá</th>
                    <th>T?ng Giá</th>
                    <th>Tr?ng Thái</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="donHang" items="${donHangs}">
                    <tr>
                        <td>${donHang.maDonHang}</td>
                        <td>${donHang.ngayDat}</td>
                        <td>
                            <c:forEach var="sanPham" items="${donHang.sanPhams}">
                                <p>${sanPham.tenSanPham}</p>
                            </c:forEach>
                        </td>
                        <td>
                            <c:forEach var="sanPham" items="${donHang.sanPhams}">
                                <p>${sanPham.soLuong}</p>
                            </c:forEach>
                        </td>
                        <td>
                            <c:forEach var="sanPham" items="${donHang.sanPhams}">
                                <p>${sanPham.gia}</p>
                            </c:forEach>
                        </td>
                        <td>${donHang.tongGia}</td>
                        <td>${donHang.trangThai}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>

    <c:if test="${empty donHangs}">
        <p>Ch?a có ??n hàng nào.</p>
    </c:if>
</main>
<%@ include file="../footer.jsp" %>
