package com.invoiceMaker.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 *
 * @author John Oliver
 */
@Entity(name = "ShippingAccount")
@Table(name = "Shipping_Account")
@Getter
@Setter
public class ShippingAccount {
}
