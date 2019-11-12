package cr.ac.ucr.eii.data.distrito;

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
public class DistritoAdministrador extends DatoAdministrador<Distrito> {

    @Override
    protected Distrito crearDato() {
        return new Distrito();
    }

    @Override
    protected void cargarDatoDelResultSet(Distrito dato, ResultSet rs) throws Exception {
        dato.setCanton(rs.getInt("canton_id"));
        dato.setNombre(rs.getString("nombre"));
    }

    @Override
    protected String crearSQLCreacion() {
        return "insert into canton (canton_id, nombre) values (?, ?)";
    }

    @Override
    protected void cargarParametrosSQLCreacion(PreparedStatement ps, Distrito dato) throws Exception {
        DBUtil.setInteger(ps, 1, dato.getCanton());
        DBUtil.setString(ps, 2, dato.getNombre());
    }

    @Override
    protected String crearSQLActualizacion() {
        return "update distrito set canton_id = ?, nombre = ? where distrito_id = ?";
    }

    @Override
    public String getNombreTabla() {
        return "distrito";
    }

    @Override
    protected void cargarParametrosSQLActualizacion(PreparedStatement ps, Distrito dato) throws Exception {
        DBUtil.setInteger(ps, 1, dato.getCanton());
        DBUtil.setString(ps, 2, dato.getNombre());
        DBUtil.setInteger(ps, 3, dato.getId());
    }

    public List<Distrito> buscar(Integer canton, String nombre) {
        Connection conn = DBUtil.crearConexion();
        List<Distrito> salida = buscar(conn, canton, nombre);
        DBUtil.cerrar(conn);
        return salida;
    }

    public List<Distrito> buscar(Connection conn, Integer canton, String nombre) {
        List<Distrito> lista = new ArrayList<>();
        nombre = nombre != null ? nombre : "";
        String sql = "select * from " + getNombreTabla() + " where canton_id = " + canton + " and nombre like '%" + nombre + "%'";
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
