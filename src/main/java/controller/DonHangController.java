package controller;

import database.DonHangDAO;
import database.KhachHangDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import model.DonHang;
import model.KhachHang;
@WebServlet("/DonHangController")
public class DonHangController extends HttpServlet {

    private DonHangDAO donHangDAO = new DonHangDAO();  // Giả sử bạn đã có một lớp DAO để xử lý dữ liệu
    private KhachHangDAO khachHangDAO = new KhachHangDAO();  // Giả sử bạn có DAO cho Khách Hàng

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        switch (action) {
            case "insert":
                insertDonHang(request, response);
                break;
            case "update":
                updateDonHang(request, response);
                break;
            default:
                listDonHang(request, response);
                break;
        }
    }

    // Phương thức xử lý thêm đơn hàng
    private void insertDonHang(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy thông tin từ form
        String tenKhachHang = request.getParameter("tenKhachHang");
        String diaChiMuaHang = request.getParameter("diaChiMuaHang");
        String diaChiNhanHang = request.getParameter("diaChiNhanHang");
        String trangThai = request.getParameter("trangThai");
        String hinhThucThanhToan = request.getParameter("hinhThucThanhToan");
        String trangThaiThanhToan = request.getParameter("trangThaiThanhToan");
        double soTienDaThanhToan = Double.parseDouble(request.getParameter("soTienDaThanhToan"));
        double soTienConThieu = Double.parseDouble(request.getParameter("soTienConThieu"));
        Date ngayDatHang = Date.valueOf(request.getParameter("ngayDatHang"));
        Date ngayGiaoHang = Date.valueOf(request.getParameter("ngayGiaoHang"));

        // Giả sử khách hàng đã đăng nhập và có thông tin trong session
        KhachHang khachHang = (KhachHang) request.getSession().getAttribute("khachHang");

        // Tạo đối tượng DonHang và set thông tin từ form
        DonHang donHang = new DonHang();
        donHang.setMaDonHang(generateMaDonHang());  // Giả sử bạn có một phương thức để tạo mã đơn hàng
        donHang.setKhachHang(khachHang);  // Gán khách hàng vào đơn hàng
        donHang.setDiaChiMuaHang(diaChiMuaHang);
        donHang.setDiaChiNhanHang(diaChiNhanHang);
        donHang.setTrangThai(trangThai);
        donHang.setHinhThucThanhToan(hinhThucThanhToan);
        donHang.setTrangThaiThanhToan(trangThaiThanhToan);
        donHang.setSoTienDaThanhToan(soTienDaThanhToan);
        donHang.setSoTienConThieu(soTienConThieu);
        donHang.setNgayDatHang(ngayDatHang);
        donHang.setNgayGiaoHang(ngayGiaoHang);

        // Thêm đơn hàng vào cơ sở dữ liệu thông qua DonHangDAO
        donHangDAO.insert(donHang);

        // Thêm đơn hàng vào danh sách đơn hàng của khách hàng
        if (khachHang != null) {
            khachHang.getDanhSachDonHang().add(donHang);  // Giả sử danh sách đơn hàng của khách hàng được quản lý
        }

        // Hiển thị thông báo "Đặt tour thành công"
        request.setAttribute("message", "Đặt tour thành công!");
        request.getRequestDispatcher("/donhang/confirmation.jsp").forward(request, response);
    }

    // Phương thức xử lý cập nhật đơn hàng (nếu có)
    private void updateDonHang(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Thực hiện cập nhật đơn hàng tại đây
    }

    // Phương thức hiển thị danh sách đơn hàng (nếu cần)
    private void listDonHang(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<DonHang> arr = null;
        int donHangList = donHangDAO.insertAll(arr);  // Giả sử bạn có phương thức để lấy tất cả đơn hàng
        request.setAttribute("donHangList", donHangList);
        request.getRequestDispatcher("/donhang/list.jsp").forward(request, response);
    }

    // Phương thức tạo mã đơn hàng (tùy vào cách bạn quản lý mã đơn hàng)
    private String generateMaDonHang() {
        // Tạo mã đơn hàng duy nhất (có thể sử dụng thời gian hoặc tự động tăng)
        return "DH" + System.currentTimeMillis();  // Ví dụ: tạo mã đơn hàng từ thời gian hiện tại
    }
}



