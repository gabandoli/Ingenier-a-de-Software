/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.duoc.library.servlet;

import cl.duoc.library.dao.ConexionManager;
import cl.duoc.library.dao.EmpleadoDAO;
import cl.duoc.library.dao.impl.EmpleadoDAOJdbcImpl;
import cl.duoc.library.model.Empleado;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gabriel
 */
public class AgregarEmpleadoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/jsp/private/agregarEmpleado.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Empleado empleado = new Empleado();
        Connection connection = ConexionManager.getInstance().getConexion();
        EmpleadoDAO dao = new EmpleadoDAOJdbcImpl(connection);
        
        
        empleado.setRun(req.getParameter("txtRun"));
        empleado.setEmail(req.getParameter("txtEmail"));
        empleado.setNombres(req.getParameter("txtNombres"));
        empleado.setApellidoPaterno(req.getParameter("txtAPaterno"));
        empleado.setApellidoMaterno(req.getParameter("txtAMaterno"));
        empleado.setTelefono(Integer.parseInt(req.getParameter("txtTelefono")));
        empleado.setFechaNacimiento(Date.valueOf(req.getParameter("txtDate")));
        empleado.setTipo(req.getParameter("txtTipo"));
        empleado.setPass(req.getParameter("txtPass"));
        
        dao.agregar(empleado);

    }
}