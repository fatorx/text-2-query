# customers, employees, privileges, employee_privileges
# inventory_transaction_types, orders_status, orders_tax_status
# shippers, orders, products, purchase_order_status, 
# suppliers, purchase_orders, inventory_transactions, invoices
# order_details_status, order_details, purchase_order_details, sales_reports


INSERT INTO northwind.customers (id,company,last_name,first_name,email_address,job_title,business_phone,home_phone,mobile_phone,fax_number,address,city,state_province,zip_postal_code,country_region,web_page,notes,attachments) VALUES
	 (1,'Company A','Bedecs','Anna',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','123 1st Street','Seattle','WA','99999','USA',NULL,NULL,''),
	 (2,'Company B','Gratacos Solsona','Antonio',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','123 2nd Street','Boston','MA','99999','USA',NULL,NULL,''),
	 (3,'Company C','Axen','Thomas',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','123 3rd Street','Los Angelas','CA','99999','USA',NULL,NULL,''),
	 (4,'Company D','Lee','Christina',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 4th Street','New York','NY','99999','USA',NULL,NULL,''),
	 (5,'Company E','O’Donnell','Martin',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','123 5th Street','Minneapolis','MN','99999','USA',NULL,NULL,''),
	 (6,'Company F','Pérez-Olaeta','Francisco',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 6th Street','Milwaukee','WI','99999','USA',NULL,NULL,''),
	 (7,'Company G','Xie','Ming-Yang',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','123 7th Street','Boise','ID','99999','USA',NULL,NULL,''),
	 (8,'Company H','Andersen','Elizabeth',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','123 8th Street','Portland','OR','99999','USA',NULL,NULL,''),
	 (9,'Company I','Mortensen','Sven',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 9th Street','Salt Lake City','UT','99999','USA',NULL,NULL,''),
	 (10,'Company J','Wacker','Roland',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 10th Street','Chicago','IL','99999','USA',NULL,NULL,'');
INSERT INTO northwind.customers (id,company,last_name,first_name,email_address,job_title,business_phone,home_phone,mobile_phone,fax_number,address,city,state_province,zip_postal_code,country_region,web_page,notes,attachments) VALUES
	 (11,'Company K','Krschne','Peter',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 11th Street','Miami','FL','99999','USA',NULL,NULL,''),
	 (12,'Company L','Edwards','John',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 12th Street','Las Vegas','NV','99999','USA',NULL,NULL,''),
	 (13,'Company M','Ludick','Andre',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','456 13th Street','Memphis','TN','99999','USA',NULL,NULL,''),
	 (14,'Company N','Grilo','Carlos',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','456 14th Street','Denver','CO','99999','USA',NULL,NULL,''),
	 (15,'Company O','Kupkova','Helena',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','456 15th Street','Honolulu','HI','99999','USA',NULL,NULL,''),
	 (16,'Company P','Goldschmidt','Daniel',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','456 16th Street','San Francisco','CA','99999','USA',NULL,NULL,''),
	 (17,'Company Q','Bagel','Jean Philippe',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','456 17th Street','Seattle','WA','99999','USA',NULL,NULL,''),
	 (18,'Company R','Autier Miconi','Catherine',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','456 18th Street','Boston','MA','99999','USA',NULL,NULL,''),
	 (19,'Company S','Eggerer','Alexander',NULL,'Accounting Assistant','(123)555-0100',NULL,NULL,'(123)555-0101','789 19th Street','Los Angelas','CA','99999','USA',NULL,NULL,''),
	 (20,'Company T','Li','George',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 20th Street','New York','NY','99999','USA',NULL,NULL,'');
INSERT INTO northwind.customers (id,company,last_name,first_name,email_address,job_title,business_phone,home_phone,mobile_phone,fax_number,address,city,state_province,zip_postal_code,country_region,web_page,notes,attachments) VALUES
	 (21,'Company U','Tham','Bernard',NULL,'Accounting Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 21th Street','Minneapolis','MN','99999','USA',NULL,NULL,''),
	 (22,'Company V','Ramos','Luciana',NULL,'Purchasing Assistant','(123)555-0100',NULL,NULL,'(123)555-0101','789 22th Street','Milwaukee','WI','99999','USA',NULL,NULL,''),
	 (23,'Company W','Entin','Michael',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 23th Street','Portland','OR','99999','USA',NULL,NULL,''),
	 (24,'Company X','Hasselberg','Jonas',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','789 24th Street','Salt Lake City','UT','99999','USA',NULL,NULL,''),
	 (25,'Company Y','Rodman','John',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 25th Street','Chicago','IL','99999','USA',NULL,NULL,''),
	 (26,'Company Z','Liu','Run',NULL,'Accounting Assistant','(123)555-0100',NULL,NULL,'(123)555-0101','789 26th Street','Miami','FL','99999','USA',NULL,NULL,''),
	 (27,'Company AA','Toh','Karen',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 27th Street','Las Vegas','NV','99999','USA',NULL,NULL,''),
	 (28,'Company BB','Raghav','Amritansh',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 28th Street','Memphis','TN','99999','USA',NULL,NULL,''),
	 (29,'Company CC','Lee','Soo Jung',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 29th Street','Denver','CO','99999','USA',NULL,NULL,'');



INSERT INTO northwind.employees (id,company,last_name,first_name,email_address,job_title,business_phone,home_phone,mobile_phone,fax_number,address,city,state_province,zip_postal_code,country_region,web_page,notes,attachments) VALUES
	 (1,'Northwind Traders','Freehafer','Nancy','nancy@northwindtraders.com','Sales Representative','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 1st Avenue','Seattle','WA','99999','USA','#http://northwindtraders.com#',NULL,''),
	 (2,'Northwind Traders','Cencini','Andrew','andrew@northwindtraders.com','Vice President, Sales','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 2nd Avenue','Bellevue','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#','Joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales.',''),
	 (3,'Northwind Traders','Kotas','Jan','jan@northwindtraders.com','Sales Representative','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 3rd Avenue','Redmond','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#','Was hired as a sales associate and was promoted to sales representative.',''),
	 (4,'Northwind Traders','Sergienko','Mariya','mariya@northwindtraders.com','Sales Representative','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 4th Avenue','Kirkland','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#',NULL,''),
	 (5,'Northwind Traders','Thorpe','Steven','steven@northwindtraders.com','Sales Manager','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 5th Avenue','Seattle','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#','Joined the company as a sales representative and was promoted to sales manager.  Fluent in French.',''),
	 (6,'Northwind Traders','Neipper','Michael','michael@northwindtraders.com','Sales Representative','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 6th Avenue','Redmond','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#','Fluent in Japanese and can read and write French, Portuguese, and Spanish.',''),
	 (7,'Northwind Traders','Zare','Robert','robert@northwindtraders.com','Sales Representative','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 7th Avenue','Seattle','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#',NULL,''),
	 (8,'Northwind Traders','Giussani','Laura','laura@northwindtraders.com','Sales Coordinator','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 8th Avenue','Redmond','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#','Reads and writes French.',''),
	 (9,'Northwind Traders','Hellung-Larsen','Anne','anne@northwindtraders.com','Sales Representative','(123)555-0100','(123)555-0102',NULL,'(123)555-0103','123 9th Avenue','Seattle','WA','99999','USA','http://northwindtraders.com#http://northwindtraders.com/#','Fluent in French and German.','');

	
INSERT INTO northwind.`privileges` (id,privilege_name) VALUES
	 (2,'Purchase Approvals');

	
	
INSERT INTO northwind.employee_privileges (employee_id,privilege_id) VALUES
	 (2,2);


	
INSERT INTO northwind.inventory_transaction_types (id,type_name) VALUES
	 (1,'Purchased'),
	 (2,'Sold'),
	 (3,'On Hold'),
	 (4,'Waste');

	
INSERT INTO northwind.orders_status (id,status_name) VALUES
	 (0,'New'),
	 (1,'Invoiced'),
	 (2,'Shipped'),
	 (3,'Closed');

INSERT INTO northwind.orders_tax_status (id,tax_status_name) VALUES
	 (0,'Tax Exempt'),
	 (1,'Taxable');
	
INSERT INTO northwind.shippers (id,company,last_name,first_name,email_address,job_title,business_phone,home_phone,mobile_phone,fax_number,address,city,state_province,zip_postal_code,country_region,web_page,notes,attachments) VALUES
	 (1,'Shipping Company A',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'123 Any Street','Memphis','TN','99999','USA',NULL,NULL,''),
	 (2,'Shipping Company B',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'123 Any Street','Memphis','TN','99999','USA',NULL,NULL,''),
	 (3,'Shipping Company C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'123 Any Street','Memphis','TN','99999','USA',NULL,NULL,'');
	
	
	
INSERT INTO northwind.orders (id,employee_id,customer_id,order_date,shipped_date,shipper_id,ship_name,ship_address,ship_city,ship_state_province,ship_zip_postal_code,ship_country_region,shipping_fee,taxes,payment_type,paid_date,notes,tax_rate,tax_status_id,status_id) VALUES
	 (30,9,27,'2006-01-15 00:00:00','2006-01-22 00:00:00',2,'Karen Toh','789 27th Street','Las Vegas','NV','99999','USA',200.0000,0.0000,'Check','2006-01-15 00:00:00',NULL,0.0,NULL,3),
	 (31,3,4,'2006-01-20 00:00:00','2006-01-22 00:00:00',1,'Christina Lee','123 4th Street','New York','NY','99999','USA',5.0000,0.0000,'Credit Card','2006-01-20 00:00:00',NULL,0.0,NULL,3),
	 (32,4,12,'2006-01-22 00:00:00','2006-01-22 00:00:00',2,'John Edwards','123 12th Street','Las Vegas','NV','99999','USA',5.0000,0.0000,'Credit Card','2006-01-22 00:00:00',NULL,0.0,NULL,3),
	 (33,6,8,'2006-01-30 00:00:00','2006-01-31 00:00:00',3,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',50.0000,0.0000,'Credit Card','2006-01-30 00:00:00',NULL,0.0,NULL,3),
	 (34,9,4,'2006-02-06 00:00:00','2006-02-07 00:00:00',3,'Christina Lee','123 4th Street','New York','NY','99999','USA',4.0000,0.0000,'Check','2006-02-06 00:00:00',NULL,0.0,NULL,3),
	 (35,3,29,'2006-02-10 00:00:00','2006-02-12 00:00:00',2,'Soo Jung Lee','789 29th Street','Denver','CO','99999','USA',7.0000,0.0000,'Check','2006-02-10 00:00:00',NULL,0.0,NULL,3),
	 (36,4,3,'2006-02-23 00:00:00','2006-02-25 00:00:00',2,'Thomas Axen','123 3rd Street','Los Angelas','CA','99999','USA',7.0000,0.0000,'Cash','2006-02-23 00:00:00',NULL,0.0,NULL,3),
	 (37,8,6,'2006-03-06 00:00:00','2006-03-09 00:00:00',2,'Francisco Pérez-Olaeta','123 6th Street','Milwaukee','WI','99999','USA',12.0000,0.0000,'Credit Card','2006-03-06 00:00:00',NULL,0.0,NULL,3),
	 (38,9,28,'2006-03-10 00:00:00','2006-03-11 00:00:00',3,'Amritansh Raghav','789 28th Street','Memphis','TN','99999','USA',10.0000,0.0000,'Check','2006-03-10 00:00:00',NULL,0.0,NULL,3),
	 (39,3,8,'2006-03-22 00:00:00','2006-03-24 00:00:00',3,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',5.0000,0.0000,'Check','2006-03-22 00:00:00',NULL,0.0,NULL,3);
INSERT INTO northwind.orders (id,employee_id,customer_id,order_date,shipped_date,shipper_id,ship_name,ship_address,ship_city,ship_state_province,ship_zip_postal_code,ship_country_region,shipping_fee,taxes,payment_type,paid_date,notes,tax_rate,tax_status_id,status_id) VALUES
	 (40,4,10,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,'Roland Wacker','123 10th Street','Chicago','IL','99999','USA',9.0000,0.0000,'Credit Card','2006-03-24 00:00:00',NULL,0.0,NULL,3),
	 (41,1,7,'2006-03-24 00:00:00',NULL,NULL,'Ming-Yang Xie','123 7th Street','Boise','ID','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0.0,NULL,0),
	 (42,1,10,'2006-03-24 00:00:00','2006-04-07 00:00:00',1,'Roland Wacker','123 10th Street','Chicago','IL','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0.0,NULL,2),
	 (43,1,11,'2006-03-24 00:00:00',NULL,3,'Peter Krschne','123 11th Street','Miami','FL','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0.0,NULL,0),
	 (44,1,1,'2006-03-24 00:00:00',NULL,NULL,'Anna Bedecs','123 1st Street','Seattle','WA','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0.0,NULL,0),
	 (45,1,28,'2006-04-07 00:00:00','2006-04-07 00:00:00',3,'Amritansh Raghav','789 28th Street','Memphis','TN','99999','USA',40.0000,0.0000,'Credit Card','2006-04-07 00:00:00',NULL,0.0,NULL,3),
	 (46,7,9,'2006-04-05 00:00:00','2006-04-05 00:00:00',1,'Sven Mortensen','123 9th Street','Salt Lake City','UT','99999','USA',100.0000,0.0000,'Check','2006-04-05 00:00:00',NULL,0.0,NULL,3),
	 (47,6,6,'2006-04-08 00:00:00','2006-04-08 00:00:00',2,'Francisco Pérez-Olaeta','123 6th Street','Milwaukee','WI','99999','USA',300.0000,0.0000,'Credit Card','2006-04-08 00:00:00',NULL,0.0,NULL,3),
	 (48,4,8,'2006-04-05 00:00:00','2006-04-05 00:00:00',2,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',50.0000,0.0000,'Check','2006-04-05 00:00:00',NULL,0.0,NULL,3),
	 (50,9,25,'2006-04-05 00:00:00','2006-04-05 00:00:00',1,'John Rodman','789 25th Street','Chicago','IL','99999','USA',5.0000,0.0000,'Cash','2006-04-05 00:00:00',NULL,0.0,NULL,3);
INSERT INTO northwind.orders (id,employee_id,customer_id,order_date,shipped_date,shipper_id,ship_name,ship_address,ship_city,ship_state_province,ship_zip_postal_code,ship_country_region,shipping_fee,taxes,payment_type,paid_date,notes,tax_rate,tax_status_id,status_id) VALUES
	 (51,9,26,'2006-04-05 00:00:00','2006-04-05 00:00:00',3,'Run Liu','789 26th Street','Miami','FL','99999','USA',60.0000,0.0000,'Credit Card','2006-04-05 00:00:00',NULL,0.0,NULL,3),
	 (55,1,29,'2006-04-05 00:00:00','2006-04-05 00:00:00',2,'Soo Jung Lee','789 29th Street','Denver','CO','99999','USA',200.0000,0.0000,'Check','2006-04-05 00:00:00',NULL,0.0,NULL,3),
	 (56,2,6,'2006-04-03 00:00:00','2006-04-03 00:00:00',3,'Francisco Pérez-Olaeta','123 6th Street','Milwaukee','WI','99999','USA',0.0000,0.0000,'Check','2006-04-03 00:00:00',NULL,0.0,NULL,3),
	 (57,9,27,'2006-04-22 00:00:00','2006-04-22 00:00:00',2,'Karen Toh','789 27th Street','Las Vegas','NV','99999','USA',200.0000,0.0000,'Check','2006-04-22 00:00:00',NULL,0.0,NULL,0),
	 (58,3,4,'2006-04-22 00:00:00','2006-04-22 00:00:00',1,'Christina Lee','123 4th Street','New York','NY','99999','USA',5.0000,0.0000,'Credit Card','2006-04-22 00:00:00',NULL,0.0,NULL,3),
	 (59,4,12,'2006-04-22 00:00:00','2006-04-22 00:00:00',2,'John Edwards','123 12th Street','Las Vegas','NV','99999','USA',5.0000,0.0000,'Credit Card','2006-04-22 00:00:00',NULL,0.0,NULL,0),
	 (60,6,8,'2006-04-30 00:00:00','2006-04-30 00:00:00',3,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',50.0000,0.0000,'Credit Card','2006-04-30 00:00:00',NULL,0.0,NULL,3),
	 (61,9,4,'2006-04-07 00:00:00','2006-04-07 00:00:00',3,'Christina Lee','123 4th Street','New York','NY','99999','USA',4.0000,0.0000,'Check','2006-04-07 00:00:00',NULL,0.0,NULL,0),
	 (62,3,29,'2006-04-12 00:00:00','2006-04-12 00:00:00',2,'Soo Jung Lee','789 29th Street','Denver','CO','99999','USA',7.0000,0.0000,'Check','2006-04-12 00:00:00',NULL,0.0,NULL,0),
	 (63,4,3,'2006-04-25 00:00:00','2006-04-25 00:00:00',2,'Thomas Axen','123 3rd Street','Los Angelas','CA','99999','USA',7.0000,0.0000,'Cash','2006-04-25 00:00:00',NULL,0.0,NULL,3);
INSERT INTO northwind.orders (id,employee_id,customer_id,order_date,shipped_date,shipper_id,ship_name,ship_address,ship_city,ship_state_province,ship_zip_postal_code,ship_country_region,shipping_fee,taxes,payment_type,paid_date,notes,tax_rate,tax_status_id,status_id) VALUES
	 (64,8,6,'2006-05-09 00:00:00','2006-05-09 00:00:00',2,'Francisco Pérez-Olaeta','123 6th Street','Milwaukee','WI','99999','USA',12.0000,0.0000,'Credit Card','2006-05-09 00:00:00',NULL,0.0,NULL,0),
	 (65,9,28,'2006-05-11 00:00:00','2006-05-11 00:00:00',3,'Amritansh Raghav','789 28th Street','Memphis','TN','99999','USA',10.0000,0.0000,'Check','2006-05-11 00:00:00',NULL,0.0,NULL,0),
	 (66,3,8,'2006-05-24 00:00:00','2006-05-24 00:00:00',3,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',5.0000,0.0000,'Check','2006-05-24 00:00:00',NULL,0.0,NULL,0),
	 (67,4,10,'2006-05-24 00:00:00','2006-05-24 00:00:00',2,'Roland Wacker','123 10th Street','Chicago','IL','99999','USA',9.0000,0.0000,'Credit Card','2006-05-24 00:00:00',NULL,0.0,NULL,3),
	 (68,1,7,'2006-05-24 00:00:00',NULL,NULL,'Ming-Yang Xie','123 7th Street','Boise','ID','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0.0,NULL,0),
	 (69,1,10,'2006-05-24 00:00:00',NULL,1,'Roland Wacker','123 10th Street','Chicago','IL','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0.0,NULL,0),
	 (70,1,11,'2006-05-24 00:00:00',NULL,3,'Peter Krschne','123 11th Street','Miami','FL','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0.0,NULL,0),
	 (71,1,1,'2006-05-24 00:00:00',NULL,3,'Anna Bedecs','123 1st Street','Seattle','WA','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0.0,NULL,0),
	 (72,1,28,'2006-06-07 00:00:00','2006-06-07 00:00:00',3,'Amritansh Raghav','789 28th Street','Memphis','TN','99999','USA',40.0000,0.0000,'Credit Card','2006-06-07 00:00:00',NULL,0.0,NULL,3),
	 (73,7,9,'2006-06-05 00:00:00','2006-06-05 00:00:00',1,'Sven Mortensen','123 9th Street','Salt Lake City','UT','99999','USA',100.0000,0.0000,'Check','2006-06-05 00:00:00',NULL,0.0,NULL,3);
INSERT INTO northwind.orders (id,employee_id,customer_id,order_date,shipped_date,shipper_id,ship_name,ship_address,ship_city,ship_state_province,ship_zip_postal_code,ship_country_region,shipping_fee,taxes,payment_type,paid_date,notes,tax_rate,tax_status_id,status_id) VALUES
	 (74,6,6,'2006-06-08 00:00:00','2006-06-08 00:00:00',2,'Francisco Pérez-Olaeta','123 6th Street','Milwaukee','WI','99999','USA',300.0000,0.0000,'Credit Card','2006-06-08 00:00:00',NULL,0.0,NULL,3),
	 (75,4,8,'2006-06-05 00:00:00','2006-06-05 00:00:00',2,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',50.0000,0.0000,'Check','2006-06-05 00:00:00',NULL,0.0,NULL,3),
	 (76,9,25,'2006-06-05 00:00:00','2006-06-05 00:00:00',1,'John Rodman','789 25th Street','Chicago','IL','99999','USA',5.0000,0.0000,'Cash','2006-06-05 00:00:00',NULL,0.0,NULL,3),
	 (77,9,26,'2006-06-05 00:00:00','2006-06-05 00:00:00',3,'Run Liu','789 26th Street','Miami','FL','99999','USA',60.0000,0.0000,'Credit Card','2006-06-05 00:00:00',NULL,0.0,NULL,3),
	 (78,1,29,'2006-06-05 00:00:00','2006-06-05 00:00:00',2,'Soo Jung Lee','789 29th Street','Denver','CO','99999','USA',200.0000,0.0000,'Check','2006-06-05 00:00:00',NULL,0.0,NULL,3),
	 (79,2,6,'2006-06-23 00:00:00','2006-06-23 00:00:00',3,'Francisco Pérez-Olaeta','123 6th Street','Milwaukee','WI','99999','USA',0.0000,0.0000,'Check','2006-06-23 00:00:00',NULL,0.0,NULL,3),
	 (80,2,4,'2006-04-25 17:03:55',NULL,NULL,'Christina Lee','123 4th Street','New York','NY','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0.0,NULL,0),
	 (81,2,3,'2006-04-25 17:26:53',NULL,NULL,'Thomas Axen','123 3rd Street','Los Angelas','CA','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0.0,NULL,0);
	
	
	
INSERT INTO northwind.products (supplier_ids,id,product_code,product_name,description,standard_cost,list_price,reorder_level,target_level,quantity_per_unit,discontinued,minimum_reorder_quantity,category,attachments) VALUES
	 ('4',1,'NWTB-1','Northwind Traders Chai',NULL,13.5000,18.0000,10,40,'10 boxes x 20 bags',0,10,'Beverages',''),
	 ('10',3,'NWTCO-3','Northwind Traders Syrup',NULL,7.5000,10.0000,25,100,'12 - 550 ml bottles',0,25,'Condiments',''),
	 ('10',4,'NWTCO-4','Northwind Traders Cajun Seasoning',NULL,16.5000,22.0000,10,40,'48 - 6 oz jars',0,10,'Condiments',''),
	 ('10',5,'NWTO-5','Northwind Traders Olive Oil',NULL,16.0125,21.3500,10,40,'36 boxes',0,10,'Oil',''),
	 ('2;6',6,'NWTJP-6','Northwind Traders Boysenberry Spread',NULL,18.7500,25.0000,25,100,'12 - 8 oz jars',0,25,'Jams, Preserves',''),
	 ('2',7,'NWTDFN-7','Northwind Traders Dried Pears',NULL,22.5000,30.0000,10,40,'12 - 1 lb pkgs.',0,10,'Dried Fruit & Nuts',''),
	 ('8',8,'NWTS-8','Northwind Traders Curry Sauce',NULL,30.0000,40.0000,10,40,'12 - 12 oz jars',0,10,'Sauces',''),
	 ('2;6',14,'NWTDFN-14','Northwind Traders Walnuts',NULL,17.4375,23.2500,10,40,'40 - 100 g pkgs.',0,10,'Dried Fruit & Nuts',''),
	 ('6',17,'NWTCFV-17','Northwind Traders Fruit Cocktail',NULL,29.2500,39.0000,10,40,'15.25 OZ',0,10,'Canned Fruit & Vegetables',''),
	 ('1',19,'NWTBGM-19','Northwind Traders Chocolate Biscuits Mix',NULL,6.9000,9.2000,5,20,'10 boxes x 12 pieces',0,5,'Baked Goods & Mixes','');
INSERT INTO northwind.products (supplier_ids,id,product_code,product_name,description,standard_cost,list_price,reorder_level,target_level,quantity_per_unit,discontinued,minimum_reorder_quantity,category,attachments) VALUES
	 ('2;6',20,'NWTJP-6','Northwind Traders Marmalade',NULL,60.7500,81.0000,10,40,'30 gift boxes',0,10,'Jams, Preserves',''),
	 ('1',21,'NWTBGM-21','Northwind Traders Scones',NULL,7.5000,10.0000,5,20,'24 pkgs. x 4 pieces',0,5,'Baked Goods & Mixes',''),
	 ('4',34,'NWTB-34','Northwind Traders Beer',NULL,10.5000,14.0000,15,60,'24 - 12 oz bottles',0,15,'Beverages',''),
	 ('7',40,'NWTCM-40','Northwind Traders Crab Meat',NULL,13.8000,18.4000,30,120,'24 - 4 oz tins',0,30,'Canned Meat',''),
	 ('6',41,'NWTSO-41','Northwind Traders Clam Chowder',NULL,7.2375,9.6500,10,40,'12 - 12 oz cans',0,10,'Soups',''),
	 ('3;4',43,'NWTB-43','Northwind Traders Coffee',NULL,34.5000,46.0000,25,100,'16 - 500 g tins',0,25,'Beverages',''),
	 ('10',48,'NWTCA-48','Northwind Traders Chocolate',NULL,9.5625,12.7500,25,100,'10 pkgs',0,25,'Candy',''),
	 ('2',51,'NWTDFN-51','Northwind Traders Dried Apples',NULL,39.7500,53.0000,10,40,'50 - 300 g pkgs.',0,10,'Dried Fruit & Nuts',''),
	 ('1',52,'NWTG-52','Northwind Traders Long Grain Rice',NULL,5.2500,7.0000,25,100,'16 - 2 kg boxes',0,25,'Grains',''),
	 ('1',56,'NWTP-56','Northwind Traders Gnocchi',NULL,28.5000,38.0000,30,120,'24 - 250 g pkgs.',0,30,'Pasta','');
INSERT INTO northwind.products (supplier_ids,id,product_code,product_name,description,standard_cost,list_price,reorder_level,target_level,quantity_per_unit,discontinued,minimum_reorder_quantity,category,attachments) VALUES
	 ('1',57,'NWTP-57','Northwind Traders Ravioli',NULL,14.6250,19.5000,20,80,'24 - 250 g pkgs.',0,20,'Pasta',''),
	 ('8',65,'NWTS-65','Northwind Traders Hot Pepper Sauce',NULL,15.7875,21.0500,10,40,'32 - 8 oz bottles',0,10,'Sauces',''),
	 ('8',66,'NWTS-66','Northwind Traders Tomato Sauce',NULL,12.7500,17.0000,20,80,'24 - 8 oz jars',0,20,'Sauces',''),
	 ('5',72,'NWTD-72','Northwind Traders Mozzarella',NULL,26.1000,34.8000,10,40,'24 - 200 g pkgs.',0,10,'Dairy products',''),
	 ('2;6',74,'NWTDFN-74','Northwind Traders Almonds',NULL,7.5000,10.0000,5,20,'5 kg pkg.',0,5,'Dried Fruit & Nuts',''),
	 ('10',77,'NWTCO-77','Northwind Traders Mustard',NULL,9.7500,13.0000,15,60,'12 boxes',0,15,'Condiments',''),
	 ('2',80,'NWTDFN-80','Northwind Traders Dried Plums',NULL,3.0000,3.5000,50,75,'1 lb bag',0,25,'Dried Fruit & Nuts',''),
	 ('3',81,'NWTB-81','Northwind Traders Green Tea',NULL,2.0000,2.9900,100,125,'20 bags per box',0,25,'Beverages',''),
	 ('1',82,'NWTC-82','Northwind Traders Granola',NULL,2.0000,4.0000,20,100,NULL,0,NULL,'Cereal',''),
	 ('9',83,'NWTCS-83','Northwind Traders Potato Chips',NULL,0.5000,1.8000,30,200,NULL,0,NULL,'Chips, Snacks','');
INSERT INTO northwind.products (supplier_ids,id,product_code,product_name,description,standard_cost,list_price,reorder_level,target_level,quantity_per_unit,discontinued,minimum_reorder_quantity,category,attachments) VALUES
	 ('1',85,'NWTBGM-85','Northwind Traders Brownie Mix',NULL,9.0000,12.4900,10,20,'3 boxes',0,5,'Baked Goods & Mixes',''),
	 ('1',86,'NWTBGM-86','Northwind Traders Cake Mix',NULL,10.5000,15.9900,10,20,'4 boxes',0,5,'Baked Goods & Mixes',''),
	 ('7',87,'NWTB-87','Northwind Traders Tea',NULL,2.0000,4.0000,20,50,'100 count per box',0,NULL,'Beverages',''),
	 ('6',88,'NWTCFV-88','Northwind Traders Pears',NULL,1.0000,1.3000,10,40,'15.25 OZ',0,NULL,'Canned Fruit & Vegetables',''),
	 ('6',89,'NWTCFV-89','Northwind Traders Peaches',NULL,1.0000,1.5000,10,40,'15.25 OZ',0,NULL,'Canned Fruit & Vegetables',''),
	 ('6',90,'NWTCFV-90','Northwind Traders Pineapple',NULL,1.0000,1.8000,10,40,'15.25 OZ',0,NULL,'Canned Fruit & Vegetables',''),
	 ('6',91,'NWTCFV-91','Northwind Traders Cherry Pie Filling',NULL,1.0000,2.0000,10,40,'15.25 OZ',0,NULL,'Canned Fruit & Vegetables',''),
	 ('6',92,'NWTCFV-92','Northwind Traders Green Beans',NULL,1.0000,1.2000,10,40,'14.5 OZ',0,NULL,'Canned Fruit & Vegetables',''),
	 ('6',93,'NWTCFV-93','Northwind Traders Corn',NULL,1.0000,1.2000,10,40,'14.5 OZ',0,NULL,'Canned Fruit & Vegetables',''),
	 ('6',94,'NWTCFV-94','Northwind Traders Peas',NULL,1.0000,1.5000,10,40,'14.5 OZ',0,NULL,'Canned Fruit & Vegetables','');
INSERT INTO northwind.products (supplier_ids,id,product_code,product_name,description,standard_cost,list_p# suppliers, purchase_orders, inventory_transactions, invoices
rice,reorder_level,target_level,quantity_per_unit,discontinued,minimum_reorder_quantity,category,attachments) VALUES
	 ('7',95,'NWTCM-95','Northwind Traders Tuna Fish',NULL,0.5000,2.0000,30,50,'5 oz',0,NULL,'Canned Meat',''),
	 ('7',96,'NWTCM-96','Northwind Traders Smoked Salmon',NULL,2.0000,4.0000,30,50,'5 oz',0,NULL,'Canned Meat',''),
	 ('1',97,'NWTC-82','Northwind Traders Hot Cereal',NULL,3.0000,5.0000,50,200,NULL,0,NULL,'Cereal',''),
	 ('6',98,'NWTSO-98','Northwind Traders Vegetable Soup',NULL,1.0000,1.8900,100,200,NULL,0,NULL,'Soups',''),
	 ('6',99,'NWTSO-99','Northwind Traders Chicken Soup',NULL,1.0000,1.9500,100,200,NULL,0,NULL,'Soups','');

	
INSERT INTO northwind.purchase_order_status (id,status) VALUES
	 (0,'New'),
	 (1,'Submitted'),
	 (2,'Approved'),
	 (3,'Closed');
	

INSERT INTO northwind.suppliers (id,company,last_name,first_name,email_address,job_title,business_phone,home_phone,mobile_phone,fax_number,address,city,state_province,zip_postal_code,country_region,web_page,notes,attachments) VALUES
	 (1,'Supplier A','Andersen','Elizabeth A.',NULL,'Sales Manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	 (2,'Supplier B','Weiler','Cornelia',NULL,'Sales Manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	 (3,'Supplier C','Kelley','Madeleine',NULL,'Sales Representative',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	 (4,'Supplier D','Sato','Naoki',NULL,'Marketing Manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	 (5,'Supplier E','Hernandez-Echevarria','Amaya',NULL,'Sales Manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	 (6,'Supplier F','Hayakawa','Satomi',NULL,'Marketing Assistant',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	 (7,'Supplier G','Glasson','Stuart',NULL,'Marketing Manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	 (8,'Supplier H','Dunton','Bryn Paul',NULL,'Sales Representative',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	 (9,'Supplier I','Sandberg','Mikael',NULL,'Sales Manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''),
	 (10,'Supplier J','Sousa','Luis',NULL,'Sales Manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'');

	
	
INSERT INTO northwind.purchase_orders (id,supplier_id,created_by,submitted_date,creation_date,status_id,expected_date,shipping_fee,taxes,payment_date,payment_amount,payment_method,notes,approved_by,approved_date,submitted_by) VALUES
	 (90,1,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-01-22 00:00:00',2),
	 (91,3,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-01-22 00:00:00',2),
	 (92,2,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-01-22 00:00:00',2),
	 (93,5,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-01-22 00:00:00',2),
	 (94,6,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-01-22 00:00:00',2),
	 (95,4,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-01-22 00:00:00',2),
	 (96,1,5,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #30',2,'2006-01-22 00:00:00',5),
	 (97,2,7,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #33',2,'2006-01-22 00:00:00',7),
	 (98,2,4,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #36',2,'2006-01-22 00:00:00',4),
	 (99,1,3,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #38',2,'2006-01-22 00:00:00',3);
INSERT INTO northwind.purchase_orders (id,supplier_id,created_by,submitted_date,creation_date,status_id,expected_date,shipping_fee,taxes,payment_date,payment_amount,payment_method,notes,approved_by,approved_date,submitted_by) VALUES
	 (100,2,9,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #39',2,'2006-01-22 00:00:00',9),
	 (101,1,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #40',2,'2006-01-22 00:00:00',2),
	 (102,1,1,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #41',2,'2006-04-04 00:00:00',1),
	 (103,2,1,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #42',2,'2006-04-04 00:00:00',1),
	 (104,2,1,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #45',2,'2006-04-04 00:00:00',1),
	 (105,5,7,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,'Check','Purchase generated based on Order #46',2,'2006-04-04 00:00:00',7),
	 (106,6,7,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #46',2,'2006-04-04 00:00:00',7),
	 (107,1,6,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #47',2,'2006-04-04 00:00:00',6),
	 (108,2,4,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #48',2,'2006-04-04 00:00:00',4),
	 (109,2,4,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #48',2,'2006-04-04 00:00:00',4);
INSERT INTO northwind.purchase_orders (id,supplier_id,created_by,submitted_date,creation_date,status_id,expected_date,shipping_fee,taxes,payment_date,payment_amount,payment_method,notes,approved_by,approved_date,submitted_by) VALUES
	 (110,1,3,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #49',2,'2006-04-04 00:00:00',3),
	 (111,1,2,'2006-03-31 00:00:00','2006-03-31 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #56',2,'2006-04-04 00:00:00',2),
	 (140,6,NULL,'2006-04-25 00:00:00','2006-04-25 16:40:51',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-04-25 16:41:33',2),
	 (141,8,NULL,'2006-04-25 00:00:00','2006-04-25 17:10:35',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-04-25 17:10:55',2),
	 (142,8,NULL,'2006-04-25 00:00:00','2006-04-25 17:18:29',2,NULL,0.0000,0.0000,NULL,0.0000,'Check',NULL,2,'2006-04-25 17:18:51',2),
	 (146,2,2,'2006-04-26 18:26:37','2006-04-26 18:26:37',1,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,NULL,NULL,2),
	 (147,7,2,'2006-04-26 18:33:28','2006-04-26 18:33:28',1,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,NULL,NULL,2),
	 (148,5,2,'2006-04-26 18:33:52','2006-04-26 18:33:52',1,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,NULL,NULL,2);


INSERT INTO northwind.inventory_transactions (id,transaction_type,transaction_created_date,transaction_modified_date,product_id,quantity,purchase_order_id,customer_order_id,comments) VALUES
	 (35,1,'2006-03-22 16:02:28','2006-03-22 16:02:28',80,75,NULL,NULL,NULL),
	 (36,1,'2006-03-22 16:02:48','2006-03-22 16:02:48',72,40,NULL,NULL,NULL),
	 (37,1,'2006-03-22 16:03:04','2006-03-22 16:03:04',52,100,NULL,NULL,NULL),
	 (38,1,'2006-03-22 16:03:09','2006-03-22 16:03:09',56,120,NULL,NULL,NULL),
	 (39,1,'2006-03-22 16:03:14','2006-03-22 16:03:14',57,80,NULL,NULL,NULL),
	 (40,1,'2006-03-22 16:03:40','2006-03-22 16:03:40',6,100,NULL,NULL,NULL),
	 (41,1,'2006-03-22 16:03:47','2006-03-22 16:03:47',7,40,NULL,NULL,NULL),
	 (42,1,'2006-03-22 16:03:54','2006-03-22 16:03:54',8,40,NULL,NULL,NULL),
	 (43,1,'2006-03-22 16:04:02','2006-03-22 16:04:02',14,40,NULL,NULL,NULL),
	 (44,1,'2006-03-22 16:04:07','2006-03-22 16:04:07',17,40,NULL,NULL,NULL);
INSERT INTO northwind.inventory_transactions (id,transaction_type,transaction_created_date,transaction_modified_date,product_id,quantity,purchase_order_id,customer_order_id,comments) VALUES
	 (45,1,'2006-03-22 16:04:12','2006-03-22 16:04:12',19,20,NULL,NULL,NULL),
	 (46,1,'2006-03-22 16:04:17','2006-03-22 16:04:17',20,40,NULL,NULL,NULL),
	 (47,1,'2006-03-22 16:04:20','2006-03-22 16:04:20',21,20,NULL,NULL,NULL),
	 (48,1,'2006-03-22 16:04:24','2006-03-22 16:04:24',40,120,NULL,NULL,NULL),
	 (49,1,'2006-03-22 16:04:28','2006-03-22 16:04:28',41,40,NULL,NULL,NULL),
	 (50,1,'2006-03-22 16:04:31','2006-03-22 16:04:31',48,100,NULL,NULL,NULL),
	 (51,1,'2006-03-22 16:04:38','2006-03-22 16:04:38',51,40,NULL,NULL,NULL),
	 (52,1,'2006-03-22 16:04:41','2006-03-22 16:04:41',74,20,NULL,NULL,NULL),
	 (53,1,'2006-03-22 16:04:45','2006-03-22 16:04:45',77,60,NULL,NULL,NULL),
	 (54,1,'2006-03-22 16:05:07','2006-03-22 16:05:07',3,100,NULL,NULL,NULL);
INSERT INTO northwind.inventory_transactions (id,transaction_type,transaction_created_date,transaction_modified_date,product_id,quantity,purchase_order_id,customer_order_id,comments) VALUES
	 (55,1,'2006-03-22 16:05:11','2006-03-22 16:05:11',4,40,NULL,NULL,NULL),
	 (56,1,'2006-03-22 16:05:14','2006-03-22 16:05:14',5,40,NULL,NULL,NULL),
	 (57,1,'2006-03-22 16:05:26','2006-03-22 16:05:26',65,40,NULL,NULL,NULL),
	 (58,1,'2006-03-22 16:05:32','2006-03-22 16:05:32',66,80,NULL,NULL,NULL),
	 (59,1,'2006-03-22 16:05:47','2006-03-22 16:05:47',1,40,NULL,NULL,NULL),
	 (60,1,'2006-03-22 16:05:51','2006-03-22 16:05:51',34,60,NULL,NULL,NULL),
	 (61,1,'2006-03-22 16:06:00','2006-03-22 16:06:00',43,100,NULL,NULL,NULL),
	 (62,1,'2006-03-22 16:06:03','2006-03-22 16:06:03',81,125,NULL,NULL,NULL),
	 (63,2,'2006-03-22 16:07:56','2006-03-24 11:03:00',80,30,NULL,NULL,NULL),
	 (64,2,'2006-03-22 16:08:19','2006-03-22 16:08:59',7,10,NULL,NULL,NULL);
INSERT INTO northwind.inventory_transactions (id,transaction_type,transaction_created_date,transaction_modified_date,product_id,quantity,purchase_order_id,customer_order_id,comments) VALUES
	 (65,2,'2006-03-22 16:08:29','2006-03-22 16:08:59',51,10,NULL,NULL,NULL),
	 (66,2,'2006-03-22 16:08:37','2006-03-22 16:08:59',80,10,NULL,NULL,NULL),
	 (67,2,'2006-03-22 16:09:46','2006-03-22 16:10:27',1,15,NULL,NULL,NULL),
	 (68,2,'2006-03-22 16:10:06','2006-03-22 16:10:27',43,20,NULL,NULL,NULL),
	 (69,2,'2006-03-22 16:11:39','2006-03-24 11:00:55',19,20,NULL,NULL,NULL),
	 (70,2,'2006-03-22 16:11:56','2006-03-24 10:59:41',48,10,NULL,NULL,NULL),
	 (71,2,'2006-03-22 16:12:29','2006-03-24 10:57:38',8,17,NULL,NULL,NULL),
	 (72,1,'2006-03-24 10:41:30','2006-03-24 10:41:30',81,200,NULL,NULL,NULL),
	 (73,2,'2006-03-24 10:41:33','2006-03-24 10:41:42',81,200,NULL,NULL,'Fill Back Ordered product, Order #40'),
	 (74,1,'2006-03-24 10:53:13','2006-03-24 10:53:13',48,100,NULL,NULL,NULL);
INSERT INTO northwind.inventory_transactions (id,transaction_type,transaction_created_date,transaction_modified_date,product_id,quantity,purchase_order_id,customer_order_id,comments) VALUES
	 (75,2,'2006-03-24 10:53:16','2006-03-24 10:55:46',48,100,NULL,NULL,'Fill Back Ordered product, Order #39'),
	 (76,1,'2006-03-24 10:53:36','2006-03-24 10:53:36',43,300,NULL,NULL,NULL),
	 (77,2,'2006-03-24 10:53:39','2006-03-24 10:56:57',43,300,NULL,NULL,'Fill Back Ordered product, Order #38'),
	 (78,1,'2006-03-24 10:54:04','2006-03-24 10:54:04',41,200,NULL,NULL,NULL),
	 (79,2,'2006-03-24 10:54:07','2006-03-24 10:58:40',41,200,NULL,NULL,'Fill Back Ordered product, Order #36'),
	 (80,1,'2006-03-24 10:54:33','2006-03-24 10:54:33',19,30,NULL,NULL,NULL),
	 (81,2,'2006-03-24 10:54:35','2006-03-24 11:02:02',19,30,NULL,NULL,'Fill Back Ordered product, Order #33'),
	 (82,1,'2006-03-24 10:54:58','2006-03-24 10:54:58',34,100,NULL,NULL,NULL),
	 (83,2,'2006-03-24 10:55:02','2006-03-24 11:03:00',34,100,NULL,NULL,'Fill Back Ordered product, Order #30'),
	 (84,2,'2006-03-24 14:48:15','2006-04-04 11:41:14',6,10,NULL,NULL,NULL);
INSERT INTO northwind.inventory_transactions (id,transaction_type,transaction_created_date,transaction_modified_date,product_id,quantity,purchase_order_id,customer_order_id,comments) VALUES
	 (85,2,'2006-03-24 14:48:23','2006-04-04 11:41:14',4,10,NULL,NULL,NULL),
	 (86,3,'2006-03-24 14:49:16','2006-03-24 14:49:16',80,20,NULL,NULL,NULL),
	 (87,3,'2006-03-24 14:49:20','2006-03-24 14:49:20',81,50,NULL,NULL,NULL),
	 (88,3,'2006-03-24 14:50:09','2006-03-24 14:50:09',1,25,NULL,NULL,NULL),
	 (89,3,'2006-03-24 14:50:14','2006-03-24 14:50:14',43,25,NULL,NULL,NULL),
	 (90,3,'2006-03-24 14:50:18','2006-03-24 14:50:18',81,25,NULL,NULL,NULL),
	 (91,2,'2006-03-24 14:51:03','2006-04-04 11:09:24',40,50,NULL,NULL,NULL),
	 (92,2,'2006-03-24 14:55:03','2006-04-04 11:06:56',21,20,NULL,NULL,NULL),
	 (93,2,'2006-03-24 14:55:39','2006-04-04 11:06:13',5,25,NULL,NULL,NULL),
	 (94,2,'2006-03-24 14:55:52','2006-04-04 11:06:13',41,30,NULL,NULL,NULL);
INSERT INTO northwind.inventory_transactions (id,transaction_type,transaction_created_date,transaction_modified_date,product_id,quantity,purchase_order_id,customer_order_id,comments) VALUES
	 (95,2,'2006-03-24 14:56:09','2006-04-04 11:06:13',40,30,NULL,NULL,NULL),
	 (96,3,'2006-03-30 16:46:34','2006-03-30 16:46:34',34,12,NULL,NULL,NULL),
	 (97,3,'2006-03-30 17:23:27','2006-03-30 17:23:27',34,10,NULL,NULL,NULL),
	 (98,3,'2006-03-30 17:24:33','2006-03-30 17:24:33',34,1,NULL,NULL,NULL),
	 (99,2,'2006-04-03 13:50:08','2006-04-03 13:50:15',48,10,NULL,NULL,NULL),
	 (100,1,'2006-04-04 11:00:54','2006-04-04 11:00:54',57,100,NULL,NULL,NULL),
	 (101,2,'2006-04-04 11:00:56','2006-04-04 11:08:49',57,100,NULL,NULL,'Fill Back Ordered product, Order #46'),
	 (102,1,'2006-04-04 11:01:14','2006-04-04 11:01:14',34,50,NULL,NULL,NULL),
	 (103,1,'2006-04-04 11:01:35','2006-04-04 11:01:35',43,250,NULL,NULL,NULL),
	 (104,3,'2006-04-04 11:01:37','2006-04-04 11:01:37',43,300,NULL,NULL,'Fill Back Ordered product, Order #41');
INSERT INTO northwind.inventory_transactions (id,transaction_type,transaction_created_date,transaction_modified_date,product_id,quantity,purchase_order_id,customer_order_id,comments) VALUES
	 (105,1,'2006-04-04 11:01:55','2006-04-04 11:01:55',8,25,NULL,NULL,NULL),
	 (106,2,'2006-04-04 11:01:58','2006-04-04 11:07:37',8,25,NULL,NULL,'Fill Back Ordered product, Order #48'),
	 (107,1,'2006-04-04 11:02:17','2006-04-04 11:02:17',34,300,NULL,NULL,NULL),
	 (108,2,'2006-04-04 11:02:19','2006-04-04 11:08:14',34,300,NULL,NULL,'Fill Back Ordered product, Order #47'),
	 (109,1,'2006-04-04 11:02:37','2006-04-04 11:02:37',19,25,NULL,NULL,NULL),
	 (110,2,'2006-04-04 11:02:39','2006-04-04 11:41:14',19,10,NULL,NULL,'Fill Back Ordered product, Order #42'),
	 (111,1,'2006-04-04 11:02:56','2006-04-04 11:02:56',19,10,NULL,NULL,NULL),
	 (112,2,'2006-04-04 11:02:58','2006-04-04 11:07:37',19,25,NULL,NULL,'Fill Back Ordered product, Order #48'),
	 (113,1,'2006-04-04 11:03:12','2006-04-04 11:03:12',72,50,NULL,NULL,NULL),
	 (114,2,'2006-04-04 11:03:14','2006-04-04 11:08:49',72,50,NULL,NULL,'Fill Back Ordered product, Order #46');
INSERT INTO northwind.inventory_transactions (id,transaction_type,transaction_created_date,transaction_modified_date,product_id,quantity,purchase_order_id,customer_order_id,comments) VALUES
	 (115,1,'2006-04-04 11:03:38','2006-04-04 11:03:38',41,50,NULL,NULL,NULL),
	 (116,2,'2006-04-04 11:03:39','2006-04-04 11:09:24',41,50,NULL,NULL,'Fill Back Ordered product, Order #45'),
	 (117,2,'2006-04-04 11:04:55','2006-04-04 11:05:04',34,87,NULL,NULL,NULL),
	 (118,2,'2006-04-04 11:35:50','2006-04-04 11:35:54',51,30,NULL,NULL,NULL),
	 (119,2,'2006-04-04 11:35:51','2006-04-04 11:35:54',7,30,NULL,NULL,NULL),
	 (120,2,'2006-04-04 11:36:15','2006-04-04 11:36:21',17,40,NULL,NULL,NULL),
	 (121,2,'2006-04-04 11:36:39','2006-04-04 11:36:47',6,90,NULL,NULL,NULL),
	 (122,2,'2006-04-04 11:37:06','2006-04-04 11:37:09',4,30,NULL,NULL,NULL),
	 (123,2,'2006-04-04 11:37:45','2006-04-04 11:37:49',48,40,NULL,NULL,NULL),
	 (124,2,'2006-04-04 11:38:07','2006-04-04 11:38:11',48,40,NULL,NULL,NULL);
INSERT INTO northwind.inventory_transactions (id,transaction_type,transaction_created_date,transaction_modified_date,product_id,quantity,purchase_order_id,customer_order_id,comments) VALUES
	 (125,2,'2006-04-04 11:38:27','2006-04-04 11:38:32',41,10,NULL,NULL,NULL),
	 (126,2,'2006-04-04 11:38:48','2006-04-04 11:38:53',43,5,NULL,NULL,NULL),
	 (127,2,'2006-04-04 11:39:12','2006-04-04 11:39:29',40,40,NULL,NULL,NULL),
	 (128,2,'2006-04-04 11:39:50','2006-04-04 11:39:53',8,20,NULL,NULL,NULL),
	 (129,2,'2006-04-04 11:40:13','2006-04-04 11:40:16',80,15,NULL,NULL,NULL),
	 (130,2,'2006-04-04 11:40:32','2006-04-04 11:40:38',74,20,NULL,NULL,NULL),
	 (131,2,'2006-04-04 11:41:39','2006-04-04 11:41:45',72,40,NULL,NULL,NULL),
	 (132,2,'2006-04-04 11:42:17','2006-04-04 11:42:26',3,50,NULL,NULL,NULL),
	 (133,2,'2006-04-04 11:42:24','2006-04-04 11:42:26',8,3,NULL,NULL,NULL),
	 (134,2,'2006-04-04 11:42:48','2006-04-04 11:43:08',20,40,NULL,NULL,NULL);
INSERT INTO northwind.inventory_transactions (id,transaction_type,transaction_created_date,transaction_modified_date,product_id,quantity,purchase_order_id,customer_order_id,comments) VALUES
	 (135,2,'2006-04-04 11:43:05','2006-04-04 11:43:08',52,40,NULL,NULL,NULL),
	 (136,3,'2006-04-25 17:04:05','2006-04-25 17:04:57',56,110,NULL,NULL,NULL);

	
INSERT INTO northwind.invoices (id,order_id,invoice_date,due_date,tax,shipping,amount_due) VALUES
	 (5,31,'2006-03-22 16:08:59',NULL,0.0000,0.0000,0.0000),
	 (6,32,'2006-03-22 16:10:27',NULL,0.0000,0.0000,0.0000),
	 (7,40,'2006-03-24 10:41:41',NULL,0.0000,0.0000,0.0000),
	 (8,39,'2006-03-24 10:55:46',NULL,0.0000,0.0000,0.0000),
	 (9,38,'2006-03-24 10:56:57',NULL,0.0000,0.0000,0.0000),
	 (10,37,'2006-03-24 10:57:38',NULL,0.0000,0.0000,0.0000),
	 (11,36,'2006-03-24 10:58:40',NULL,0.0000,0.0000,0.0000),
	 (12,35,'2006-03-24 10:59:41',NULL,0.0000,0.0000,0.0000),
	 (13,34,'2006-03-24 11:00:55',NULL,0.0000,0.0000,0.0000),
	 (14,33,'2006-03-24 11:02:02',NULL,0.0000,0.0000,0.0000);
INSERT INTO northwind.invoices (id,order_id,invoice_date,due_date,tax,shipping,amount_due) VALUES
	 (15,30,'2006-03-24 11:03:00',NULL,0.0000,0.0000,0.0000),
	 (16,56,'2006-04-03 13:50:15',NULL,0.0000,0.0000,0.0000),
	 (17,55,'2006-04-04 11:05:04',NULL,0.0000,0.0000,0.0000),
	 (18,51,'2006-04-04 11:06:13',NULL,0.0000,0.0000,0.0000),
	 (19,50,'2006-04-04 11:06:56',NULL,0.0000,0.0000,0.0000),
	 (20,48,'2006-04-04 11:07:37',NULL,0.0000,0.0000,0.0000),
	 (21,47,'2006-04-04 11:08:14',NULL,0.0000,0.0000,0.0000),
	 (22,46,'2006-04-04 11:08:49',NULL,0.0000,0.0000,0.0000),
	 (23,45,'2006-04-04 11:09:24',NULL,0.0000,0.0000,0.0000),
	 (24,79,'2006-04-04 11:35:54',NULL,0.0000,0.0000,0.0000);
INSERT INTO northwind.invoices (id,order_id,invoice_date,due_date,tax,shipping,amount_due) VALUES
	 (25,78,'2006-04-04 11:36:21',NULL,0.0000,0.0000,0.0000),
	 (26,77,'2006-04-04 11:36:47',NULL,0.0000,0.0000,0.0000),
	 (27,76,'2006-04-04 11:37:09',NULL,0.0000,0.0000,0.0000),
	 (28,75,'2006-04-04 11:37:49',NULL,0.0000,0.0000,0.0000),
	 (29,74,'2006-04-04 11:38:11',NULL,0.0000,0.0000,0.0000),
	 (30,73,'2006-04-04 11:38:32',NULL,0.0000,0.0000,0.0000),
	 (31,72,'2006-04-04 11:38:53',NULL,0.0000,0.0000,0.0000),
	 (32,71,'2006-04-04 11:39:29',NULL,0.0000,0.0000,0.0000),
	 (33,70,'2006-04-04 11:39:53',NULL,0.0000,0.0000,0.0000),
	 (34,69,'2006-04-04 11:40:16',NULL,0.0000,0.0000,0.0000);
INSERT INTO northwind.invoices (id,order_id,invoice_date,due_date,tax,shipping,amount_due) VALUES
	 (35,67,'2006-04-04 11:40:38',NULL,0.0000,0.0000,0.0000),
	 (36,42,'2006-04-04 11:41:14',NULL,0.0000,0.0000,0.0000),
	 (37,60,'2006-04-04 11:41:45',NULL,0.0000,0.0000,0.0000),
	 (38,63,'2006-04-04 11:42:26',NULL,0.0000,0.0000,0.0000),
	 (39,58,'2006-04-04 11:43:08',NULL,0.0000,0.0000,0.0000);

	
	
INSERT INTO northwind.order_details_status (id,status_name) VALUES
	 (0,'None'),
	 (1,'Allocated'),
	 (2,'Invoiced'),
	 (3,'Shipped'),
	 (4,'On Order'),
	 (5,'No Stock');

	
	
INSERT INTO northwind.order_details (id,order_id,product_id,quantity,unit_price,discount,status_id,date_allocated,purchase_order_id,inventory_id) VALUES
	 (27,30,34,100.0000,14.0000,0.0,2,NULL,96,83),
	 (28,30,80,30.0000,3.5000,0.0,2,NULL,NULL,63),
	 (29,31,7,10.0000,30.0000,0.0,2,NULL,NULL,64),
	 (30,31,51,10.0000,53.0000,0.0,2,NULL,NULL,65),
	 (31,31,80,10.0000,3.5000,0.0,2,NULL,NULL,66),
	 (32,32,1,15.0000,18.0000,0.0,2,NULL,NULL,67),
	 (33,32,43,20.0000,46.0000,0.0,2,NULL,NULL,68),
	 (34,33,19,30.0000,9.2000,0.0,2,NULL,97,81),
	 (35,34,19,20.0000,9.2000,0.0,2,NULL,NULL,69),
	 (36,35,48,10.0000,12.7500,0.0,2,NULL,NULL,70);
INSERT INTO northwind.order_details (id,order_id,product_id,quantity,unit_price,discount,status_id,date_allocated,purchase_order_id,inventory_id) VALUES
	 (37,36,41,200.0000,9.6500,0.0,2,NULL,98,79),
	 (38,37,8,17.0000,40.0000,0.0,2,NULL,NULL,71),
	 (39,38,43,300.0000,46.0000,0.0,2,NULL,99,77),
	 (40,39,48,100.0000,12.7500,0.0,2,NULL,100,75),
	 (41,40,81,200.0000,2.9900,0.0,2,NULL,101,73),
	 (42,41,43,300.0000,46.0000,0.0,1,NULL,102,104),
	 (43,42,6,10.0000,25.0000,0.0,2,NULL,NULL,84),
	 (44,42,4,10.0000,22.0000,0.0,2,NULL,NULL,85),
	 (45,42,19,10.0000,9.2000,0.0,2,NULL,103,110),
	 (46,43,80,20.0000,3.5000,0.0,1,NULL,NULL,86);
INSERT INTO northwind.order_details (id,order_id,product_id,quantity,unit_price,discount,status_id,date_allocated,purchase_order_id,inventory_id) VALUES
	 (47,43,81,50.0000,2.9900,0.0,1,NULL,NULL,87),
	 (48,44,1,25.0000,18.0000,0.0,1,NULL,NULL,88),
	 (49,44,43,25.0000,46.0000,0.0,1,NULL,NULL,89),
	 (50,44,81,25.0000,2.9900,0.0,1,NULL,NULL,90),
	 (51,45,41,50.0000,9.6500,0.0,2,NULL,104,116),
	 (52,45,40,50.0000,18.4000,0.0,2,NULL,NULL,91),
	 (53,46,57,100.0000,19.5000,0.0,2,NULL,105,101),
	 (54,46,72,50.0000,34.8000,0.0,2,NULL,106,114),
	 (55,47,34,300.0000,14.0000,0.0,2,NULL,107,108),
	 (56,48,8,25.0000,40.0000,0.0,2,NULL,108,106);
INSERT INTO northwind.order_details (id,order_id,product_id,quantity,unit_price,discount,status_id,date_allocated,purchase_order_id,inventory_id) VALUES
	 (57,48,19,25.0000,9.2000,0.0,2,NULL,109,112),
	 (59,50,21,20.0000,10.0000,0.0,2,NULL,NULL,92),
	 (60,51,5,25.0000,21.3500,0.0,2,NULL,NULL,93),
	 (61,51,41,30.0000,9.6500,0.0,2,NULL,NULL,94),
	 (62,51,40,30.0000,18.4000,0.0,2,NULL,NULL,95),
	 (66,56,48,10.0000,12.7500,0.0,2,NULL,111,99),
	 (67,55,34,87.0000,14.0000,0.0,2,NULL,NULL,117),
	 (68,79,7,30.0000,30.0000,0.0,2,NULL,NULL,119),
	 (69,79,51,30.0000,53.0000,0.0,2,NULL,NULL,118),
	 (70,78,17,40.0000,39.0000,0.0,2,NULL,NULL,120);
INSERT INTO northwind.order_details (id,order_id,product_id,quantity,unit_price,discount,status_id,date_allocated,purchase_order_id,inventory_id) VALUES
	 (71,77,6,90.0000,25.0000,0.0,2,NULL,NULL,121),
	 (72,76,4,30.0000,22.0000,0.0,2,NULL,NULL,122),
	 (73,75,48,40.0000,12.7500,0.0,2,NULL,NULL,123),
	 (74,74,48,40.0000,12.7500,0.0,2,NULL,NULL,124),
	 (75,73,41,10.0000,9.6500,0.0,2,NULL,NULL,125),
	 (76,72,43,5.0000,46.0000,0.0,2,NULL,NULL,126),
	 (77,71,40,40.0000,18.4000,0.0,2,NULL,NULL,127),
	 (78,70,8,20.0000,40.0000,0.0,2,NULL,NULL,128),
	 (79,69,80,15.0000,3.5000,0.0,2,NULL,NULL,129),
	 (80,67,74,20.0000,10.0000,0.0,2,NULL,NULL,130);
INSERT INTO northwind.order_details (id,order_id,product_id,quantity,unit_price,discount,status_id,date_allocated,purchase_order_id,inventory_id) VALUES
	 (81,60,72,40.0000,34.8000,0.0,2,NULL,NULL,131),
	 (82,63,3,50.0000,10.0000,0.0,2,NULL,NULL,132),
	 (83,63,8,3.0000,40.0000,0.0,2,NULL,NULL,133),
	 (84,58,20,40.0000,81.0000,0.0,2,NULL,NULL,134),
	 (85,58,52,40.0000,7.0000,0.0,2,NULL,NULL,135),
	 (86,80,56,10.0000,38.0000,0.0,1,NULL,NULL,136),
	 (90,81,81,0.0000,2.9900,0.0,5,NULL,NULL,NULL),
	 (91,81,56,0.0000,38.0000,0.0,0,NULL,NULL,NULL);

	
INSERT INTO northwind.purchase_order_details (id,purchase_order_id,product_id,quantity,unit_cost,date_received,posted_to_inventory,inventory_id) VALUES
	 (238,90,1,40.0000,14.0000,'2006-01-22 00:00:00',1,59),
	 (239,91,3,100.0000,8.0000,'2006-01-22 00:00:00',1,54),
	 (240,91,4,40.0000,16.0000,'2006-01-22 00:00:00',1,55),
	 (241,91,5,40.0000,16.0000,'2006-01-22 00:00:00',1,56),
	 (242,92,6,100.0000,19.0000,'2006-01-22 00:00:00',1,40),
	 (243,92,7,40.0000,22.0000,'2006-01-22 00:00:00',1,41),
	 (244,92,8,40.0000,30.0000,'2006-01-22 00:00:00',1,42),
	 (245,92,14,40.0000,17.0000,'2006-01-22 00:00:00',1,43),
	 (246,92,17,40.0000,29.0000,'2006-01-22 00:00:00',1,44),
	 (247,92,19,20.0000,7.0000,'2006-01-22 00:00:00',1,45);
INSERT INTO northwind.purchase_order_details (id,purchase_order_id,product_id,quantity,unit_cost,date_received,posted_to_inventory,inventory_id) VALUES
	 (248,92,20,40.0000,61.0000,'2006-01-22 00:00:00',1,46),
	 (249,92,21,20.0000,8.0000,'2006-01-22 00:00:00',1,47),
	 (250,90,34,60.0000,10.0000,'2006-01-22 00:00:00',1,60),
	 (251,92,40,120.0000,14.0000,'2006-01-22 00:00:00',1,48),
	 (252,92,41,40.0000,7.0000,'2006-01-22 00:00:00',1,49),
	 (253,90,43,100.0000,34.0000,'2006-01-22 00:00:00',1,61),
	 (254,92,48,100.0000,10.0000,'2006-01-22 00:00:00',1,50),
	 (255,92,51,40.0000,40.0000,'2006-01-22 00:00:00',1,51),
	 (256,93,52,100.0000,5.0000,'2006-01-22 00:00:00',1,37),
	 (257,93,56,120.0000,28.0000,'2006-01-22 00:00:00',1,38);
INSERT INTO northwind.purchase_order_details (id,purchase_order_id,product_id,quantity,unit_cost,date_received,posted_to_inventory,inventory_id) VALUES
	 (258,93,57,80.0000,15.0000,'2006-01-22 00:00:00',1,39),
	 (259,91,65,40.0000,16.0000,'2006-01-22 00:00:00',1,57),
	 (260,91,66,80.0000,13.0000,'2006-01-22 00:00:00',1,58),
	 (261,94,72,40.0000,26.0000,'2006-01-22 00:00:00',1,36),
	 (262,92,74,20.0000,8.0000,'2006-01-22 00:00:00',1,52),
	 (263,92,77,60.0000,10.0000,'2006-01-22 00:00:00',1,53),
	 (264,95,80,75.0000,3.0000,'2006-01-22 00:00:00',1,35),
	 (265,90,81,125.0000,2.0000,'2006-01-22 00:00:00',1,62),
	 (266,96,34,100.0000,10.0000,'2006-01-22 00:00:00',1,82),
	 (267,97,19,30.0000,7.0000,'2006-01-22 00:00:00',1,80);
INSERT INTO northwind.purchase_order_details (id,purchase_order_id,product_id,quantity,unit_cost,date_received,posted_to_inventory,inventory_id) VALUES
	 (268,98,41,200.0000,7.0000,'2006-01-22 00:00:00',1,78),
	 (269,99,43,300.0000,34.0000,'2006-01-22 00:00:00',1,76),
	 (270,100,48,100.0000,10.0000,'2006-01-22 00:00:00',1,74),
	 (271,101,81,200.0000,2.0000,'2006-01-22 00:00:00',1,72),
	 (272,102,43,300.0000,34.0000,NULL,0,NULL),
	 (273,103,19,10.0000,7.0000,'2006-04-17 00:00:00',1,111),
	 (274,104,41,50.0000,7.0000,'2006-04-06 00:00:00',1,115),
	 (275,105,57,100.0000,15.0000,'2006-04-05 00:00:00',1,100),
	 (276,106,72,50.0000,26.0000,'2006-04-05 00:00:00',1,113),
	 (277,107,34,300.0000,10.0000,'2006-04-05 00:00:00',1,107);
INSERT INTO northwind.purchase_order_details (id,purchase_order_id,product_id,quantity,unit_cost,date_received,posted_to_inventory,inventory_id) VALUES
	 (278,108,8,25.0000,30.0000,'2006-04-05 00:00:00',1,105),
	 (279,109,19,25.0000,7.0000,'2006-04-05 00:00:00',1,109),
	 (280,110,43,250.0000,34.0000,'2006-04-10 00:00:00',1,103),
	 (281,90,1,40.0000,14.0000,NULL,0,NULL),
	 (282,92,19,20.0000,7.0000,NULL,0,NULL),
	 (283,111,34,50.0000,10.0000,'2006-04-04 00:00:00',1,102),
	 (285,91,3,50.0000,8.0000,NULL,0,NULL),
	 (286,91,4,40.0000,16.0000,NULL,0,NULL),
	 (288,140,85,10.0000,9.0000,NULL,0,NULL),
	 (289,141,6,10.0000,18.7500,NULL,0,NULL);
INSERT INTO northwind.purchase_order_details (id,purchase_order_id,product_id,quantity,unit_cost,date_received,posted_to_inventory,inventory_id) VALUES
	 (290,142,1,1.0000,13.5000,NULL,0,NULL),
	 (292,146,20,40.0000,60.0000,NULL,0,NULL),
	 (293,146,51,40.0000,39.0000,NULL,0,NULL),
	 (294,147,40,120.0000,13.0000,NULL,0,NULL),
	 (295,148,72,40.0000,26.0000,NULL,0,NULL);

	
INSERT INTO northwind.sales_reports (group_by,display,title,filter_row_source,`default`) VALUES
	 ('Category','Category','Sales By Category','SELECT DISTINCT [Category] FROM [products] ORDER BY [Category];',0),
	 ('country_region','Country/Region','Sales By Country','SELECT DISTINCT [country_region] FROM [customers Extended] ORDER BY [country_region];',0),
	 ('Customer ID','Customer','Sales By Customer','SELECT DISTINCT [Company] FROM [customers Extended] ORDER BY [Company];',0),
	 ('employee_id','Employee','Sales By Employee','SELECT DISTINCT [Employee Name] FROM [employees Extended] ORDER BY [Employee Name];',0),
	 ('Product ID','Product','Sales by Product','SELECT DISTINCT [Product Name] FROM [products] ORDER BY [Product Name];',1);

	
	
	
	