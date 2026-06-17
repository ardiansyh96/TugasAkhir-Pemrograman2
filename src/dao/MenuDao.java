/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import config.Koneksi;
import java.sql.PreparedStatement;

/**
 *
 * @author ardia
 */
public class MenuDao {
    public void simpan(
        String kode,
        String nama,
        String kategori,
        double harga,
        int jumlah,
        String status
    ){

        try{

            String sql =
            "INSERT INTO menu_restoran VALUES(?,?,?,?,?,?)";

            PreparedStatement ps =
            Koneksi.getConnection().prepareStatement(sql);

            ps.setString(1,kode);
            ps.setString(2,nama);
            ps.setString(3,kategori);
            ps.setDouble(4,harga);
            ps.setInt(5,jumlah);
            ps.setString(6,status);

            ps.executeUpdate();

        }catch(Exception e){

            System.out.println(e);

        }

    }
    
    public void ubah(
        String kode,
        String nama,
        String kategori,
        double harga,
        int jumlah,
        String status){

        try{

            String sql =
            "UPDATE menu_restoran SET " +
            "nama_menu=?,kategori=?,harga=?,jumlah=?,status_menu=? " +
            "WHERE kode_menu=?";

            PreparedStatement ps =
            Koneksi.getConnection().prepareStatement(sql);

            ps.setString(1,nama);
            ps.setString(2,kategori);
            ps.setDouble(3,harga);
            ps.setInt(4,jumlah);
            ps.setString(5,status);
            ps.setString(6,kode);

            ps.executeUpdate();

        }catch(Exception e){

            System.out.println(e);

        }

}
    public void hapus(String kode){
        try{

            String sql =
            "DELETE FROM menu_restoran WHERE kode_menu=?";

            PreparedStatement ps =
            Koneksi.getConnection().prepareStatement(sql);

            ps.setString(1,kode);

            ps.executeUpdate();

        }catch(Exception e){

            System.out.println(e);

        }
    }

}


