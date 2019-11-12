package cr.ac.ucr.eii.data;

import java.sql.Connection;
import java.util.List;

/**
 *
 * @author Mauricio Andrés Zamora Hernández
 * @param <T> Tipo de dato que extiende IDato
 * @see IDato
 */
public interface IDatoAdministrador<T extends IDato> {
    public T cargar(Integer id);
    public T cargar(Integer id, Connection conn);
    public boolean registrar(T dato);
    public boolean registrar(T dato, Connection conn);
    public boolean actualizar(T dato);
    public boolean actualizar(T dato, Connection conn);
    public boolean eliminar(T dato);
    public boolean eliminar(T dato, Connection conn);
    public List<T> listarTodos();
    public List<T> listarTodos(Connection conn);
    public String getNombreTabla();
}
