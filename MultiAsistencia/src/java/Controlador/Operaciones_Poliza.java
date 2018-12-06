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

public class Operaciones_Poliza {
    
Session session = null;
    
    public Operaciones_Poliza() {
        
        this.session = NewHibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List getPolizas ( String userId) { 
        Transaction t = this.session.beginTransaction();
        Query q = this.session.createQuery(" from cliente_por_poliza nm");
//        List<PolizaPorPersona>
        return null;
    }
}
