/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.math.BigDecimal;
import java.util.Iterator;
import java.util.List;
import javax.swing.DefaultComboBoxModel;
import javax.swing.DefaultListModel;
import javax.swing.JOptionPane;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import Modelo.*;
import java.io.Serializable;

public class Operaciones {
    
    public void Registrar_Persona(Persona p){
        SessionFactory sesion  = NewHibernateUtil.getSessionFactory();
        Session session;
        session = sesion.openSession();
        Transaction tx = session.beginTransaction();
        session.save(p);
        tx.commit();
        session.close();
        JOptionPane.showMessageDialog(null, "Insertado correctamente");
    }
    
    public void Registrar_Telefono(Telefono t){
        SessionFactory sesion  = NewHibernateUtil.getSessionFactory();
        Session session;
        session = sesion.openSession();
        Transaction tx = session.beginTransaction();
        session.save(t);
        tx.commit();
        session.close();
        //JOptionPane.showMessageDialog(null, "Insertado correctamente");
    }
    
    public Telefono buscaTelef(int numero){
        Telefono t;
        SessionFactory sesion  = NewHibernateUtil.getSessionFactory();
        Session session;
        session = sesion.openSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Telefono where numero="+numero);
        List <Telefono> lista = q.list();
        Iterator<Telefono> iter = lista.iterator();
        
        int id = 0;
        
        while(iter.hasNext()){
            Telefono te = (Telefono) iter.next();
            
            id = te.getId();
            
        }
        System.out.println(""+id);
        //busca el dato a buscar en la clase telefono
        //si existe t va ser igual al objeto que pertenece el dato
        t  =(Telefono) session.get(Telefono.class,id);
        tx.commit();
        session.close();
        
        return t;
    }
    
}
