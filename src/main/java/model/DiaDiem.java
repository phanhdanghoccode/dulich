/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author phat
 */
public class DiaDiem {
    private String ID;
    private String name;
    private int giaTour;
    private String  thoiGianDienRa;
    private float thoiLuong;
    private String diaDiem;
    private String linkGGmap;
    private String img1;
    private String img2;
    private String img3;
    
    private String diadiem1;
    private String img_dd1;
    private String mota_dd1;
    
    private String diadiem2;
    private String img_dd2;
    private String mota_dd2;
    
    private String diadiem3;
    private String img_dd3;
    private String mota_dd3;
    
    private String diadiem4;
    private String img_dd4;
    private String mota_dd4;

    public DiaDiem(String ID, String name, int giaTour, String thoiGianDienRa, float thoiLuong, String diaDiem, String linkGGmap, String img1, String img2, String img3, String diadiem1, String img_dd1, String mota_dd1, String diadiem2, String img_dd2, String mota_dd2, String diadiem3, String img_dd3, String mota_dd3, String diadiem4, String img_dd4, String mota_dd4) {
        this.ID = ID;
        this.name = name;
        this.giaTour = giaTour;
        this.thoiGianDienRa = thoiGianDienRa;
        this.thoiLuong = thoiLuong;
        this.diaDiem = diaDiem;
        this.linkGGmap = linkGGmap;
        this.img1 = img1;
        this.img2 = img2;
        this.img3 = img3;
        this.diadiem1 = diadiem1;
        this.img_dd1 = img_dd1;
        this.mota_dd1 = mota_dd1;
        this.diadiem2 = diadiem2;
        this.img_dd2 = img_dd2;
        this.mota_dd2 = mota_dd2;
        this.diadiem3 = diadiem3;
        this.img_dd3 = img_dd3;
        this.mota_dd3 = mota_dd3;
        this.diadiem4 = diadiem4;
        this.img_dd4 = img_dd4;
        this.mota_dd4 = mota_dd4;
    }
    

    

   

    
    public DiaDiem(String ID, String name, int giaTour, String thoiGianDienRa, float thoiLuong, String diaDiem, String linkGGmap, String img1, String img2, String img3) {
        this.ID = ID;
        this.name = name;
        this.giaTour = giaTour;
        this.thoiGianDienRa = thoiGianDienRa;
        this.thoiLuong = thoiLuong;
        this.diaDiem = diaDiem;
        this.linkGGmap = linkGGmap;
        this.img1 = img1;
        this.img2 = img2;
        this.img3 = img3;
    }
    

    public DiaDiem(String ID) {
        this.ID = ID;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getGiaTour() {
        return giaTour;
    }

    public void setGiaTour(int giaTour) {
        this.giaTour = giaTour;
    }

    public String getThoiGianDienRa() {
        return thoiGianDienRa;
    }

    public void setThoiGianDienRa(String thoiGianDienRa) {
        this.thoiGianDienRa = thoiGianDienRa;
    }

    public float getThoiLuong() {
        return thoiLuong;
    }

    public void setThoiLuong(float thoiLuong) {
        this.thoiLuong = thoiLuong;
    }

    public String getDiaDiem() {
        return diaDiem;
    }

    public void setDiaDiem(String diaDiem) {
        this.diaDiem = diaDiem;
    }

    public String getLinkGGmap() {
        return linkGGmap;
    }

    public void setLinkGGmap(String linkGGmap) {
        this.linkGGmap = linkGGmap;
    }

    
    public String getImg1() {
        return img1;
    }

    public void setImg1(String img1) {
        this.img1 = img1;
    }

    public String getImg2() {
        return img2;
    }

    public void setImg2(String img2) {
        this.img2 = img2;
    }

    public String getImg3() {
        return img3;
    }

    public void setImg3(String img3) {
        this.img3 = img3;
    }

    public String getDiadiem1() {
        return diadiem1;
    }

    public void setDiadiem1(String diadiem1) {
        this.diadiem1 = diadiem1;
    }

    public String getImg_dd1() {
        return img_dd1;
    }

    public void setImg_dd1(String img_dd1) {
        this.img_dd1 = img_dd1;
    }

    public String getMota_dd1() {
        return mota_dd1;
    }

    public void setMota_dd1(String mota_dd1) {
        this.mota_dd1 = mota_dd1;
    }

    public String getDiadiem2() {
        return diadiem2;
    }

    public void setDiadiem2(String diadiem2) {
        this.diadiem2 = diadiem2;
    }

    public String getImg_dd2() {
        return img_dd2;
    }

    public void setImg_dd2(String img_dd2) {
        this.img_dd2 = img_dd2;
    }

    public String getMota_dd2() {
        return mota_dd2;
    }

    public void setMota_dd2(String mota_dd2) {
        this.mota_dd2 = mota_dd2;
    }

    public String getDiadiem3() {
        return diadiem3;
    }

    public void setDiadiem3(String diadiem3) {
        this.diadiem3 = diadiem3;
    }

    public String getImg_dd3() {
        return img_dd3;
    }

    public void setImg_dd3(String img_dd3) {
        this.img_dd3 = img_dd3;
    }

    public String getMota_dd3() {
        return mota_dd3;
    }

    public void setMota_dd3(String mota_dd3) {
        this.mota_dd3 = mota_dd3;
    }

    public String getDiadiem4() {
        return diadiem4;
    }

    public void setDiadiem4(String diadiem4) {
        this.diadiem4 = diadiem4;
    }

    public String getImg_dd4() {
        return img_dd4;
    }

    public void setImg_dd4(String img_dd4) {
        this.img_dd4 = img_dd4;
    }

    public String getMota_dd4() {
        return mota_dd4;
    }

    public void setMota_dd4(String mota_dd4) {
        this.mota_dd4 = mota_dd4;
    }
    
}
