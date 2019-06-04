/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.duoc.library.dao.impl;
import cl.duoc.library.dao.EmpleadoDAO;
import cl.duoc.library.model.Empleado;
import java.sql.Connection;
import java.util.List;

/**
 *
 * @author gabriel
 */
public class EmpleadoDAOJdbcImpl implements EmpleadoDAO{
    
    private Connection connection;

    public EmpleadoDAOJdbcImpl(Connection connection) {
        this.connection = connection;
    }

    @Override
    public boolean agregar(Empleado elemento) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean actualizar(Empleado elemento) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(Empleado elemento) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Empleado buscar(Empleado elemento) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Empleado> listarTodos() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
