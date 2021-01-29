/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.EstabelecimentoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.EstabelecimentoModel;

/**
 *
 * @author Alexandre
 */
public class UpdateEstabelecimento extends HttpServlet {

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
            EstabelecimentoModel est = new EstabelecimentoModel(); //getServletContext().getRequestDispatcher("/views/error.jsp").include(request, response);
            EstabelecimentoDAO estdao = new EstabelecimentoDAO();

            int idestabelecimento = (Integer) session.getAttribute("user_id");
            est.setIdestabelecimento(idestabelecimento);

            est.setNome(request.getParameter("nome"));
            est.setEmail(request.getParameter("email"));
            est.setDescricao(request.getParameter("descricao"));
            est.setTelefone(request.getParameter("telefone"));

            boolean update = estdao.updateEstabelecimento(est);
            String text = "";
            if (update) {
                session.setAttribute("user_name", est.getNome());
                session.setAttribute("user_imagem", est.getImagem());
                text = "Alterações realizadas com sucesso!";
            } else {
                text = "Falha ao tentar realizar as alterações";
            }
            request.setAttribute("status", text);
            request.getRequestDispatcher("estabelecimento").forward(request, response);
        }catch(Exception e){
            response.sendRedirect("index.jsp");
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
