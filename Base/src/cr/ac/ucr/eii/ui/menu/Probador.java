/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.ucr.eii.ui.menu;


import cr.ac.ucr.eii.data.pais.Pais;
import cr.ac.ucr.eii.db.DBUtil;
import java.util.Date;
import java.util.List;

/**
 *
 * @author mauricio
 */
public class Probador {

    public static void main(String[] args) {
        try {
            //configuracion
            DBUtil.createDataSource("localhost", "industrial", "root", "123456");
//            DBUtil.createDataSource("localhost", "industrial", "root", "MiClave123");
            Date fecha = DBUtil.getServerDate();
            System.out.println(fecha);

//            //comun
//            Estudiante elemento = null;
//            EstudianteAdministrador administrador = null;
//            administrador = new EstudianteAdministrador();
//            List<Pais> lista;
//
//            System.out.println("prueba de registro");
//            elemento = new Estudiante();
//            elemento.setNombre("Costa Ricaxiwziasdfasdfadsf");
//            System.out.println(administrador.registrar(elemento));

//            lista = administrador.buscarPorNombreApellidosCarneId(null, "Costa Ricaxiwzi","","","");
//            System.out.println(lista.size());
//            new PaisBuscador().setVisible(true);
//            System.out.println("prueba de actualizar");
//            pais = new Pais();
//            pais.setId(13);
//            pais.setNombre("Panamá");
//            System.out.println(paisAdm.actualizar(pais));
//
//            System.out.println("prueba de carga");
//            pais = paisAdm.cargar(1);
//            System.out.println(pais);
//
//            System.out.println("prueba de listado");
//            lista = paisAdm.listarTodos();
//            for (Pais p : lista) {
//                System.out.println(p);
//            }
//
//            System.out.println("prueba de eliminar");
//            pais = new Pais();
//            pais.setId(14);
//            paisAdm.eliminar(pais);
//            //pruea de listado
//            lista = paisAdm.listarTodos();
//            for (Pais p : lista) {
//                System.out.println(p);
//            }

        } catch (Exception ex) {

        }
    }
}
