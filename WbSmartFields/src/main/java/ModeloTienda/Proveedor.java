/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloTienda;

/**
 *
 * @author jonathan
 */
public class Proveedor {
    
    private int id;
    private String nameProv;
    private String phoneProv;
    private String emailProv;
    private String nameEmp;
    private String phoneEmp;
    private String emailEmp;
    
    public Proveedor() {
    }

    public Proveedor( String nameProv, String phoneProv, String emailProv, String nameEmp, String phoneEmp, String emailEmp) {
        
        this.nameProv = nameProv;
        this.phoneProv = phoneProv;
        this.emailProv = emailProv;
        this.nameEmp = nameEmp;
        this.phoneEmp = phoneEmp;
        this.emailEmp = emailEmp;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    
    public String getNameProv() {
        return nameProv;
    }

    public void setNameProv(String nameProv) {
        this.nameProv = nameProv;
    }

    public String getPhoneProv() {
        return phoneProv;
    }

    public void setPhoneProv(String phoneProv) {
        this.phoneProv = phoneProv;
    }

    public String getEmailProv() {
        return emailProv;
    }

    public void setEmailProv(String emailProv) {
        this.emailProv = emailProv;
    }

    public String getNameEmp() {
        return nameEmp;
    }

    public void setNameEmp(String nameEmp) {
        this.nameEmp = nameEmp;
    }

    public String getPhoneEmp() {
        return phoneEmp;
    }

    public void setPhoneEmp(String phoneEmp) {
        this.phoneEmp = phoneEmp;
    }

    public String getEmailEmp() {
        return emailEmp;
    }

    public void setEmailEmp(String emailEmp) {
        this.emailEmp = emailEmp;
    }
    
}
