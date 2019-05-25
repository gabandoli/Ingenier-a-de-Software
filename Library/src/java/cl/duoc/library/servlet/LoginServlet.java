/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.duoc.library.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author gabriel
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        req.getRequestDispatcher("/WEB-INF/jsp/public/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        String usuario = req.getParameter("inputUser");
        String clave = req.getParameter("inputPass");
        String vista = "/WEB-INF/jsp/public/index.jsp";
        
        if ("admin".equals(usuario) && "admin".equals(clave)) {
            
            HttpSession session = req.getSession();
            session.setAttribute("usuario", "Administrador");  
            session.setAttribute("autenticado", true);
            
        } else {
            
            req.setAttribute("error", "El usuario: " + usuario + " no se encuentra en el sistema");
            
        }
        resp.sendRedirect("login");
    }

}
