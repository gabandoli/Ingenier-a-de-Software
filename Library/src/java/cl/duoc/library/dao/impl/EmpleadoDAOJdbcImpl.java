/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.duoc.library.dao.impl;
import cl.duoc.library.dao.ConexionManager;
import cl.duoc.library.dao.EmpleadoDAO;
import cl.duoc.library.model.Empleado;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
        
        String querySQL = ""
                + "INSERT INTO empleado("
                + "run, \n"
                + "email, \n"
                + "nombres, \n"
                + "apellido_paterno, \n"
                + "apellido_materno, \n"
                + "telefono, \n"
                + "fecha_nacimiento, \n"
                + "tipo, \n"
                + "pass) "
                + "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try {

            Connection connection = ConexionManager.getInstance().getConexion();
            PreparedStatement preparedStatement;
            preparedStatement = connection.prepareStatement(querySQL);
            
            preparedStatement.setString (1, elemento.getRun());
            preparedStatement.setString (2, elemento.getEmail());
            preparedStatement.setString (3, elemento.getNombres());
            preparedStatement.setString (4, elemento.getApellidoPaterno());
            preparedStatement.setString (4, elemento.getApellidoMaterno());
            preparedStatement.setInt    (5, elemento.getTelefono());
            preparedStatement.setDate   (6, elemento.getFechaNacimiento());
            preparedStatement.setString (7, elemento.getTipo());
            preparedStatement.setString (8, elemento.getPass());
            
            preparedStatement.execute();
            preparedStatement.close();
            return true;
        } catch (Exception e) {
            
            e.printStackTrace();
        }
        return false;
        
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
