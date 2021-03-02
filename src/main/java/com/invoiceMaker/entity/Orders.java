package com.invoiceMaker.entity;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;


/**
 * Represents an Order that can have one or both
 * a shipment and/or an invoice.
 *
 * @author John Oliver
 */
@Entity(name = "Orders")
@Table(name = "Orders")
@Getter
@Setter
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


}
