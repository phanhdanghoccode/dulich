/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;


import model.DanhGia;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DanhGiaDAO {
    private Connection conn;

    public DanhGiaDAO(Connection conn) {
        this.conn = conn;
    }

  
    public boolean addDanhGia(DanhGia danhGia) throws SQLException {
        String sql = "INSERT INTO danhgia (makhachhang, ID_diadiem, diem, binhluan, ngaydanhgia) VALUES (?, ?, ?, ?, NOW())";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, danhGia.getMaKhachHang());
            pstmt.setString(2, danhGia.getIdDiaDiem());
            pstmt.setInt(3, danhGia.getDiem());
            pstmt.setString(4, danhGia.getBinhLuan());
            return pstmt.executeUpdate() > 0;
        }
    }

    
    public List<DanhGia> getAllDanhGia() throws SQLException {
        List<DanhGia> danhSachDanhGia = new ArrayList<>();
        String sql = "SELECT * FROM danhgia";
        try (Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                DanhGia danhGia = new DanhGia(
                    rs.getInt("ID"),
                    rs.getString("makhachhang"),
                    rs.getString("ID_diadiem"),
                    rs.getInt("diem"),
                    rs.getString("binhluan"),
                    rs.getTimestamp("ngaydanhgia")
                );
                danhSachDanhGia.add(danhGia);
            }
        }
        return danhSachDanhGia;
    }

  
    public boolean deleteDanhGia(int id) throws SQLException {
        String sql = "DELETE FROM danhgia WHERE ID = ?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            return pstmt.executeUpdate() > 0;
        }
    }
}
