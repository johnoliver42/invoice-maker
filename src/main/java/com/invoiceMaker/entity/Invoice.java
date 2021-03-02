package com.invoiceMaker.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Columns;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity(name = "Invoice")
@Table(name = "Invoice")
@Getter
@Setter
public class Invoice {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    private int id;

    @OneToOne
    @JoinColumn(name = "id")
    private Orders order;

    @Column(name = "userInvoiceId")
    private int userInvoiceId;

    @Column(name = "shipmentId")
    private int shipmentId;

    @Column(name = "createDate")
    private java.sql.Date createDate; // TODO: Choose proper date type

    @Column(name = "lastUpdated")
    private java.sql.Date lastUpdated; // TODO: Choose proper date type

    @Column(name = "businessName")
    private String businessName;

    @Column(name = "businessPhone")
    private String businessPhone;

    @Column(name = "businessStreet1")
    private String businessStreet1;

    @Column(name = "businessStreet2")
    private String businessStreet2;

    @Column(name = "businessCity")
    private String businessCity;

    @Column(name = "businessState")
    private String businessState;

    @Column(name = "businessZip")
    private String businessZip;

    @Column(name = "businessEmail")
    private String businessEmail;

    @Column(name = "notes")
    private String notes;

    @Column(name = "subTotal")
    private float subTotal;

    @Column(name = "total")
    private float total;

    @Column(name = "tax")
    private float tax;
}
