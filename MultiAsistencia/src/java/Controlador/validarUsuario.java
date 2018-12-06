/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Clientes;
import Modelo.Credenciales;
import Modelo.TipoUsuario;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author jif_c
 */
public class validarUsuario {
    
    public boolean validar(String username){
        SessionFactory sesion  = NewHibernateUtil.getSessionFactory();
        Session session;
        session = sesion.openSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Credenciales where correo="+ username);
        
        if (q.getFetchSize() > 0) {
            tx.commit();
            session.close();
         return false;   
        } else {
            tx.commit();
            session.close();
            return true;   
        }
    }
    
    public void insert(Clientes c){
        SessionFactory sesion  = NewHibernateUtil.getSessionFactory();
        Session session;
        session = sesion.openSession();
        Transaction tx = session.beginTransaction();
        session.save(c);
        tx.commit();
        session.close();
        //JOptionPane.showMessageDialog(null, "Insertado correctamente")
    }
    
    public void insertCredencial(Credenciales c){
        SessionFactory sesion  = NewHibernateUtil.getSessionFactory();
        Session session;
        session = sesion.openSession();
        Transaction tx = session.beginTransaction();
        session.save(c);
        tx.commit();
        session.close();
        //JOptionPane.showMessageDialog(null, "Insertado correctamente")
    }
    
    public void insertTpo (TipoUsuario t){
        SessionFactory sesion  = NewHibernateUtil.getSessionFactory();
        Session session;
        session = sesion.openSession();
        Transaction tx = session.beginTransaction();
        session.save(t);
        tx.commit();
        session.close();
        //JOptionPane.showMessageDialog(null, "Insertado correctamente")
    }
}
