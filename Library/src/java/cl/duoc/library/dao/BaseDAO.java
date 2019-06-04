package cl.duoc.library.dao;

import java.util.List;


public interface BaseDAO<T> {
    
    boolean agregar(T elemento);
    
    boolean actualizar(T elemento);
    
    boolean eliminar(T elemento);
    
    T buscar(T elemento);
    
    /**
     * Método encargado de listar todos los registros del tipo en el repositorio
     * 
     * @return java.util.List con todos los registros encontrados.
     */
    List<T> listarTodos();
    
}
