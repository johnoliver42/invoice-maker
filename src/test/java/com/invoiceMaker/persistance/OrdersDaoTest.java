package com.invoiceMaker.persistance;


import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import util.Database;

import static org.junit.jupiter.api.Assertions.*;

/**
 *
 *
 * @author John Oliver
 */
class OrdersDaoTest {

    private com.invoiceMaker.persistance.OrdersDao ordersDao;
    com.invoiceMaker.persistance.UserDao userDao;

    private final Logger logger = LogManager.getLogger(this.getClass());

    @BeforeEach
    void setUp() {
        this.ordersDao = new com.invoiceMaker.persistance.OrdersDao();
        this.userDao = new com.invoiceMaker.persistance.UserDao();
        Database database = Database.getInstance();
        database.runSQL("Invoice-Maker_drop.sql");
        database.runSQL("Invoice-Maker_create.sql");
        database.runSQL("UsersTestData-07-10-2020-07-01-beta.sql");
    }

    @Test
    void getById() {
    }

    @Test
    void saveOrUpdate() {
    }

    @Test
    void insert() {
    }

    @Test
    void delete() {
    }

    @Test
    void getAll() {
    }

    @Test
    void getByPropertyEqual() {
    }

    @Test
    void getByPropertyLike() {
    }
}