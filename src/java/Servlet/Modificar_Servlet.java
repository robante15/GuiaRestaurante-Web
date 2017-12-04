/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Factory.Factory;
import Procesos.BaseDatos;
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
@WebServlet(name = "Modificar_Servlet", urlPatterns = {"/Modificar_Servlet"})
public class Modificar_Servlet extends HttpServlet {
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
            out.println("<title>Servlet Modificar_Servlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Modificar_Servlet at " + request.getContextPath() + "</h1>");
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
        BaseDatos base = factory.baseDatos();
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
        
        System.out.print("TU MAMA SE LA COME TODA"+request.getParameter("IDForm"));
        int idMOD = Integer.parseInt(request.getParameter("IDForm")); 
        String nombre = request.getParameter("nombre");
        String tipoComida = request.getParameter("tipoComida");
        String direccion = request.getParameter("direccion");
        int telefono = Integer.parseInt(request.getParameter("numTel")); 
        String horarios = request.getParameter("horarios");
        String propietarios = request.getParameter("propietario");
        String coordenadas = request.getParameter("coordenadas");
        Double clasificacion = null;
        
        boolean exitoso = base.modificarRestaurante(idMOD, nombre, tipoComida, direccion, telefono, horarios, propietarios, coordenadas, clasificacion);
        
        if (exitoso == true){
            request.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();  
            out.println("<meta charset='UTF-8'>");
            out.println("<head>"
                        + "<title>Registro Exitoso</title>\n" +
                        "<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">"
                        + "</head>");
            out.println("<div align=\"center\">");
            out.println("<h1>Se ha actualizado correctamente a la base de Datos</br><hr></h1>");
            //out.println("<h1>ID: "+idMOD+"</h1>");
            out.println("<h1>Nombre: "+nombre+"</h1>");
            out.println("<h1>Tipo de Comida: "+tipoComida+"</h1>");
            out.println("<h1>Direccion: "+direccion+"</h1>");
            out.println("<h1>Telefono: "+telefono+"</h1>");
            out.println("<h1>Horarios: "+horarios+"</h1>");
            out.println("<h1>Propietarios: "+propietarios+"</h1>");
            out.println("<h1>Coordenadas: "+coordenadas+"</h1>");
            out.println("<a class=\"btn btn-primary btn-lg\" href=\"restaurantes.jsp\">Atras</a>");
            out.println("</div>");
        }else{
            //ex.printStackTrace();
            System.out.println("Error en el try2");
            request.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();  
            out.println("<meta charset='UTF-8'>");
            out.println("<head>"
                        + "<title>Error al modificar</title>\n" +
                        "<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">"
                        + "</head>");
                        out.println("<h1>Ocurrio un error al modificar la Base de Datos</h12>");
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
