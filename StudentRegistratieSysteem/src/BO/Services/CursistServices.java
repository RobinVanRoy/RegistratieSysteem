/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package BO.Services;

import DAL.Cursist;
import DAL.DaCursist;
import java.util.List;

/**
 *
 * @author 11627
 */
public class CursistServices {
    private final DaCursist da = new DaCursist();
    public List<Cursist> getAllCursisten()
    {
        return da.GetAll();
    }
    
    public void SaveCursist(Cursist c)
    {
        DaCursist.save(c);
    }
    
}
