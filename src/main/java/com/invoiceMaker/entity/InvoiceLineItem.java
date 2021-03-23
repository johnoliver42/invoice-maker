package com.invoiceMaker.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 *
 * @author John Oliver
 */
@Entity(name = "InvoiceLineItem")
@Table(name = "Invoice_Line_Item")
@Getter
@Setter
public class InvoiceLineItem {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    private int id;

    @Column(name = "productId")
    private String productId;

    @Column(name = "description")
    private String description;

    @Column(name = "price")
    private float price;

    @Column(name = "quantity")
    private int quantity;

    @ManyToOne
    @JoinColumn(name = "Invoice_id")
    private Invoice invoice;



}
