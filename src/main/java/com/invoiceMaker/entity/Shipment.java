package com.invoiceMaker.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity(name = "Shipment")
@Table(name = "Shipment")
public class Shipment {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator="native")
    @GenericGenerator(name = "native",strategy = "native")
    private int id;

    @Column(name = "userShipmentId")
    private String userShipmentId;

    private

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserShipmentId() {
        return userShipmentId;
    }

    public void setUserShipmentId(String userShipmentId) {
        this.userShipmentId = userShipmentId;
    }
}
