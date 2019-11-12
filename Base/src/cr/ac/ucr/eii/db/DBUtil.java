package cr.ac.ucr.eii.db;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.dbcp2.BasicDataSource;

/**
 * Esta clase contiene los métodos básicos para conectarse al DBMS, así como
 * otros métodos para manipular Statement, PreparedStaments y ResultSets.
 *
 * @author Mauricio Andrés Zamora Hernández
 * @version 1.0
 */
public class DBUtil {

    private DBUtil() {
    }

    private static BasicDataSource ds = null;

    public static java.util.Date getServerDate() {
        java.util.Date current = null;
        Connection conn = crearConexion();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            stmt = conn.prepareStatement("select now() as hora");
            rs = stmt.executeQuery();
            while (rs.next()) {
                current = new java.util.Date(rs.getDate("hora").getTime());
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBUtil.class.getName()).log(Level.SEVERE, null, ex);
        }
        cerrar(rs);
        cerrar(stmt);
        cerrar(conn);
        return current;
    }

    public static void createDataSource(String servidor,
            String nombre_bd,
            String usuario,
            String clave,
            String nombre_driver) throws Exception {
        ds = new BasicDataSource();
        ds.setDriverClassName(nombre_driver);
        ds.setUrl("jdbc:mysql://" + servidor + ":3306/" + nombre_bd + "?serverTimezone=UTC");
        ds.setUsername(usuario);
        ds.setPassword(clave);
        ds.setMinIdle(5);
        ds.setMaxIdle(10);
        ds.setMaxOpenPreparedStatements(100);

    }

    public static void createDataSource(String servidor,
            String nombre_bd,
            String usuario,
            String clave) throws Exception {
        createDataSource(servidor, nombre_bd, usuario, clave, "com.mysql.cj.jdbc.Driver");
    }

    public static Connection crearConexion() {
        try {
            return ds.getConnection();
        } catch (SQLException ex) {
            return null;
        }
    }

    public static void cerrar(Connection conn) {
        try {
            conn.close();
        } catch (SQLException e) {

        }
    }

    public static void cerrar(Statement stmt) {
        try {
            stmt.close();
        } catch (SQLException e) {

        }
    }

    public static void cerrar(PreparedStatement ps) {
        try {
            ps.close();
        } catch (SQLException e) {

        }
    }

    public static void cerrar(ResultSet rs) {
        try {
            rs.close();
        } catch (SQLException e) {

        }
    }

    public static void setString(PreparedStatement ps, int index, String valor) throws SQLException {
        if (valor != null) {
            ps.setString(index, valor);
        } else {
            ps.setNull(index, Types.VARCHAR);
        }
    }
    
    public static void setBinaryStream(PreparedStatement ps, int index, InputStream valor) throws SQLException {
        if (valor != null) {
            ps.setBinaryStream(index, valor);
        } else {
            ps.setNull(index, Types.BLOB);
        }
    }

    public static void setBlob(PreparedStatement ps, int index, byte[] valor) throws SQLException {
        if (valor != null) {
            InputStream is = new ByteArrayInputStream(valor);
            ps.setBlob(index, is);
            try {
                is.close();
            } catch (IOException ex) {
                String msg = ex.getMessage();
            }
        } else {
            ps.setNull(index, Types.BLOB);
        }
    }

    public static void setInteger(PreparedStatement ps, int index, Integer valor) throws SQLException {
        if (valor != null) {
            ps.setInt(index, valor);
        } else {
            ps.setNull(index, Types.INTEGER);
        }
    }

    public static void setBoolean(PreparedStatement ps, int index, Boolean valor) throws SQLException {
        if (valor != null) {
            ps.setBoolean(index, valor);
        } else {
            ps.setNull(index, Types.BOOLEAN);
        }
    }

    public static void setDate(PreparedStatement ps, int index, Date valor) throws SQLException {
        if (valor != null) {
            ps.setDate(index, new java.sql.Date(valor.getTime()));
        } else {
            ps.setNull(index, Types.DATE);
        }
    }

    public static Integer getInteger(ResultSet rs, String nombre) {
        Integer salida = null;
        try {
            salida = rs.getInt(nombre);
            if (rs.wasNull()) {
                salida = null;
            }
        } catch (SQLException ex) {

        }

        return salida;
    }

}
