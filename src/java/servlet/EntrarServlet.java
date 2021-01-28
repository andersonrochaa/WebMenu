/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import dao.EstabelecimentoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Estabelecimento;

/**
 *
 * @author Alexandre
 */
public class EntrarServlet extends HttpServlet {

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
        String text = null;
        try {
            Estabelecimento est = new Estabelecimento();
            EstabelecimentoDAO estdao = new EstabelecimentoDAO();

            est.setEmail(request.getParameter("email").toLowerCase());
            est.setSenha(request.getParameter("senha"));

            if (estdao.validarSessao(est)) {

                HttpSession session = request.getSession(true);
                int idest = est.getIdestabelecimento();
                session.setAttribute("user_id", Integer.valueOf(idest));

                est = estdao.listarEstabelecimentoId(idest);

                session.setAttribute("user_name", est.getNome());
                session.setAttribute("user_image", est.getImagem());

                //Cookie user_id = new Cookie("test", "LOGADO");
                //response.addCookie(user_id);
                text = "<script type='text/javascript'> alert('LOGADO " + est.getNome() + "')</script>";

            } else {
                text = "<script type='text/javascript'> alert('INVALIDO')</script>";

            }

        } catch (SQLException ex) {
            Logger.getLogger(EntrarServlet.class.getName()).log(Level.SEVERE, null, ex);
            //getServletContext().getRequestDispatcher("/views/error.jsp").include(request, response);
        }
        //request.setAttribute("registrar_msg", text);
        //request.getRequestDispatcher("dashboard\\dashboard.html").forward(request, response);
        response.sendRedirect("cardapio.jsp");

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
