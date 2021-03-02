package com.invoiceMaker.persistance;

import com.invoiceMaker.entity.User;
import com.invoiceMaker.entity.Shipment;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import util.Database;



import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/** Test class for the UserDao object.
 *
 */
class UserDaoTest {

    com.invoiceMaker.persistance.UserDao userDao;
    private final Logger logger = LogManager.getLogger(this.getClass());

    @BeforeEach
    void setUp() {
        this.userDao = new UserDao();
        Database database = Database.getInstance();
        database.runSQL("Invoice-Maker_drop.sql");
        database.runSQL("Invoice-Maker_create.sql");
        database.runSQL("UsersTestData-07-10-2020-07-01-beta.sql");

    }

    @Test
    void getById() {

        com.invoiceMaker.entity.User retrievedUser = userDao.getById(3);
        assertNotNull(retrievedUser);
        assertEquals("Florine", retrievedUser.getFirstName());
    }

    @Test
    void saveOrUpdate() {
        String name = "Davis";
        com.invoiceMaker.entity.User userToUpdate = userDao.getById(3);
        userToUpdate.setLastName(name);
        userDao.saveOrUpdate(userToUpdate);
        com.invoiceMaker.entity.User retrievedUser = userDao.getById(3);

        assertEquals(name, retrievedUser.getLastName());
    }

    @Test
    void insert() {


        User newUser = new User("Fred", "Flintstone", "fflintstone@stoneage.com", "Construction", "101 Main St.", "", "New York", "NY", "00001");
        int id = userDao.insert(newUser);
        assertNotEquals(0,id);
        User insertedUser = userDao.getById(id);
        insertedUser.setId(0);
        assertEquals(newUser.getFirstName(), insertedUser.getFirstName());


    }

    @Test
    void delete() {
        userDao.delete(userDao.getById(3));
        assertNull(userDao.getById(3));
    }

    @Test
    void getAll() {
        List<User> users = userDao.getAll();

        assertEquals(100, users.size());
    }

    @Test
    void getByPropertyEqual() {
        List<User> users = userDao.getByPropertyLike("lastName", "Krajcik");
        assertEquals(1, users.size());
        assertEquals(55, users.get(0).getId());
    }

    @Test
    void getByPropertyLike() {
        List<User> users = userDao.getByPropertyLike("lastName", "j");
        assertEquals(4, users.size());
    }

    @Test
    void insertWithOrder() {


        User newUser = new User("Fred", "Flintstone", "fflintstone@stoneage.com"
                , "Construction", "101 Main St.", "", "New York", "NY"
                , "00001");

        Shipment testShipment = new Shipment();
        testShipment.setUserShipmentId(3);

        com.invoiceMaker.entity.Invoice testInvoice = new com.invoiceMaker.entity.Invoice();
        testInvoice.setInvoiceId(3);

        com.invoiceMaker.entity.Orders testOrder = new com.invoiceMaker.entity.Orders(null, null, newUser);
        newUser.addOrder(testOrder);



        int id = userDao.insert(newUser);
        com.invoiceMaker.entity.User insertedUser = userDao.getById(id);
        assertEquals(1, insertedUser.getOrders().size());
        assertNotEquals(0,id);

        insertedUser.setId(0);
        assertEquals(newUser.getFirstName(), insertedUser.getFirstName());


    }
}