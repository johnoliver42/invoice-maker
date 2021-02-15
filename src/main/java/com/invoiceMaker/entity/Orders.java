package com.invoiceMaker.entity;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.ManyToAny;

import javax.persistence.*;
import javax.xml.namespace.QName;
import java.util.HashSet;
import java.util.Set;

/**
 * Represents an Order that can have one or both
 * a shipment and/or an invoice.
 *
 * @author John Oliver
 */
@Entity(name = "Orders")
@Table(name = "Orders")
public class Orders {

    @Id
    @Column(name = "orderId")
    @GeneratedValue(strategy= GenerationType.AUTO, generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    private int id;

    @OneToOne(cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.EAGER)
    @JoinColumn(name = "Shipment_id", referencedColumnName = "id", nullable = true)
    private Shipment shipment;

    @OneToOne(cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.EAGER)
    @JoinColumn(name = "Invoice_id", referencedColumnName = "id", nullable = true)
    private Invoice invoice;

    @ManyToOne()
    @JoinColumn(name = "users_id", referencedColumnName = "id")
    private User user;

    public Orders() {
    }

    public Orders( Invoice invoice, User user) {

        this.invoice = invoice;
        this.user = user;
    }

    public Orders(Shipment shipment, User user) {
        this.shipment = shipment;

        this.user = user;
    }

    public Orders(Shipment shipment, Invoice invoice, User user) {
        this.shipment = shipment;
        this.invoice = invoice;
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Shipment getShipment() {
        return shipment;
    }

    public void setShipment(Shipment shipment) {
        this.shipment = shipment;
    }

    public Invoice getInvoice() {
        return invoice;
    }

    public void setInvoice(Invoice invoice) {
        this.invoice = invoice;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
