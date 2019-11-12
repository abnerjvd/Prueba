package cr.ac.ucr.eii.data.usuario_role;

import cr.ac.ucr.eii.data.DatoAdministrador;
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
public class UsuarioRoleAdministrador extends DatoAdministrador<UsuarioRole> {

    @Override
    protected void cargarDatoDelResultSet(UsuarioRole dato, ResultSet rs) throws Exception {
        dato.setRoleId(rs.getInt("role_id"));
        dato.setUsuarioId(rs.getInt("usuario_id"));
    }

    @Override
    protected UsuarioRole crearDato() {
        return new UsuarioRole();
    }

    @Override
    protected String crearSQLCreacion() {
        return "insert into usuario_role (role_id, usuario_id) values (?,?)";
    }

    @Override
    protected void cargarParametrosSQLCreacion(PreparedStatement ps, UsuarioRole dato) throws Exception {
        DBUtil.setInteger(ps, 1, dato.getRoleId());
        DBUtil.setInteger(ps, 2, dato.getUsuarioId());
    }

    @Override
    protected String crearSQLActualizacion() {
        return "update usuario_role set role_id = ?, usuario_id = ? where usuario_role_id = ?";
    }

    @Override
    protected void cargarParametrosSQLActualizacion(PreparedStatement ps, UsuarioRole dato) throws Exception {
        DBUtil.setInteger(ps, 1, dato.getRoleId());
        DBUtil.setInteger(ps, 2, dato.getUsuarioId());
    }

    @Override
    public String getNombreTabla() {
        return "usuario_role";
    }
    
    public List<UsuarioRole> buscar(Integer roleId, Integer usuarioId) {
        Connection conn = DBUtil.crearConexion();
        List<UsuarioRole> salida = buscar(conn, roleId, usuarioId);
        DBUtil.cerrar(conn);
        return salida;
    }

    public List<UsuarioRole> buscar(Connection conn, Integer roleId, Integer usuarioId) {
        List<UsuarioRole> lista = new ArrayList<>();
        String sql = "select * from " + getNombreTabla() + " where role_id = ? and usuario_id = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = conn.prepareStatement(sql);
            DBUtil.setInteger(ps, 1, roleId);
            DBUtil.setInteger(ps, 2, usuarioId);
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
