/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package interfaces;

import java.util.List;

/**
 *
 * @author Ruri
 */
public interface ObligacionAlumno <Midato> {
    public boolean create(Midato m);
    public boolean update(Midato m);
    public boolean delete(Object id);
    public Midato read(Object id);
    public List<Midato> readAll();
    
}
