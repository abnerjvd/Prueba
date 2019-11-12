package cr.ac.ucr.eii.data.pais;

import cr.ac.ucr.eii.data.DatoAdministrador;
import cr.ac.ucr.eii.db.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mauricio Andrés Zamora Hernández
 */
public class PaisAdministrador extends DatoAdministrador<Pais> {

    @Override
    protected Pais crearDato() {
        return new Pais();
    }

    @Override
    protected void cargarDatoDelResultSet(Pais dato, ResultSet rs) throws Exception {
        dato.setCodigo(rs.getString("codigo"));
        dato.setNombre(rs.getString("nombre"));
    }

    @Override
    protected String crearSQLCreacion() {
        return "insert into pais (codigo, nombre) values (?, ?)";
    }

    @Override
    protected void cargarParametrosSQLCreacion(PreparedStatement ps, Pais dato) throws Exception {
        DBUtil.setString(ps, 1, dato.getCodigo());
        DBUtil.setString(ps, 2, dato.getNombre());
    }

    @Override
    protected String crearSQLActualizacion() {
        return "update pais set codigo = ?, nombre = ? where pais_id = ?";
    }

    @Override
    public String getNombreTabla() {
        return "pais";
    }

    @Override
    protected void cargarParametrosSQLActualizacion(PreparedStatement ps, Pais dato) throws Exception {
        DBUtil.setString(ps, 1, dato.getCodigo());
        DBUtil.setString(ps, 2, dato.getNombre());
        DBUtil.setInteger(ps, 3, dato.getId());
    }

    public List<Pais> buscarPorNombre(String codigo, String nombre) {
        Connection conn = DBUtil.crearConexion();
        List<Pais> salida = buscarPorNombre(conn, codigo, nombre);
        DBUtil.cerrar(conn);
        return salida;
    }

    public List<Pais> buscarPorNombre(Connection conn, String codigo, String nombre) {
        List<Pais> lista = new ArrayList<>();
        codigo = codigo != null ? codigo : "";
        nombre = nombre != null ? nombre : "";
        String sql = "select * from " + getNombreTabla() + " where codigo like '%" + codigo + "%' and nombre like '%" + nombre + "%'";
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
            System.out.println(e.getMessage());
        } finally {
            DBUtil.cerrar(rs);
            DBUtil.cerrar(ps);
        }
        return lista;
    }

}
