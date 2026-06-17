/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author ardia
 */
public class Koneksi {
    private static Connection conn;

    public static Connection getConnection() {

        try {

            if(conn == null){

                String url =
                "jdbc:mysql://localhost:3306/db_restoran_231011402414";

                String user = "root";
                String pass = "";

                conn =
                DriverManager.getConnection(url,user,pass);

                System.out.println("Koneksi Berhasil");
            }

        } catch(Exception e){

            System.out.println(e);
        }

        return conn;
    }
}


