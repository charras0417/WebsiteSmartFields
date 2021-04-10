/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Conexion.Conexion;
import ModeloTienda.Interfaz;
import ModeloTienda.Proveedor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jonathan
 */
public class ProveedorDAO implements Interfaz {

    private static ProveedorDAO instancia;
    private Connection con;
    private Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    Proveedor prov = new Proveedor();
    

    @Override
    public List Listar() {
        ArrayList<Proveedor> List = new ArrayList<>();
        String sql = "select * from proveedor";
        try {
            con = cn.getCon();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Proveedor prov = new Proveedor();

                prov.setId(rs.getInt("Id"));
                prov.setNameProv(rs.getString("NombreProveedor"));
                prov.setPhoneProv(rs.getString("TelefonoProveedor"));
                prov.setEmailProv(rs.getString("CorreoProveedor"));
                prov.setNameEmp(rs.getString("NombreEmpresa"));
                prov.setPhoneEmp(rs.getString("TelefonoEmpresa"));
                prov.setEmailEmp(rs.getString("CorreoEmpresa"));
                List.add(prov);
            }
        } catch (Exception e) {
        }
        return List;
    }

    @Override
    public Proveedor List(int id) {
        String sql = "select * from proveedor where Id=" + id;
        try {
            con = cn.getCon();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                prov.setId(rs.getInt("Id"));
                prov.setNameProv(rs.getString("NombreProveedor"));
                prov.setPhoneProv(rs.getString("TelefonoProveedor"));
                prov.setEmailProv(rs.getString("CorreoProveedor"));
                prov.setNameEmp(rs.getString("NombreEmpresa"));
                prov.setPhoneEmp(rs.getString("TelefonoEmpresa"));
                prov.setEmailEmp(rs.getString("CorreoEmpresa"));

            }
        } catch (Exception e) {
        }
        return prov;
    }

    @Override
    public boolean add(Proveedor prov) {
        String sql = "insert into proveedor(NombreProveedor, TelefonoProveedor, CorreoProveedor, NombreEmpresa, TelefonoEmpresa, CorreoEmpresa)values('" + prov.getNameProv() + "','" + prov.getPhoneProv() + "','" + prov.getEmailProv() + "','" + prov.getNameEmp() + "','" + prov.getPhoneEmp() + "','" + prov.getEmailEmp() + "')";
        try {
            con = cn.getCon();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Proveedor prov) {
        String sql = "update proveedor set NombreProveedor='" + prov.getNameProv() + "',TelefonoProveedor='" + prov.getPhoneProv() + "',CorreoProveedor='" + prov.getEmailProv() + "',NombreEmpresa='" + prov.getNameEmp() + "',TelefonoEmpresa='" + prov.getPhoneEmp() + "',CorreoEmpresa='" + prov.getEmailEmp() + "'where Id=" + prov.getId();
        try {
            con = cn.getCon();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean Eliminar(int id) {
        String sql = "delete from proveedor where Id=" + id;
        try {
            con = cn.getCon();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    
    public static ProveedorDAO getInstancia(){
        if (instancia==null) {
            instancia=new ProveedorDAO();
        }
        return instancia;
    }

private ProveedorDAO(){
}
}
