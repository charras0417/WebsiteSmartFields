/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author jonathan
 */
public class Conexion {

    private Connection con;

    public Connection getCon() {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/registro_proveedor", "root", "");
        } catch (Exception e) {
            System.out.println("Error" + e);
        }

        return con;
    }

}
