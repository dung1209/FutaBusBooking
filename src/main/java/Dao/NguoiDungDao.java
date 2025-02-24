package Dao;

import org.springframework.stereotype.Repository;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import HibernateUtils.HibernateUtils;
import java.util.ArrayList;
import FutaBus.bean.NguoiDung;

@Repository
public class NguoiDungDao {
    
    private static SessionFactory factory = HibernateUtils.getSessionFactory();
    
    // Lấy dữ liệu phân trang
    public List<NguoiDung> getNguoiDungByPage(int offset, int limit) {
        List<NguoiDung> nguoiDungList = new ArrayList<>();
        Session session = null;
        Transaction transaction = null;
        
        try {
            if (factory == null) {
                factory = HibernateUtils.getSessionFactory();
            }
            session = factory.openSession();
            transaction = session.beginTransaction();
            
            String hql = "from NguoiDung";
            Query<NguoiDung> query = session.createQuery(hql, NguoiDung.class);
            query.setFirstResult(offset); // offset: vị trí bắt đầu
            query.setMaxResults(limit); // limit: số lượng bản ghi mỗi trang
            nguoiDungList = query.getResultList();
            
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return nguoiDungList;
    }
    
    // Lấy tổng số người dùng
    public long getTotalNguoiDung() {
        long total = 0;
        Session session = null;
        Transaction transaction = null;
        
        try {
            if (factory == null) {
                factory = HibernateUtils.getSessionFactory();
            }
            session = factory.openSession();
            transaction = session.beginTransaction();
            
            String hql = "select count(*) from NguoiDung";
            Query<Long> query = session.createQuery(hql, Long.class);
            total = query.uniqueResult();
            
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            if (session != null) {
                session.close();
            }
        }
        return total;
    }
}



//package Dao;
//
//import org.springframework.stereotype.Repository;
//import java.util.List;
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.Transaction;
//import org.hibernate.query.Query;
//import HibernateUtils.HibernateUtils;
//import java.util.ArrayList;
//import FutaBus.bean.NguoiDung;
//
//@Repository
//public class NguoiDungDao {
//	
//	private static SessionFactory factory = HibernateUtils.getSessionFactory();
//	
//	public List<NguoiDung> getAllNguoiDung() {
//	    List<NguoiDung> nguoiDungList = new ArrayList<>();
//	    Session session = null;
//	    Transaction transaction = null;
//	    
//	    try {
//	        if (factory == null) {
//	            factory = HibernateUtils.getSessionFactory();
//	        }
//	        session = factory.openSession();
//	        transaction = session.beginTransaction();
//
//	        String hql = "from NguoiDung";
//	        Query<NguoiDung> query = session.createQuery(hql, NguoiDung.class);
//	        nguoiDungList = query.getResultList();
//	        
//	        transaction.commit();
//	    } catch (Exception e) {
//	        if (transaction != null) {
//	            transaction.rollback();
//	        }
//	        e.printStackTrace();
//	    } finally {
//	        if (session != null) {
//	            session.close();
//	        }
//	    }
//	    return nguoiDungList;
//	}
//
//}