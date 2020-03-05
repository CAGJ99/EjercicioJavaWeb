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
public interface ObligacionAsignatura<datos> {
    
    public boolean create(datos m);
    public boolean update(datos m);
    public boolean delete(Object id);
    public datos read(Object id);
    public List<datos> readAll();
}
