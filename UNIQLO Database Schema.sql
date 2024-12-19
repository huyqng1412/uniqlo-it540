create table uniqlo_hq (
	hq_id varchar(20) not null, 
    hq_location varchar(30) not null,
	constraint pk_uniqlohq primary key (hq_id)
); 

create table uniqlo_warehouse (
	warehouse_id varchar (20) not null, 
    warehouse_location varchar(30) not null, 
    hq_id varchar(20) not null, 
    constraint pk_warehouse primary key (warehouse_id),
    constraint fk_warehouse foreign key (hq_id)
		references uniqlo_hq(hq_id)
);

create table uniqlo_retail_store (
	store_id varchar(20) not null,
    store_location varchar(30) not null, 
    hq_id varchar(20) not null, 
    constraint pk_retailstore primary key (store_id),
    constraint fk_retailstore foreign key (hq_id)
		references uniqlo_hq(hq_id)
);

create table uniqlo_store_manager ( 
	managerID varchar(20) not null, 
    manager_name varchar(30) not null, 
    store_id varchar(20) not null, 
    constraint pk_manager primary key (managerID),
    constraint fk_manager foreign key (store_id)
		references uniqlo_retail_store(store_id)
);

create table uniqlo_sale_associate (
	employeeID varchar(20) not null, 
    first_name char(30) not null, 
    last_name char(30) not null, 
    managerID varchar(20) not null,
    constraint pk_sale_associate primary key (employeeID),
    constraint fk_sale_associate foreign key (managerID)
		references uniqlo_store_manager(managerID)
); 


create table uniqlo_customer (
	customerID int not null, 
    customer_first char(30) not null, 
    customer_last char(30) not null,
    constraint pk_customer primary key (customerID)
); 

create table uniqlo_order (
	orderID int not null, 
    order_date date not null, 
    customerID int not null,
    constraint pk_order primary key (orderID),
    constraint fk_order foreign key (customerID)
		references uniqlo_customer(customerID)
); 

create table uniqlo_designer (
	designerID varchar(20) not null, 
    designer_name char(30) not null,
    constraint pk_designer primary key (designerID)
);

create table uniqlo_product (
	product_ID varchar(20) not null, 
    designerID varchar(20) not null,
    product_name varchar(30) not null,
    constraint pk_product primary key (product_ID),
    constraint fk_product foreign key (designerID)
		references uniqlo_designer(designerID)
); 

create table uniqlo_order_detail (
	orderID int not null, 
	product_ID varchar(20) not null, 
    employeeID varchar(20) not null, 
    constraint pk_order_detail primary key (orderID),
    constraint fk_order_detail1 foreign key (orderID)
		references uniqlo_order(orderID),
    constraint fk_order_detail2 foreign key (product_ID)
		references uniqlo_product(product_ID),
	constraint fk_order_detail3 foreign key (employeeID)
		references uniqlo_sale_associate(employeeID)
);


    
