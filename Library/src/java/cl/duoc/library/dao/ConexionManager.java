package cl.duoc.library.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConexionManager {
    private static ConexionManager INSTANCIA = null;
    private final String usuario="root";
    private final String clave="root";
    private final String url="jdbc:mysql://localhost:3306/Library";
    private Connection connection;
    
    private ConexionManager() {        
    }
    
    public static synchronized ConexionManager getInstance() {
        if(INSTANCIA == null) {
            INSTANCIA = new ConexionManager();
        }
        
        return INSTANCIA;
    }
    
    public Connection getConexion() {
        try {            
            
            if(this.connection != null && !this.connection.isClosed()) {
                System.out.println("DEBUG: Conexión abierta");                        
            } else {
                System.out.println("DEBUG: Conexión cerrada, se procede a abrir una nueva conexión"); 
                this.connection = DriverManager.getConnection(url, usuario, clave);
            }
                                    
        } catch(SQLException e) {
            System.err.println("No se pudo establecer la conexion con la bd");
            e.printStackTrace();
        }
        
        return this.connection;
    }
}
