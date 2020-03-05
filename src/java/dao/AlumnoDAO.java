/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import conexion.Conexion;
import dto.AlumnoDTO;
import interfaces.ObligacionAlumno;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ruri
 */
    public class AlumnoDAO implements ObligacionAlumno <AlumnoDTO>{
    private static final String SQL_INSERT = "INSERT INTO alumno(rut,Nombre,Apellido,Edad,Direccion) VALUES (?, ?, ?, ?, ?)";
    private static final String SQL_DELETE ="DELETE FROM alumno WHERE rut = ?";
    private static final String SQL_UPDATE = "UPDATE alumno SET Nombre = ?, Apellido = ? , Edad = ? , Direccion = ?  WHERE rut = ?";
    private static final String SQL_READ ="SELECT * FROM alumno WHERE rut = ?";
    private static final String SQL_READALL ="SELECT * FROM alumno";
    
    private static final Conexion conex = Conexion.saberEstado();
    

    
    public boolean create(AlumnoDTO c) {
        PreparedStatement ps;
        try {
            ps = conex.getCnn().prepareStatement(SQL_INSERT);
            ps.setString(1, c.getRut());
            ps.setString(2, c.getNombre());
            ps.setString(3, c.getApellido());
            ps.setInt(4, c.getEdad());
            ps.setString(5, c.getDireccion());
            
            if(ps.executeUpdate() > 0)
            {
                return true;   
            }
        } catch (SQLException ex) {
            Logger.getLogger(AlumnoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            conex.cerrarConexion();
        }
        return false;   
    }

    @Override
    public boolean delete(Object key) {
        PreparedStatement ps;
        try {
            ps = conex.getCnn().prepareStatement(SQL_DELETE);
            ps.setString(1, key.toString());
            
            if(ps.executeUpdate() > 0)
            {
                return true;
            }} catch (SQLException ex) {
            Logger.getLogger(AlumnoDTO.class.getName()).log(Level.SEVERE, null, ex);
        }finally
        {
            conex.cerrarConexion();
        }
       return false;
    }

    @Override
    public boolean update(AlumnoDTO c) {
        
        PreparedStatement ps;
        try {
            ps = conex.getCnn().prepareStatement(SQL_UPDATE);
            ps.setString(1, c.getNombre());
            ps.setString(2, c.getApellido());
            ps.setInt(3, c.getEdad());
            ps.setString(4, c.getDireccion());
            ps.setString(5, c.getRut());
            
            if(ps.executeUpdate() > 0)
            {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AlumnoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            conex.cerrarConexion();
        }
        return false;
    }

    @Override
    public AlumnoDTO read(Object key) {
            PreparedStatement ps;
            ResultSet res;
            AlumnoDTO p = null;
        try {
            
            
            ps = conex.getCnn().prepareStatement(SQL_READ);
            ps.setString(1, key.toString());
            
            res = ps.executeQuery();
            
            while (res.next()) {
                p = new AlumnoDTO(res.getString(1), res.getString(2), res.getString(3), res.getInt(4), res.getString(5));
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(AlumnoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            conex.cerrarConexion();
        }
        return p;
    }

    @Override
    public ArrayList<AlumnoDTO> readAll() {
            PreparedStatement ps;
            ResultSet res;
            ArrayList<AlumnoDTO> Alumno = new ArrayList();
        try {
            
            ps = conex.getCnn().prepareStatement(SQL_READALL);
            
            res = ps.executeQuery();
            
            while (res.next()) {
                Alumno.add(new AlumnoDTO(res.getString(1), res.getString(2), res.getString(3), res.getInt(4), res.getString(5)));  
            }
        } catch (SQLException ex) {
            Logger.getLogger(AlumnoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally
        {
            conex.cerrarConexion();
        }
        return Alumno;
    }  
}

    

