package com.invoiceMaker.entity;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 *
 * @author John Oliver
 */
@Entity(name = "ShipmentTracking")
@Table(name = "Shipment_Tracking")
@Setter
@Getter
public class ShipmentTracking {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    private int id;


}
