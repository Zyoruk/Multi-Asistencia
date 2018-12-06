/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.*;
import org.hibernate.Session;

/**
 *
 * @author Zyoruk
 */
public class Operacions_Admin {
    Session session = null;

    public Operacions_Admin() {
        this.session = NewHibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    
    //Polizas
    public void createPoliza() { 
        
    }
    
    public Poliza[] getPolizas() { 
        return null;
    }
    
    public Poliza getPoliza(){
        return null;
    }
    
    public void deletePoliza(int id) { 
        
    }
    
    public void updatePoliza(int id, String nombre) { 
        
    }
    
    public void suspendPoliza () { 
        
    }
    
    //Coberturas
    public void createCobertura(){
        
    }
    
    public Cobertura[] getCoberturas() { 
        return null;
    }
    
    public Cobertura getCobertura(int id){
        return null;
    }
    
    public void deleteCobertura(int id ) { 
        
    }
    
    public void updateCobertura(){
        
    }
    
    //Clientes    
    public void createCliente(){
        
    }
    
    public void deleteCliente() { 
        
    }
    
    public Clientes[] getClientes(){
        return null;
    }
    
}
