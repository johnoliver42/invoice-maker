package com.invoiceMaker.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 *
 * @author John Oliver
 */
@Entity(name = "ShippingCarrier")
@Table(name = "Shipping_Carrier")
@Getter
@Setter
public class ShippingCarrier {
}
