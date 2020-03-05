/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;
import interfaces.ObligacionAsignatura;
import conexion.Conexion;
import dto.AsignaturaDTO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ruri
 */
public class AsignaturaDAO {
    
      private static final String SQL_INSERT = "INSERT INTO asignatura (codigo, Nombre, cantidadHoras, carrera)VALUES(?, ?, ?, ?)";
    private static final String SQL_DELETE = "DELETE FROM asignatura WHERE codigo = ?";
    private static final String SQL_UPDATE = "UPDATE asignatura SET Nombre = ?, cantidadHoras = ?, carrera = ?  WHERE codigo = ?";
    private static final String SQL_READ = "SELECT *FROM asignatura WHERE codigo = ?";
    private static final String SQL_READALL = "SELECT * FROM asignatura";
    
    private static final Conexion con = Conexion.saberEstado();
            
            
   
    public boolean create(AsignaturaDTO c) {
        PreparedStatement ps;
        try {
            ps = con.getCnn().prepareStatement(SQL_INSERT);
            ps.setInt(1, c.getCodigo());
            ps.setString(2, c.getNombreAsignatura());
            ps.setInt(3,c.getCantidadHoras());
            ps.setString(4, c.getCarrera());
            
            if(ps.executeUpdate() > 0)
            {   
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AsignaturaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            con.cerrarConexion();
        }
        return false;
    }


    public boolean delete(Object key) {
        PreparedStatement ps;
        try {
            ps = con.getCnn().prepareStatement(SQL_DELETE);
            ps.setString(1, key.toString());
            if (ps.executeUpdate() > 0) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AsignaturaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            con.cerrarConexion();
        }
        return false;
    }

    
    public boolean update(AsignaturaDTO c) {
        PreparedStatement ps;
        try {
            ps = con.getCnn().prepareStatement(SQL_UPDATE);
            
            ps.setString(1, c.getNombreAsignatura());
            ps.setInt(2, c.getCantidadHoras());
            ps.setString(3, c.getCarrera());
            ps.setInt(4, c.getCodigo());
            if(ps.executeUpdate() > 0){
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AsignaturaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            con.cerrarConexion();
        }
        return false;  
    }

   
    public AsignaturaDTO read(Object key) {
            PreparedStatement ps;
            ResultSet res;
            AsignaturaDTO A = null;
        try {
            ps = con.getCnn().prepareStatement(SQL_READ);
            ps.setString(1, key.toString());
            res = ps.executeQuery();
            
            while (res.next()) {
                A = new AsignaturaDTO(res.getInt(1), res.getString(2), res.getInt(3), res.getString(4));
            }
            return A;
        } catch (SQLException ex) {
            Logger.getLogger(AsignaturaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            con.cerrarConexion();
        }
        return A;
    }

  
    public ArrayList<AsignaturaDTO> readAll() {
            PreparedStatement ps;
            ResultSet res;
            ArrayList<AsignaturaDTO> MiAsignatura= new ArrayList();
         try {
            ps = con.getCnn().prepareStatement(SQL_READALL);
            res = ps.executeQuery();      
            
            while (res.next()) {  
                MiAsignatura.add(new AsignaturaDTO(res.getInt(1), res.getString(2), res.getInt(3), res.getString(4)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AsignaturaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            con.cerrarConexion();
        }
        return MiAsignatura;
    }
    
}
