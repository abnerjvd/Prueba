package cr.ac.ucr.eii.data.role_acceso;

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
public class RoleAccesoAdministrador extends DatoAdministrador<RoleAcceso> {

    @Override
    protected void cargarDatoDelResultSet(RoleAcceso dato, ResultSet rs) throws Exception {
        dato.setRoleId(rs.getInt("role_id"));
        dato.setRoleElementoId(rs.getInt("role_elemento_id"));
        dato.setTipoAcceso(rs.getString("tipo_acceso"));
        
    }

    @Override
    protected RoleAcceso crearDato() {
        return new RoleAcceso();
    }

    @Override
    protected String crearSQLCreacion() {
        return "insert into role_acceso (role_id, role_elemento_id, tipo_acceso) values (?,?,?)";
    }

    @Override
    protected void cargarParametrosSQLCreacion(PreparedStatement ps, RoleAcceso dato) throws Exception {
        DBUtil.setInteger(ps, 1, dato.getRoleId());
        DBUtil.setInteger(ps, 2, dato.getRoleElementoId());
        DBUtil.setString(ps, 3, dato.getTipoAcceso());
    }

    @Override
    protected String crearSQLActualizacion() {
        return "update role_acceso set role_id = ?, role_elemento_id = ?, tipo_acceso = ? where role_acceso_id = ?";
    }

    @Override
    protected void cargarParametrosSQLActualizacion(PreparedStatement ps, RoleAcceso dato) throws Exception {
        DBUtil.setInteger(ps, 1, dato.getRoleId());
        DBUtil.setInteger(ps, 2, dato.getRoleElementoId());
        DBUtil.setString(ps, 3, dato.getTipoAcceso());
        DBUtil.setInteger(ps, 4, dato.getId());
    }

    @Override
    public String getNombreTabla() {
        return "role_elemento";
    }
    
    public List<RoleAcceso> buscar(Integer roleId, Integer roleElementoId) {
        Connection conn = DBUtil.crearConexion();
        List<RoleAcceso> salida = buscar(conn, roleId, roleElementoId);
        DBUtil.cerrar(conn);
        return salida;
    }

    public List<RoleAcceso> buscar(Connection conn, Integer roleId, Integer roleElementoId) {
        List<RoleAcceso> lista = new ArrayList<>();
        String sql = "select * from " + getNombreTabla() + " where role_id = ? and role_elemento_id = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = conn.prepareStatement(sql);
            DBUtil.setInteger(ps, 1, roleId);
            DBUtil.setInteger(ps, 2, roleElementoId);
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
