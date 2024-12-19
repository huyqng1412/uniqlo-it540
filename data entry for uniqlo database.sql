insert into uniqlo_hq (hq_id, hq_location)
values
	('UQUS001', 'United States'),
    ('UQJP001', 'Japan'),
    ('UQVN001', 'Vietnam'),
    ('UQCN001', 'China'),
    ('UQAU001', 'Australia')
;

insert into uniqlo_warehouse (warehouse_id, warehouse_location, hq_id)
values
	('NJ008865', 'New Jersey', 'UQUS001'),
    ('T1350063', 'Tokyo', 'UQJP001'),
    ('HCM01210', 'Ho Chi Minh City', 'UQVN001'),
    ('SH002002', 'Shanghai', 'UQCN001'),
    ('VIC02024', 'Victoria', 'UQAU001')
; 

insert into uniqlo_retail_store (store_id, store_location, hq_id)	
values
	('MCL100', 'Virginia', 'UQUS001'),
    ('ARL200', 'Virginia', 'UQUS001'),
    ('CHC234', 'Tokyo', 'UQJP001'),
    ('KYT543', 'Kyoto', 'UQJP001'),
    ('D10099', 'Ho Chi Minh City', 'UQVN001'),
    ('HK1748', 'Hanoi City', 'UQVN001'),
    ('JIA432', 'Shanghai', 'UQCN001'),
    ('MCC909', 'Sydney', 'UQAU001')
; 

insert into uniqlo_store_manager (managerID, manager_name, store_id)
values 
	('ROBUQUS9', 'Robert', 'MCL100'),
    ('JASUQUS8', 'Jason', 'ARL200'), 
    ('YAMUQJP5', 'Yamato', 'CHC234'),
    ('HIDUQJP0', 'Hideki', 'CHC234'),
    ('HIEUQVN1', 'Hieu', 'D10099'),
    ('KHAUQVN2', 'Khang', 'HK1748'), 
    ('TIAUQCN3', 'Tian', 'JIA432'),
    ('GARUQAU7', 'Garry', 'MCC909')
; 

insert into uniqlo_sale_associate (employeeID, first_name, last_name, managerID)
values 
	('US0908C', 'Huy', 'Nguyen', 'ROBUQUS9'),
    ('US2442N', 'Brian', 'Kasperson', 'JASUQUS8'),
    ('JP5454N', 'Azuma', 'Utaki', 'YAMUQJP5'),
    ('JP7865L', 'Minamoto', 'Atsuhi', 'HIDUQJP0'),
    ('VN7504P', 'Khoa', 'Luong', 'HIEUQVN1'),
    ('VN7554K', 'Thai', 'Truong', 'KHAUQVN2'),
    ('CN4317Q', 'Zhu', 'Wan', 'TIAUQCN3'), 
    ('CN4534Y', 'Chen', 'Qing', 'GARUQAU7'),
    ('US1423S', 'Kylian', 'Marcenzo', 'ROBUQUS9'),
    ('AU4370Z', 'Simon', 'Harklay', 'GARUQAU7')
;

insert into uniqlo_customer (customerID, customer_first, customer_last)
values
	('09024', 'Danny', 'Robinson'),
    ('43237', 'Lance', 'Vorstrom'),
    ('81230', 'Kent', 'Wallington'),
    ('53463', 'Stuart', 'Foreman')
; 

insert into uniqlo_designer (designerID, designer_name)
values
	('AH01H78', 'Anya Hindmarch'), 
    ('MM01K42', 'Marimekko'),
    ('JW01U89', 'JW Anderson')
; 

insert into uniqlo_product (product_ID, designerID, product_name)
values 
	('472009', 'AH01H78', 'PUFFERTECH Shirt Jacket'),
    ('473154', 'AH01H78', '100% Merino Crew Neck Jumper'),
    ('474871', 'MM01K42', 'Fleece Cardigan'),
    ('469350', 'MM01K42', 'Lambswool Blend Dress'), 
    ('471722', 'JW01U89', 'Padded Quilted Blouson'),
    ('471723', 'JW01U89', 'Chesterfield Coat')
;

insert into uniqlo_order (orderID, order_date, customerID)
values 
	('1', '2024-10-1', '09024'),
    ('2', '2024-08-11', '43237'),
    ('3', '2023-09-20', '81230'), 
    ('4', '2023-03-08', '81230'),
    ('5', '2024-11-25', '53463'),
    ('6', '2022-01-30', '53463'),
    ('7', '2024-01-01', '43237')
; 

insert into uniqlo_order_detail (orderID, product_ID, employeeID)
values 
	('1', '473154', 'JP5454N'),
    ('2', '469350', 'US1423S'),
    ('3', '472009', 'US1423S'),
    ('4', '471723', 'CN4534Y'), 
    ('5', '473154', 'VN7554K'),
    ('6', '473154', 'CN4317Q'),
    ('7', '469350', 'AU4370Z')
;
    
























    
    
    
    
	
	