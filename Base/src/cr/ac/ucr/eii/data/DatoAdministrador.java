package cr.ac.ucr.eii.data;

import cr.ac.ucr.eii.db.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mauricio Andrés Zamora Hernández
 * @param <T>
 */
public abstract class DatoAdministrador<T extends IDato> implements IDatoAdministrador<T> {

    @Override
    public T cargar(Integer id) {
        Connection conn = DBUtil.crearConexion();
        T salida = cargar(id, conn);
        DBUtil.cerrar(conn);
        return salida;
    }

    protected abstract void cargarDatoDelResultSet(T dato, ResultSet rs) throws Exception;

    protected abstract T crearDato();

    protected String getNombreCampoPK() {
        return getNombreTabla() + "_id";
    }

    protected String crearSQLCargar(Integer id) {
        return "select * from " + getNombreTabla() + " where " + getNombreCampoPK() + " = " + id;
    }

    @Override
    public T cargar(Integer id, Connection conn) {
        T salida = crearDato();
        PreparedStatement ps = null;
        ResultSet rs = null;
        if (id == null) {
            return null;
        }
        String sql = crearSQLCargar(id);
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery(sql);
            if (rs.next()) {
                salida.setId(id);
                cargarDatoDelResultSet(salida, rs);
            }
        } catch (Exception e) {

        } finally {
            DBUtil.cerrar(rs);
            DBUtil.cerrar(ps);
        }
        return salida;
    }

    protected abstract String crearSQLCreacion();

    protected abstract void cargarParametrosSQLCreacion(PreparedStatement ps, T dato) throws Exception;

    @Override
    public boolean registrar(T dato) {
        Connection conn = DBUtil.crearConexion();
        boolean salida = registrar(dato, conn);
        DBUtil.cerrar(conn);
        return salida;
    }

    @Override
    public boolean registrar(T dato, Connection conn) {
        boolean salida = false;
        Integer id = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = conn.prepareStatement(crearSQLCreacion(), Statement.RETURN_GENERATED_KEYS);
            cargarParametrosSQLCreacion(ps, dato);
            int r = ps.executeUpdate();
            rs = ps.getGeneratedKeys();
            if (rs.next()) {
                id = rs.getInt(1);
                dato.setId(id);
                salida = true;
            }
        } catch (Exception e) {
            String msg = e.getMessage();
            System.out.println(msg);
        } finally {
            DBUtil.cerrar(rs);
            DBUtil.cerrar(ps);
        }
        return salida;
    }

    protected abstract String crearSQLActualizacion();

    protected abstract void cargarParametrosSQLActualizacion(PreparedStatement ps, T dato) throws Exception;

    @Override
    public boolean actualizar(T dato) {
        Connection conn = DBUtil.crearConexion();
        boolean salida = actualizar(dato, conn);
        DBUtil.cerrar(conn);
        return salida;
    }

    @Override
    public boolean actualizar(T dato, Connection conn) {
        boolean salida = false;
        Integer id = null;
        PreparedStatement ps = null;

        try {
            ps = conn.prepareStatement(crearSQLActualizacion());
            cargarParametrosSQLActualizacion(ps, dato);
            int r = ps.executeUpdate();
            salida = r > 0;
        } catch (Exception e) {

        } finally {
            DBUtil.cerrar(ps);
            DBUtil.cerrar(conn);
        }
        return salida;
    }

    @Override
    public boolean eliminar(T dato) {
        Connection conn = DBUtil.crearConexion();
        boolean salida = eliminar(dato, conn);
        DBUtil.cerrar(conn);
        return salida;
    }

    protected String crearSQLEliminar(Integer id) {
        return "delete from " + getNombreTabla() + " where " + getNombreCampoPK() + " = " + id;
    }

    @Override
    public boolean eliminar(T dato, Connection conn) {
        boolean salida = false;

        PreparedStatement ps = null;

        if (dato == null) {
            return false;
        }
        String sql = crearSQLEliminar(dato.getId());
        try {
            ps = conn.prepareStatement(sql);
            int r = ps.executeUpdate();
            salida = r > 0;
        } catch (Exception e) {

        } finally {

            DBUtil.cerrar(ps);
        }
        return salida;
    }

    @Override
    public List<T> listarTodos() {
        Connection conn = DBUtil.crearConexion();
        List<T> salida = listarTodos(conn);
        DBUtil.cerrar(conn);
        return salida;
    }

    @Override
    public List<T> listarTodos(Connection conn) {
        List<T> lista = new ArrayList<>();
        String sql = "select * from " + getNombreTabla();
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery(sql);
            String pk = getNombreCampoPK();
            while (rs.next()) {
                lista.add(cargar(rs.getInt(pk), conn));
            }
        } catch (Exception e) {

        } finally {
            DBUtil.cerrar(rs);
            DBUtil.cerrar(ps);
        }
        return lista;
    }

}
