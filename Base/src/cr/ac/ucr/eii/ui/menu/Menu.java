/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.ucr.eii.ui.menu;

import cr.ac.ucr.eii.data.IDato;
import cr.ac.ucr.eii.ui.ReceptorBusqueda;
import cr.ac.ucr.eii.ui.empresa.EmpresaMenu;
import cr.ac.ucr.eii.ui.pais.PaisMenu;
import cr.ac.ucr.eii.ui.usuario.UsuarioMenu;

/**
 *
 * @author mauricio
 */
public class Menu extends javax.swing.JFrame implements ReceptorBusqueda {

    /**
     * Creates new form Menu
     */
    public Menu() {
        initComponents();
        setExtendedState(this.MAXIMIZED_BOTH);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jMenu1 = new javax.swing.JMenu();
        jMenuBar1 = new javax.swing.JMenuBar();
        mnuCatologo = new javax.swing.JMenu();
        mniEmpresas = new javax.swing.JMenuItem();
        mnuCatalogoGeneral = new javax.swing.JMenu();
        mniPaises = new javax.swing.JMenuItem();
        mnuPerfil = new javax.swing.JMenu();
        mnuSeguridad = new javax.swing.JMenu();
        mniUsuarios = new javax.swing.JMenuItem();
        mniRoles = new javax.swing.JMenuItem();
        mniAsignacion = new javax.swing.JMenuItem();
        mnuSalir = new javax.swing.JMenu();

        jMenu1.setText("jMenu1");

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Sistema de Control de Proyectos");

        mnuCatologo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/clipboard32.png"))); // NOI18N
        mnuCatologo.setText("Catálogos");

        mniEmpresas.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/industry32.png"))); // NOI18N
        mniEmpresas.setText("Administración de Empresas");
        mniEmpresas.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mniEmpresasActionPerformed(evt);
            }
        });
        mnuCatologo.add(mniEmpresas);

        jMenuBar1.add(mnuCatologo);

        mnuCatalogoGeneral.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/dispatch_order32.png"))); // NOI18N
        mnuCatalogoGeneral.setText("Catálogos Generales");

        mniPaises.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/world_south_america32.png"))); // NOI18N
        mniPaises.setText("Administración de Países");
        mniPaises.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mniPaisesActionPerformed(evt);
            }
        });
        mnuCatalogoGeneral.add(mniPaises);

        jMenuBar1.add(mnuCatalogoGeneral);

        mnuPerfil.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/user32.png"))); // NOI18N
        mnuPerfil.setText("Mi Perfil");
        jMenuBar1.add(mnuPerfil);

        mnuSeguridad.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/surveillance_camera32.png"))); // NOI18N
        mnuSeguridad.setText("Seguridad");

        mniUsuarios.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/user_32.png"))); // NOI18N
        mniUsuarios.setText("Administración de Usuarios");
        mniUsuarios.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                mniUsuariosActionPerformed(evt);
            }
        });
        mnuSeguridad.add(mniUsuarios);

        mniRoles.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/window32.png"))); // NOI18N
        mniRoles.setText("Administración de Roles");
        mnuSeguridad.add(mniRoles);

        mniAsignacion.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/access_control32.png"))); // NOI18N
        mniAsignacion.setText("Asignación de Roles a los Usuarios");
        mnuSeguridad.add(mniAsignacion);

        jMenuBar1.add(mnuSeguridad);

        mnuSalir.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/on_off32.png"))); // NOI18N
        mnuSalir.setText("Salir");
        jMenuBar1.add(mnuSalir);

        setJMenuBar(jMenuBar1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 826, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 333, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void mniUsuariosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mniUsuariosActionPerformed
        UsuarioMenu menu = new UsuarioMenu();
        menu.setVisible(true);
    }//GEN-LAST:event_mniUsuariosActionPerformed

    private void mniPaisesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mniPaisesActionPerformed
        PaisMenu pm = new PaisMenu();
        pm.setVisible(true);
    }//GEN-LAST:event_mniPaisesActionPerformed

    private void mniEmpresasActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_mniEmpresasActionPerformed
        EmpresaMenu menu = new EmpresaMenu();
        menu.setVisible(true);
    }//GEN-LAST:event_mniEmpresasActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JMenuItem mniAsignacion;
    private javax.swing.JMenuItem mniEmpresas;
    private javax.swing.JMenuItem mniPaises;
    private javax.swing.JMenuItem mniRoles;
    private javax.swing.JMenuItem mniUsuarios;
    private javax.swing.JMenu mnuCatalogoGeneral;
    private javax.swing.JMenu mnuCatologo;
    private javax.swing.JMenu mnuPerfil;
    private javax.swing.JMenu mnuSalir;
    private javax.swing.JMenu mnuSeguridad;
    // End of variables declaration//GEN-END:variables

    @Override
    public void recibirResultadoBusqueda(IDato dato, String mensaje) {

    }
}
