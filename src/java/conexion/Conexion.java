/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ruri
 */
public class Conexion {
    public static Conexion instance; //singleton
    private Connection cnn;
    
    private Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");//url
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/liceo?zeroDateTimeBehavior=convertToNull", "root", "123456");//url
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public synchronized static Conexion saberEstado()
    {
        if(instance == null)
        {
            instance = new Conexion();
        }
        return instance;
    }

    public Connection getCnn() {
        return cnn;
    }
    
    public void cerrarConexion()
    {
        instance = null;
    }
}
