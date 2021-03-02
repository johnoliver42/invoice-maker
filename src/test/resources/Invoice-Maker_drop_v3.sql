-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-03-02 08:52:33.769

-- foreign keys
ALTER TABLE Invoice_Line_Item
    DROP FOREIGN KEY Invoice_Line_Item_Invoice;

ALTER TABLE Invoice
    DROP FOREIGN KEY Order_Invoice;

ALTER TABLE Orders
    DROP FOREIGN KEY Order_users;

ALTER TABLE Shipment
    DROP FOREIGN KEY Shipment_Invoice;

ALTER TABLE Shipment
    DROP FOREIGN KEY Shipment_Order;

ALTER TABLE Shipment_Tracking
    DROP FOREIGN KEY Shipment_Shipment_Tracking;

ALTER TABLE Shipment
    DROP FOREIGN KEY Shipment_Shipping_Carrier;

ALTER TABLE Shipment_Tracking
    DROP FOREIGN KEY Shipment_Tracking_Shipping_Carrier;

ALTER TABLE Shipping_Account_Carrier
    DROP FOREIGN KEY Shipping_Account_Carrier_Shipping_Account;

ALTER TABLE Shipping_Account_Carrier
    DROP FOREIGN KEY Shipping_Account_Carrier_Shipping_Carrier;

ALTER TABLE Shipping_Account
    DROP FOREIGN KEY Shipping_Account_Users;

ALTER TABLE User_Roles
    DROP FOREIGN KEY Users_User_Roles;

-- tables
DROP TABLE Invoice;

DROP TABLE Invoice_Line_Item;

DROP TABLE Orders;

DROP TABLE Shipment;

DROP TABLE Shipment_Tracking;

DROP TABLE Shipping_Account;

DROP TABLE Shipping_Account_Carrier;

DROP TABLE Shipping_Carrier;

DROP TABLE User_Roles;

DROP TABLE Users;

-- End of file.

