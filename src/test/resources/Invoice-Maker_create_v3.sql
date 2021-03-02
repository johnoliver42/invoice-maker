-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2021-03-02 08:52:33.769

-- tables
-- Table: Invoice
CREATE TABLE Invoice (
    id int NOT NULL AUTO_INCREMENT,
    userInvoiceId varchar(50) NULL,
    shipmentId int NULL,
    createDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    lastUpdated timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    businessName varchar(100) NULL,
    businessPhone varchar(15) NULL,
    businessStreet1 varchar(50) NULL,
    businessStreet2 varchar(50) NULL,
    businessCity varchar(50) NULL,
    businessState varchar(50) NULL,
    businessZip varchar(50) NULL,
    businessEmail varchar(50) NULL,
    notes varchar(300) NULL,
    subTotal decimal(10,2) NULL DEFAULT 0.00,
    total decimal(10,2) NULL DEFAULT 0.00,
    tax decimal(7,5) NULL DEFAULT 0.00,
    CONSTRAINT Invoice_pk PRIMARY KEY (id)
);

-- Table: Invoice_Line_Item
CREATE TABLE Invoice_Line_Item (
    id int NOT NULL,
    productId varchar(20) NOT NULL,
    description varchar(75) NOT NULL,
    price decimal(10,2) NOT NULL,
    quantity int NOT NULL,
    Invoice_id int NOT NULL,
    CONSTRAINT Invoice_Line_Item_pk PRIMARY KEY (id)
);

-- Table: Orders
CREATE TABLE Orders (
    orderId int NOT NULL AUTO_INCREMENT,
    Invoice_id int NULL,
    Shipment_id int NULL,
    users_id int NOT NULL,
    UNIQUE INDEX invoiceId_ak_1 (Invoice_id),
    UNIQUE INDEX shipmentId_ak_2 (Shipment_id),
    CONSTRAINT Orders_pk PRIMARY KEY (orderId)
);

-- Table: Shipment
CREATE TABLE Shipment (
    id int NOT NULL AUTO_INCREMENT,
    userShipmentId varchar(50) NULL,
    easyPostShipmentId varchar(200) NULL,
    easyPostTrackerId varchar(200) NULL,
    createDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    lastUpdated timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    fromName varchar(50) NULL,
    fromEmail varchar(50) NULL,
    fromPhone varchar(50) NULL,
    fromStreet1 varchar(50) NULL,
    fromStreet2 varchar(50) NULL,
    fromCity varchar(50) NULL,
    fromState varchar(50) NULL,
    fromZip varchar(50) NULL,
    toName int NULL,
    toBusiness int NULL,
    toStreet1 int NULL,
    toStreet2 int NULL,
    toCity int NULL,
    toState int NULL,
    toZip int NULL,
    weight int NULL,
    labelDate date NULL,
    easyPostCarrierReference varchar(20) NULL,
    trackingNumber varchar(100) NOT NULL,
    Invoice_id int NULL,
    shippingLabelLink varchar(200) NOT NULL,
    CONSTRAINT Shipment_pk PRIMARY KEY (id)
);

-- Table: Shipment_Tracking
CREATE TABLE Shipment_Tracking (
    id int NOT NULL,
    shipmentId int NOT NULL,
    easyPostTracker varchar(200) NOT NULL,
    trackingNumber varchar(75) NOT NULL,
    shipping_carrier_id int NULL,
    trackingLink varchar(200) NOT NULL,
    CONSTRAINT Shipment_Tracking_pk PRIMARY KEY (id)
);

-- Table: Shipping_Account
CREATE TABLE Shipping_Account (
    users_id int NOT NULL,
    easyApiKeyProdection varchar(100) NULL,
    easyPostApiKeyTest varchar(100) NULL,
    balance decimal(12,4) NOT NULL,
    CONSTRAINT Shipping_Account_pk PRIMARY KEY (users_id)
);

-- Table: Shipping_Account_Carrier
CREATE TABLE Shipping_Account_Carrier (
    Shipping_Account_users_id int NOT NULL,
    Shipping_Carrier_id int NOT NULL,
    CONSTRAINT Shipping_Account_Carrier_pk PRIMARY KEY (Shipping_Account_users_id,Shipping_Carrier_id)
);

-- Table: Shipping_Carrier
CREATE TABLE Shipping_Carrier (
    id int NOT NULL,
    displayName varchar(20) NOT NULL,
    easyPostCarrierReference varchar(20) NOT NULL,
    UNIQUE INDEX easyPostCarrierReferenceKey_ak_1 (easyPostCarrierReference),
    CONSTRAINT Shipping_Carrier_pk PRIMARY KEY (id)
);

-- Table: User_Roles
CREATE TABLE User_Roles (
    id int NOT NULL,
    email varchar(100) NOT NULL,
    roleName varchar(10) NOT NULL,
    CONSTRAINT User_Roles_pk PRIMARY KEY (id)
);

-- Table: Users
CREATE TABLE Users (
    id int NOT NULL AUTO_INCREMENT,
    firstName varchar(50) NOT NULL,
    lastName varchar(50) NOT NULL,
    email varchar(100) NOT NULL,
    street1 varchar(100) NULL,
    street2 varchar(100) NULL,
    city varchar(100) NULL,
    state varchar(50) NULL,
    postalCode varchar(50) NULL,
    businessName varchar(100) NULL,
    createDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    lastUpdated timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    password varchar(100) NOT NULL,
    CONSTRAINT Users_pk PRIMARY KEY (id)
);

-- foreign keys
-- Reference: Invoice_Line_Item_Invoice (table: Invoice_Line_Item)
ALTER TABLE Invoice_Line_Item ADD CONSTRAINT Invoice_Line_Item_Invoice FOREIGN KEY Invoice_Line_Item_Invoice (Invoice_id)
    REFERENCES Invoice (id)
    ON DELETE CASCADE;

-- Reference: Order_Invoice (table: Invoice)
ALTER TABLE Invoice ADD CONSTRAINT Order_Invoice FOREIGN KEY Order_Invoice (id)
    REFERENCES Orders (Invoice_id)
    ON DELETE CASCADE;

-- Reference: Order_users (table: Orders)
ALTER TABLE Orders ADD CONSTRAINT Order_users FOREIGN KEY Order_users (users_id)
    REFERENCES Users (id)
    ON DELETE CASCADE;

-- Reference: Shipment_Invoice (table: Shipment)
ALTER TABLE Shipment ADD CONSTRAINT Shipment_Invoice FOREIGN KEY Shipment_Invoice (Invoice_id)
    REFERENCES Invoice (id);

-- Reference: Shipment_Order (table: Shipment)
ALTER TABLE Shipment ADD CONSTRAINT Shipment_Order FOREIGN KEY Shipment_Order (id)
    REFERENCES Orders (Shipment_id)
    ON DELETE CASCADE;

-- Reference: Shipment_Shipment_Tracking (table: Shipment_Tracking)
ALTER TABLE Shipment_Tracking ADD CONSTRAINT Shipment_Shipment_Tracking FOREIGN KEY Shipment_Shipment_Tracking (id)
    REFERENCES Shipment (id)
    ON DELETE CASCADE;

-- Reference: Shipment_Shipping_Carrier (table: Shipment)
ALTER TABLE Shipment ADD CONSTRAINT Shipment_Shipping_Carrier FOREIGN KEY Shipment_Shipping_Carrier (easyPostCarrierReference)
    REFERENCES Shipping_Carrier (easyPostCarrierReference)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: Shipment_Tracking_Shipping_Carrier (table: Shipment_Tracking)
ALTER TABLE Shipment_Tracking ADD CONSTRAINT Shipment_Tracking_Shipping_Carrier FOREIGN KEY Shipment_Tracking_Shipping_Carrier (shipping_carrier_id)
    REFERENCES Shipping_Carrier (id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE;

-- Reference: Shipping_Account_Carrier_Shipping_Account (table: Shipping_Account_Carrier)
ALTER TABLE Shipping_Account_Carrier ADD CONSTRAINT Shipping_Account_Carrier_Shipping_Account FOREIGN KEY Shipping_Account_Carrier_Shipping_Account (Shipping_Account_users_id)
    REFERENCES Shipping_Account (users_id)
    ON DELETE CASCADE;

-- Reference: Shipping_Account_Carrier_Shipping_Carrier (table: Shipping_Account_Carrier)
ALTER TABLE Shipping_Account_Carrier ADD CONSTRAINT Shipping_Account_Carrier_Shipping_Carrier FOREIGN KEY Shipping_Account_Carrier_Shipping_Carrier (Shipping_Carrier_id)
    REFERENCES Shipping_Carrier (id)
    ON DELETE RESTRICT;

-- Reference: Shipping_Account_Users (table: Shipping_Account)
ALTER TABLE Shipping_Account ADD CONSTRAINT Shipping_Account_Users FOREIGN KEY Shipping_Account_Users (users_id)
    REFERENCES Users (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

-- Reference: Users_User_Roles (table: User_Roles)
ALTER TABLE User_Roles ADD CONSTRAINT Users_User_Roles FOREIGN KEY Users_User_Roles (id)
    REFERENCES Users (id);

-- End of file.

