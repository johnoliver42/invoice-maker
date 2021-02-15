package com.invoiceMaker.persistance;

import com.invoiceMaker.entity.Orders;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Expression;
import javax.persistence.criteria.Root;
import java.util.List;

/** Provides database access for the Orders table
 *
 * @author John Oliver
 */
public class OrdersDao {

    private final Logger logger = LogManager.getLogger(this.getClass());
    SessionFactory sessionFactory = SessionFactoryProvider.getSessionFactory();

    /**
     * Get order by id
     */
    public Orders getById(int id) {
        Session session = sessionFactory.openSession();
        Orders order = session.get( Orders.class, id );
        session.close();
        return order;
    }

    /**
     * update order
     * @param order  Orders to be inserted or updated
     */
    public void saveOrUpdate(Orders order) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.saveOrUpdate(order);
        transaction.commit();
        session.close();
    }

    /**
     * update order
     * @param order  Orders to be inserted or updated
     */
    public int insert(Orders order) {
        int id = 0;
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        id = (int)session.save(order);
        transaction.commit();
        session.close();
        return id;
    }

    /**
     * Delete a order
     * @param order Orders to be deleted
     */
    public void delete(Orders order) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.delete(order);
        transaction.commit();
        session.close();
    }


    /** Return a list of all orders
     *
     * @return All orders
     */
    public List<Orders> getAll() {

        Session session = sessionFactory.openSession();

        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Orders> query = builder.createQuery( Orders.class );
        Root<Orders> root = query.from( Orders.class );
        List<Orders> orders = session.createQuery( query ).getResultList();

        logger.debug("The list of orders " + orders);
        session.close();

        return orders;
    }

    /**
     * Get order by property (exact match)
     *
     */
    public List<Orders> getByPropertyEqual(String propertyName, String value) {
        Session session = sessionFactory.openSession();

        logger.debug("Searching for order with " + propertyName + " = " + value);

        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Orders> query = builder.createQuery( Orders.class );
        Root<Orders> root = query.from( Orders.class );
        query.select(root).where(builder.equal(root.get(propertyName), value));
        List<Orders> orders = session.createQuery( query ).getResultList();

        session.close();
        return orders;
    }

    /**
     * Get order by property (like)
     * sample usage: getByPropertyLike("lastname", "C")
     */
    public List<Orders> getByPropertyLike(String propertyName, String value) {
        Session session = sessionFactory.openSession();

        logger.debug("Searching for order with {} = {}",  propertyName, value);

        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Orders> query = builder.createQuery( Orders.class );
        Root<Orders> root = query.from( Orders.class );
        Expression<String> propertyPath = root.get(propertyName);

        query.where(builder.like(propertyPath, "%" + value + "%"));

        List<Orders> orders = session.createQuery( query ).getResultList();
        session.close();
        return orders;
    }

}
