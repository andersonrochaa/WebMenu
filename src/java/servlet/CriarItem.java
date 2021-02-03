/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.ItemDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.ItemModel;

/**
 *
 * @author Alexandre
 */
public class CriarItem extends HttpServlet {

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
        try{
        HttpSession session = request.getSession(true);
        
        ItemDAO itdao = new ItemDAO();
        ItemModel it = new ItemModel();
        
        int idcategoria = Integer.parseInt(request.getParameter("keycategoria"));

        it.setNome(request.getParameter("nome"+idcategoria));
        it.setEstabelecimento_idestabelecimento((Integer) session.getAttribute("user_id"));
        it.setDescricao(request.getParameter("descricao"+idcategoria));
        it.setCategoria_idcategoria(idcategoria);
        String preco = request.getParameter("preco"+idcategoria);
        it.setPreco(Double.parseDouble(preco));
        itdao.cadastrar(it);
        request.getRequestDispatcher("cardapio.jsp").forward(request, response);
        }catch(Exception e){
        request.getRequestDispatcher("cardapio.jsp").forward(request, response);
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
