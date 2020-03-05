/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dto;

/**
 *
 * @author Ruri
 * código, nombre, cantidadHoras, carrera
 */


public class AsignaturaDTO {
    
   private int codigo;
   private String nombreAsignatura;
   private int cantidadHoras;
   private String carrera;

   
   
   
   public AsignaturaDTO()
   {
   }
    public AsignaturaDTO(int codigo, String nombreAsignatura, int cantidadHoras, String carrera) {
        this.codigo = codigo;
        this.nombreAsignatura = nombreAsignatura;
        this.cantidadHoras = cantidadHoras;
        this.carrera = carrera;
    }

    /**
     * @return the codigo
     */
    public int getCodigo() {
        return codigo;
    }

    /**
     * @param codigo the codigo to set
     */
    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    /**
     * @return the nombreAsignatura
     */
    public String getNombreAsignatura() {
        return nombreAsignatura;
    }

    /**
     * @param nombreAsignatura the nombreAsignatura to set
     */
    public void setNombreAsignatura(String nombreAsignatura) {
        this.nombreAsignatura = nombreAsignatura;
    }

    /**
     * @return the cantidadHoras
     */
    public int getCantidadHoras() {
        return cantidadHoras;
    }

    /**
     * @param cantidadHoras the cantidadHoras to set
     */
    public void setCantidadHoras(int cantidadHoras) {
        this.cantidadHoras = cantidadHoras;
    }

    /**
     * @return the carrera
     */
    public String getCarrera() {
        return carrera;
    }

    /**
     * @param carrera the carrera to set
     */
    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }
   
   }
   
    

