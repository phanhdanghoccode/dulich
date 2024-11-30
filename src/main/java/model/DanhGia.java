/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;


import java.util.Date;

public class DanhGia {
    private int id;
    private String maKhachHang;
    private String idDiaDiem;
    private int diem;
    private String binhLuan;
    private Date ngayDanhGia;

    // Constructor, getters, setters, toString()

    public DanhGia(int id, String maKhachHang, String idDiaDiem, int diem, String binhLuan, Date ngayDanhGia) {
        this.id = id;
        this.maKhachHang = maKhachHang;
        this.idDiaDiem = idDiaDiem;
        this.diem = diem;
        this.binhLuan = binhLuan;
        this.ngayDanhGia = ngayDanhGia;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMaKhachHang() {
        return maKhachHang;
    }

    public void setMaKhachHang(String maKhachHang) {
        this.maKhachHang = maKhachHang;
    }

    public String getIdDiaDiem() {
        return idDiaDiem;
    }

    public void setIdDiaDiem(String idDiaDiem) {
        this.idDiaDiem = idDiaDiem;
    }

    public int getDiem() {
        return diem;
    }

    public void setDiem(int diem) {
        this.diem = diem;
    }

    public String getBinhLuan() {
        return binhLuan;
    }

    public void setBinhLuan(String binhLuan) {
        this.binhLuan = binhLuan;
    }

    public Date getNgayDanhGia() {
        return ngayDanhGia;
    }

    public void setNgayDanhGia(Date ngayDanhGia) {
        this.ngayDanhGia = ngayDanhGia;
    }
    
}
