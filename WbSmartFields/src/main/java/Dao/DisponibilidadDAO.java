/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.Conexion;
import Controlador.Utils;
import Interfaz.Interfaz_disp;
import ModeloTienda.Disponibilidad;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author jonathan
 */
public class DisponibilidadDAO implements Interfaz_disp {

    private Connection con;
    private Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    Disponibilidad dis = new Disponibilidad();

    public void createDisponibilidad(String l) {

        Disponibilidad p = (Disponibilidad) Utils.fromJson(l, Disponibilidad.class);

        String sql = "insert into disponibilidad(dia, hora)values('" + p.getDia() + "','" + p.getHora() + "')";
        try {
            con = cn.getCon();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Disponibilidad getDisponibilidad() {
        Disponibilidad disp = new Disponibilidad();
        String sql = "select * from disponibilidad";
        try {
            con = cn.getCon();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                disp.setId(rs.getInt("Id"));
                disp.setDia(rs.getString("Dia"));
                disp.setHora(rs.getString("Hora"));
            }
        } catch (Exception e) {
        }
        return disp;
    
}
}
