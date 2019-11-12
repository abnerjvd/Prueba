package cr.ac.ucr.eii.data.role_elemento;

import cr.ac.ucr.eii.data.DatoAdministrador;
import cr.ac.ucr.eii.data.role.Role;
import cr.ac.ucr.eii.db.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mauricio Andrés Zamora Hernández
 */
public class RoleElementoAdministrador extends DatoAdministrador<RoleElemento> {

    @Override
    protected void cargarDatoDelResultSet(RoleElemento dato, ResultSet rs) throws Exception {
        dato.setNombre(rs.getString("nombre"));
    }

    @Override
    protected RoleElemento crearDato() {
        return new RoleElemento();
    }

    @Override
    protected String crearSQLCreacion() {
        return "insert into role (nombre) values (?)";
    }

    @Override
    protected void cargarParametrosSQLCreacion(PreparedStatement ps, RoleElemento dato) throws Exception {
        DBUtil.setString(ps, 1, dato.getNombre());
    }

    @Override
    protected String crearSQLActualizacion() {
        return "update role set nombre = ? where role_id = ?";
    }

    @Override
    protected void cargarParametrosSQLActualizacion(PreparedStatement ps, RoleElemento dato) throws Exception {
        DBUtil.setString(ps, 1, dato.getNombre());
        DBUtil.setInteger(ps, 2, dato.getId());
    }

    @Override
    public String getNombreTabla() {
        return "role_elemento";
    }
    
    public List<RoleElemento> buscar(String nombre) {
        Connection conn = DBUtil.crearConexion();
        List<RoleElemento> salida = buscar(conn, nombre);
        DBUtil.cerrar(conn);
        return salida;
    }

    public List<RoleElemento> buscar(Connection conn, String nombre) {
        List<RoleElemento> lista = new ArrayList<>();
        nombre = nombre != null ? nombre : "";
        String sql = "select * from " + getNombreTabla() + " where nombre like '%" + nombre + "%'";
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery(sql);
            String pk = getNombreCampoPK();
            while (rs.next()) {
                lista.add(cargar(rs.getInt(pk), conn));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            DBUtil.cerrar(rs);
            DBUtil.cerrar(ps);
        }
        return lista;
    }
}
