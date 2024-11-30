//co sua
package database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.DiaDiem;



public class DAODiaDiem implements DAOInterface<DiaDiem> {



	
	public DiaDiem selectById(DiaDiem t) {

		DiaDiem ketQua = null;
		try {
			Connection con = JDBCUtil.getConnection();

			String sql = "SELECT * FROM diadiem WHERE ID=?";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, t.getID());

			ResultSet rs = st.executeQuery();
			while (rs.next()) {
                            String id= rs.getString("ID");
				String name= rs.getString("name");
                                int giaTour= rs.getInt("giatour");
                                String thoiGian= rs.getString("thoigian");
                                float thoiLuong= rs.getFloat("thoiluong");
                                String diaDiem= rs.getString("diadiem");
                                String linkggMap=rs.getString("linkggmap");
                                String img= rs.getString("img");
                                String img2= rs.getString("img2");
                                String img3= rs.getString("img3");
                                

				ketQua = new DiaDiem(id, name, giaTour, thoiGian, thoiLuong, diaDiem, linkggMap, img, img2, img3);
				break;
			}

			JDBCUtil.closeConnection(con);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ketQua;
	}




	

    @Override
    public ArrayList<DiaDiem> selectAll() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int insert(DiaDiem t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int insertAll(ArrayList<DiaDiem> arr) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int delete(DiaDiem t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int deleteAll(ArrayList<DiaDiem> arr) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int update(DiaDiem t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}