/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package BillyBaihaqi_menudanreview;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author BILLY
 */
public class Koneksi {
    public static Connection getConnection() {
Connection connection = null;
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/billybaihaqi_menudanreview"; //ganti dengan database mu
String user = "root";
String password = "";
if (connection == null) {
try {
Class.forName(driver);
connection = DriverManager.getConnection(url, user, password);
} catch (ClassNotFoundException | SQLException error) {
System.exit(0);
}
}
return connection;
}
}