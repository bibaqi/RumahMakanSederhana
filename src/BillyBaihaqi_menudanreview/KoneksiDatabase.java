/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package BillyBaihaqi_menudanreview;
import java.sql.*;
/**
 *
 * @author BILLY
 */
public class KoneksiDatabase {
    private static Connection koneksi;
    public static Connection getKoneksi(){
    if (koneksi == null){
    try {String url = "jdbc:mysql://localhost:3306/billybaihaqi_menudanreview"; // nama databasenya login
          String user="root"; // username mysql root
          String pass=""; //passwordnya kosong

 DriverManager.registerDriver(new com.mysql.jdbc.Driver());
koneksi = DriverManager.getConnection(url , user, pass);

 } 
    catch(SQLException t){
     System.out.print("Gagal melakukan koneksi ke database");
 }
}

return koneksi;
}
}
