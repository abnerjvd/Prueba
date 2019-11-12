package cr.ac.ucr.eii.data.usuario;

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
public class UsuarioAdministrador extends DatoAdministrador<Usuario> {

    @Override
    protected void cargarDatoDelResultSet(Usuario dato, ResultSet rs) throws Exception {
        dato.setNombreUsuario(rs.getString("nombre_usuario"));
        dato.setActivo(rs.getBoolean("activo"));
        dato.setPersonaId(rs.getInt("persona_id"));
    }

    @Override
    protected Usuario crearDato() {
        return new Usuario();
    }

    @Override
    protected String crearSQLCreacion() {
        return "insert into usuario (nombre_usuario, activo, persona_id) values (?, ?, ?)";
    }

    @Override
    protected void cargarParametrosSQLCreacion(PreparedStatement ps, Usuario dato) throws Exception {
        DBUtil.setString(ps, 1, dato.getNombreUsuario());
        DBUtil.setBoolean(ps, 2, dato.isActivo());
        DBUtil.setInteger(ps, 3, dato.getPersonaId());
    }

    @Override
    protected String crearSQLActualizacion() {
        return "update usuario set nombre_usuario = ?, activo = ?, persona_id = ? where usuario_id = ?";
    }

    @Override
    protected void cargarParametrosSQLActualizacion(PreparedStatement ps, Usuario dato) throws Exception {
        DBUtil.setString(ps, 1, dato.getNombreUsuario());
        DBUtil.setBoolean(ps, 2, dato.isActivo());
        DBUtil.setInteger(ps, 3, dato.getPersonaId());
        DBUtil.setInteger(ps, 4, dato.getId());
    }

    @Override
    public String getNombreTabla() {
        return "usuario";
    }

    public List<Usuario> buscar(Integer gradoAcademicoId, Integer institucionAcademicaId) {
        Connection conn = DBUtil.crearConexion();
        List<Usuario> salida = buscar(conn, gradoAcademicoId, institucionAcademicaId);
        DBUtil.cerrar(conn);
        return salida;
    }

    public List<Usuario> buscar(Connection conn, Integer gradoAcademicoId, Integer institucionAcademicaId) {
        List<Usuario> lista = new ArrayList<>();
        String sql = "select * from " + getNombreTabla() + " where grado_academico_id = ? and institucion_academica_id = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = conn.prepareStatement(sql);
            DBUtil.setInteger(ps, 1, gradoAcademicoId);
            DBUtil.setInteger(ps, 2, institucionAcademicaId);
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
