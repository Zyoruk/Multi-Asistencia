/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import Modelo.*;

import org.hibernate.HibernateException;
import org.hibernate.Transaction;
public class Operaciones {
    
    Session session = null;
    
    public Operaciones() {
        
        this.session = NewHibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List getPersonas(String idpersona){
        
        List <Telefonos> listaPersonas =  null;             
            
        //Incluimos la consulta dentro del bloque try-catch para el manejo de transacciones
        
        try{
            Transaction tx = this.session.beginTransaction();
            
            //se crea la consulta en lenguaje HQL (Hibernate), que es la base del lengiaje JPQL
            Query q = session.createQuery("from Telefonos where idcliente ="+idpersona+" or -1 ="+idpersona);
            
            listaPersonas = (List<Telefonos>) q.list();
            tx.commit();
            
            
        }catch(HibernateException ex){
            ex.printStackTrace();
            
        }
        return listaPersonas;
    }

    
}
