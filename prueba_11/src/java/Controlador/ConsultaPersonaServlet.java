/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Usuario
 */
@WebServlet(name = "ConsultaPersonaServlet", urlPatterns = {"/ConsultaPersonaServlet"})
public class ConsultaPersonaServlet extends HttpServlet {

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
        //Obtenemos de la url (queryString el Id de la persona, vacio para consultarlos todos)
        String idpersona = request.getParameter("IdPersona");
        
        //validamos si se encuentra vacio para asignarle por defecto -1
        // si se devuelve un valor vacio osea que la casilla de busqueda estaba vacia idpersona va ser -1
        //y devolvere todos los datos existentes de dicha tabla como es en caso la clase Persona
        if(idpersona.length() == 0){
            idpersona = "-1";
        }
        //instaciamos la clase Operaciones que finalmente tiene el acceso a datos
       Operaciones oper = new Operaciones();
            
        List<Telefonos> resultado = oper.getPersonas(idpersona);
        
        
        //Se retorna el resultado de la consulta a la pagina jsp para visualizarlo
        request.setAttribute("resultado", resultado);
        //El nombre de la pagina debe ser la quieres que se vizualize ejm: nombre.jsp
        request.getRequestDispatcher("ConsultarPersonas.jsp").forward(request, response);
        
        
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
