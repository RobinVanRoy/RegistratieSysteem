/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DAL;

import java.sql.*;
import java.util.*;

/**
 *
 * @author 11627
 */
public class DaCursist {
    
    public static Connection GetConnection() throws SQLException
    {
        return DriverManager.getConnection("jdbc:mysql://localhost:3307/registratieDB","root","usbw");
    }
    
    public List<Cursist> GetAll(){
        ArrayList<Cursist> cursisten = new ArrayList<>();
        try {
            Connection conn = GetConnection();
            String sql="SELECT * FROM tbl_cursist";            
                              
            Statement stmt = conn.createStatement();            
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()){                
                Cursist c = new Cursist(
                        rs.getInt("cursistId"),
                        rs.getString("naam"), 
                        rs.getString("email"), 
                        rs.getString("phone"));
                
                cursisten.add(c);
            }
            
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return cursisten;
    }
    
     public static void save (Cursist c)
    {
        try 
        {
            Connection conn = GetConnection();
            String sql="";
            if (c.getCursistId()==0) sql = "INSERT INTO tbl_cursist(Naam,Email,Phone) VALUES (?,?,?)";
            else    sql="UPDATE tbl_cursist SET Naam=?,Email=?,Phone=? WHERE ID=?";
                                
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, c.getNaam());
            stmt.setString(2, c.getEmail());
            stmt.setString(3, c.getPhone());            
            int result = stmt.executeUpdate();
            
            if (result==0) {
                System.out.println("geen update/insert gebeurd");
            }
            
        } 
        catch (SQLException ex) 
        {
            System.out.println(ex.getMessage());
        }
    }
}
