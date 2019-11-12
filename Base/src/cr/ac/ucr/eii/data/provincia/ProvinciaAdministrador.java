package cr.ac.ucr.eii.data.provincia;

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
public class ProvinciaAdministrador extends DatoAdministrador<Provincia> {

    @Override
    protected Provincia crearDato() {
        return new Provincia();
    }

    @Override
    protected void cargarDatoDelResultSet(Provincia dato, ResultSet rs) throws Exception {
        dato.setNombre(rs.getString("nombre"));
    }

    @Override
    protected String crearSQLCreacion() {
        return "insert into provincia (nombre) values (?)";
    }

    @Override
    protected void cargarParametrosSQLCreacion(PreparedStatement ps, Provincia dato) throws Exception {
        DBUtil.setString(ps, 1, dato.getNombre());
    }

    @Override
    protected String crearSQLActualizacion() {
        return "update provincia set nombre = ? where provincia_id = ?";
    }

    @Override
    public String getNombreTabla() {
        return "provincia";
    }

    @Override
    protected void cargarParametrosSQLActualizacion(PreparedStatement ps, Provincia dato) throws Exception {
        DBUtil.setString(ps, 1, dato.getNombre());
        DBUtil.setInteger(ps, 2, dato.getId());
    }

    public List<Provincia> buscar(String nombre) {
        Connection conn = DBUtil.crearConexion();
        List<Provincia> salida = buscar(conn, nombre);
        DBUtil.cerrar(conn);
        return salida;
    }

    public List<Provincia> buscar(Connection conn, String nombre) {
        List<Provincia> lista = new ArrayList<>();
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
