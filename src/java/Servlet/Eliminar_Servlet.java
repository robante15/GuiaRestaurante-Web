/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Entidades.*;
import Factory.Factory;
import Procesos.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author roban
 */
@WebServlet(name = "Eliminar_Servlet", urlPatterns = {"/Eliminar_Servlet"})
public class Eliminar_Servlet extends HttpServlet {
    private static Factory factory;
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            /*out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Eliminar_Servlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Eliminar_Servlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");*/
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        factory = new Factory();
        int id = 0;
        id = Integer.parseInt(request.getParameter("ID"));
        BaseDatos base = factory.baseDatos();
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        Restaurante restorantEliminado = base.restauranteByID(id);
        System.out.print(restorantEliminado.getNombre());
        boolean exitoso = base.eliminarRestaurante(id);
        
        if(exitoso==true){
            
            request.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();  
            out.println("<meta charset='UTF-8'>");
            out.println("<head>"
                        + "<title>Registro Exitoso</title>\n" +
                        "<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">"
                        + "</head>");
            out.println("<div align=\"center\">");
            out.println("<h1>Se ha eliminado correctamente el siguiente registro</br><hr></h1>");
            out.println("<h1>ID: "+restorantEliminado.getId()+"</h1>");
            out.println("<h1>Nombre: "+restorantEliminado.getNombre()+"</h1>");
            out.println("<h1>Tipo de Comida: "+restorantEliminado.getTipoComida()+"</h1>");
            out.println("<h1>Direccion: "+restorantEliminado.getDireccion()+"</h1>");
            out.println("<h1>Telefono: "+restorantEliminado.getTelefono()+"</h1>");
            out.println("<h1>Horarios: "+restorantEliminado.getHorarios()+"</h1>");
            out.println("<h1>Propietarios: "+restorantEliminado.getPropietarios()+"</h1>");
            out.println("<h1>Coordenadas: "+restorantEliminado.getCoordenadas()+"</h1>");
            out.println("<a class=\"btn btn-success btn-lg\" href=\"restaurantes.jsp\">Atras</a>");
            out.println("</div>");
            
        }else{
            System.out.println("Error en el try2");
            request.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();  
            out.println("<meta charset='UTF-8'>");
            out.println("<head>"
                        + "<title>Clase Programacion III</title>\n" +
                        "<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">"
                        + "</head>");
                        out.println("<h1>Ocurrio un error al eliminar de la Base de Datos</h12>");
                        out.println("<a class=\"btn btn-warning btn-lg\" href=\"restaurantes.jsp\">Atras</a>");
        }
        
        processRequest(request, response);
    }

    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
