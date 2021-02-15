package com.invoiceMaker.entity;

import org.hibernate.annotations.GenericGenerator;


import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;


/**
 * This class represents a user.
 *
 * @author John Oliver
 */
@Entity(name = "User")
@Table(name = "Users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    private int id;
    @Column(name = "firstName")
    private String fistName;
    @Column(name = "lastName")
    private String lastName;
    @Column(name = "email")
    private String email;
    @Column(name = "businessName")
    private String businessName;
    @Column(name = "street1")
    private String street1;
    @Column(name = "street2")
    private String street2;
    @Column(name = "city")
    private String city;
    @Column(name = "state")
    private String state;
    @Column(name = "postalCode")
    private String postalCode;

    @OneToMany(  cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.EAGER)
    @JoinColumn(name = "users_id")
    private Set<com.invoiceMaker.entity.Orders> orders = new HashSet<>();

    /**
     * Instantiates a new User.
     */
    public User(){}

    /**
     * Instantiates a new User.
     *
     * @param fistName     the fist name
     * @param lastName     the last name
     * @param email        the email
     * @param businessName the business name
     * @param street1      the street 1
     * @param street2      the street 2
     * @param city         the city
     * @param state        the state
     * @param postalCode   the postal code
     */
    public User(String fistName, String lastName, String email, String businessName, String street1, String street2, String city, String state, String postalCode) {
        this.fistName = fistName;
        this.lastName = lastName;
        this.email = email;
        this.businessName = businessName;
        this.street1 = street1;
        this.street2 = street2;
        this.city = city;
        this.state = state;
        this.postalCode = postalCode;
    }

    /**
     * Gets id.
     *
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * Sets id.
     *
     * @param id the id
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * Gets fist name.
     *
     * @return the fist name
     */
    public String getFistName() {
        return fistName;
    }

    /**
     * Sets fist name.
     *
     * @param fistName the fist name
     */
    public void setFistName(String fistName) {
        this.fistName = fistName;
    }

    /**
     * Gets last name.
     *
     * @return the last name
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * Sets last name.
     *
     * @param lastName the last name
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * Gets email.
     *
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * Sets email.
     *
     * @param email the email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * Gets business name.
     *
     * @return the business name
     */
    public String getBusinessName() {
        return businessName;
    }

    /**
     * Sets business name.
     *
     * @param businessName the business name
     */
    public void setBusinessName(String businessName) {
        this.businessName = businessName;
    }

    /**
     * Gets street 1.
     *
     * @return the street 1
     */
    public String getStreet1() {
        return street1;
    }

    /**
     * Sets street 1.
     *
     * @param street1 the street 1
     */
    public void setStreet1(String street1) {
        this.street1 = street1;
    }

    /**
     * Gets street 2.
     *
     * @return the street 2
     */
    public String getStreet2() {
        return street2;
    }

    /**
     * Sets street 2.
     *
     * @param street2 the street 2
     */
    public void setStreet2(String street2) {
        this.street2 = street2;
    }

    /**
     * Gets city.
     *
     * @return the city
     */
    public String getCity() {
        return city;
    }

    /**
     * Sets city.
     *
     * @param city the city
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * Gets state.
     *
     * @return the state
     */
    public String getState() {
        return state;
    }

    /**
     * Sets state.
     *
     * @param state the state
     */
    public void setState(String state) {
        this.state = state;
    }

    /**
     * Gets postal code.
     *
     * @return the postal code
     */
    public String getPostalCode() {
        return postalCode;
    }

    /**
     * Sets postal code.
     *
     * @param postalCode the postal code
     */
    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    /**
     * Gets orders.
     *
     * @return the orders
     */
    public Set<com.invoiceMaker.entity.Orders> getOrders() {
        return orders;
    }

    /**
     * Sets orders.
     *
     * @param orders the orders
     */
    public void setOrders(Set<com.invoiceMaker.entity.Orders> orders) {
        this.orders = orders;
    }

    /** Add an order to a user
     *
     * @param order
     */
    public void addOrder(com.invoiceMaker.entity.Orders order) {

        this.orders.add(order);
        order.setUser(this);
    }

    /**
     * Remove order.
     *
     * @param order the order
     */
    public void removeOrder(com.invoiceMaker.entity.Orders order) {

        this.orders.remove(order);
        order.setUser(null);
    }
}
