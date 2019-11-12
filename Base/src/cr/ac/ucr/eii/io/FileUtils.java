package cr.ac.ucr.eii.io;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Files;

/**
 * Esta clase realizar conversiones básicas de los archivos en formato binarios
 *
 * @author Mauricio Andrés Zamora Hernández
 */
public class FileUtils {

    public static String identificarContentType(File archivo) {
        String tipoArchivo = "Undetermined";
        try {
            tipoArchivo = Files.probeContentType(archivo.toPath());
        } catch (IOException ioException) {
            System.out.println(ioException.getMessage());
        }
        return tipoArchivo;
    }

    public static byte[] convertirFileEnByteArray(File archivo) {

        FileInputStream fis = null;
        byte[] resultado = null;

        if (archivo == null) {
            return null;
        }
        resultado = new byte[(int) archivo.length()];
        try {
            fis = new FileInputStream(archivo);
            fis.read(resultado);
            fis.close();

        } catch (IOException ioExp) {
            System.out.println("Error en convertirFileEnByteArray ");
        }
        return resultado;
    }
}
