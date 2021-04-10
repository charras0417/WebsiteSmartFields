/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Dao.DisponibilidadDAO;
import Dao.ProveedorDAO;
import ModeloTienda.Proveedor;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USUARIO
 */
@WebServlet("/ProveedorServlet")
public class ProveedorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    String listar = "Vista/listar.jsp";
    String add = "Vista/add.jsp";
    String edit = "Vista/Editar.jsp";
    Proveedor prov = new Proveedor();
    ProveedorDAO dao = ProveedorDAO.getInstancia();
    int id;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controlador</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        

        String acceso = "";
        String action = request.getParameter("accion");

        if (action.equalsIgnoreCase("Editar")) {
            request.setAttribute("idprov", request.getParameter("id"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Eliminar")) {
            id = Integer.parseInt(request.getParameter("id"));
            prov.setId(id);
            dao.Eliminar(id);
            acceso = listar;

        }else if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        } else if (action.equalsIgnoreCase("Insertar Proveedor")) {
            acceso = add;
        } else if (action.equalsIgnoreCase("Registrar Proveedor")) {

            String nomP = request.getParameter("txtnomProv");
            String telP = request.getParameter("txtTelProv");
            String correoP = request.getParameter("txtCorreoProv");
            String nomEm = request.getParameter("txtnomEmp");
            String telEm = request.getParameter("txtTelEmp");
            String correoEm = request.getParameter("txtCorreoEmp");

            prov.setNameProv(nomP);
            prov.setPhoneProv(telP);
            prov.setEmailProv(correoP);
            prov.setNameEmp(nomEm);
            prov.setPhoneEmp(telEm);
            prov.setEmailEmp(correoEm);

            dao.add(prov);
            acceso = listar;
        }  else if (action.equalsIgnoreCase("Modificar")) {
            id = Integer.parseInt(request.getParameter("txtid"));
            String nomP = request.getParameter("txtnomProvM");
            String telP = request.getParameter("txtTelProvM");
            String correoP = request.getParameter("txtCorreoProvM");
            String nomEm = request.getParameter("txtnomEmpM");
            String telEm = request.getParameter("txtTelEmpM");
            String correoEm = request.getParameter("txtCorreoEmpM");
            prov.setId(id);
            prov.setNameProv(nomP);
            prov.setPhoneProv(telP);
            prov.setEmailProv(correoP);
            prov.setNameEmp(nomEm);
            prov.setPhoneEmp(telEm);
            prov.setEmailEmp(correoEm);
            dao.edit(prov);
            acceso = listar;

        }
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");                
        ProveedorDAO dao= ProveedorDAO.getInstancia() ;
        out.println(Utils.toJson(dao.Listar()));  

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

    
}
