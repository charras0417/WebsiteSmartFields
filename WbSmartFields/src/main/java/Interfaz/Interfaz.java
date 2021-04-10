/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloTienda;

import java.util.List;

/**
 *
 * @author jonathan
 */
public interface Interfaz {
    
    /*metodos que realizara nuestra aplicacion.*/
    
    public List Listar();
    public Proveedor List(int id);
    public boolean add(Proveedor prov);
    public boolean edit(Proveedor prov);
    public boolean Eliminar(int id);
}

