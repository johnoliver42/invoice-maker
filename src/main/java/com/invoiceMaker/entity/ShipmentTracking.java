package com.invoiceMaker.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 *
 * @author John Oliver
 */
@Entity(name = "ShipmentTracking")
@Table(name = "Shipment_Tracking")
@Setter
@Getter
public class ShipmentTracking {
}
