package DAL;
// Generated 3-dec-2014 14:34:15 by Hibernate Tools 3.6.0



/**
 * TblLokaal generated by hbm2java
 */
public class Lokaal  implements java.io.Serializable {


     private Integer lokaalId;
     private int nummer;

    public Lokaal() {
    }

    public Lokaal(int nummer) {
       this.nummer = nummer;
    }
   
    public Integer getLokaalId() {
        return this.lokaalId;
    }
    
    public void setLokaalId(Integer lokaalId) {
        this.lokaalId = lokaalId;
    }
    public int getNummer() {
        return this.nummer;
    }
    
    public void setNummer(int nummer) {
        this.nummer = nummer;
    }




}


