package com.invoiceMaker.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 *
 * @author John Oliver
 */
@Entity(name = "ShippingCarrier")
@Table(name = "Shipping_Carrier")
@Getter
@Setter
public class ShippingCarrier {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    private int id;

    @Column(name = "displayName")
    private String displayName;

    @Column(name = "easyPostCarrierReference")
    private String easyPostCarrierReference;
}
