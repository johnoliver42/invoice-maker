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
@Entity(name = "ShippingAccountCarrier")
@Table(name = "Shipping_Account_Carrier")
@Getter
@Setter
public class ShippingAccountCarrier {


    private int shippingAccountUsers;

    private int shippingCarrierId;
}
