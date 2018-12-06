package Modelo;
// Generated 06-dic-2018 13:08:09 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Poliza generated by hbm2java
 */
public class Poliza  implements java.io.Serializable {


     private int idpoliza;
     private String nombre;
     private Set<Clientes> clienteses = new HashSet<Clientes>(0);
     private Set<Cobertura> coberturas = new HashSet<Cobertura>(0);

    public Poliza() {
    }

	
    public Poliza(int idpoliza) {
        this.idpoliza = idpoliza;
    }
    public Poliza(int idpoliza, String nombre, Set<Clientes> clienteses, Set<Cobertura> coberturas) {
       this.idpoliza = idpoliza;
       this.nombre = nombre;
       this.clienteses = clienteses;
       this.coberturas = coberturas;
    }
   
    public int getIdpoliza() {
        return this.idpoliza;
    }
    
    public void setIdpoliza(int idpoliza) {
        this.idpoliza = idpoliza;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public Set<Clientes> getClienteses() {
        return this.clienteses;
    }
    
    public void setClienteses(Set<Clientes> clienteses) {
        this.clienteses = clienteses;
    }
    public Set<Cobertura> getCoberturas() {
        return this.coberturas;
    }
    
    public void setCoberturas(Set<Cobertura> coberturas) {
        this.coberturas = coberturas;
    }




}


