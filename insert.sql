INSERT INTO customer(first_name, last_name, email, phone_number) VALUES
('Ben', 'Dover', 'bendover@cumminscider.com', '5555551234'),
('Lucifer', 'Morningstar', 'thedevil@lux.com', '6666661313'),
('Anita', 'Life', 'anitahero@bonnietyler.com', '5558675309'),
('Stevie', 'Nicks', 'snicks@fleetwoodmac.com', '2813308004'),
('Hugh', 'Jass', 'sirmixalot@bigbutts.com', '7771234567');

INSERT INTO service_employee(first_name, last_name, work_email, active) VALUES
('Seymour', 'Dicks', 'sdicks@sindealership.com', FALSE),
('Betty', 'Humper', 'bhumper@sindealership.com', TRUE),
('Carl', 'Lewless', 'clewless@sindealership.com', TRUE),
('Phil', 'McKraken', 'pmckraken@sindealership.com', TRUE),
('Eric', 'Shun', 'eshun@sindealership.com', TRUE);

INSERT INTO sales_employee(first_name, last_name, work_email, active) VALUES
('Harry', 'Cox', 'hcox@sindealership.com', TRUE),
('Buck', 'Nekkid', 'bnekkid@sindealership.com', FALSE),
('Eileen', 'Dover', 'edover@sindealership.com', TRUE),
('Al', 'Kaholich', 'akaholich@sindealership.com', TRUE),
('Mary', 'Jane', 'mjane@sindealership.com', TRUE),
('Mike', 'Hunt', 'mhunt@sindealership.com', FALSE);


INSERT INTO car(customer_id, sales_employee_id, make, model, price, miles,
 year, sold, new, car_desc) VALUES
(1,3,'Land Rover', 'Range Rover', 77998.99, 10000, 2021, TRUE, TRUE, 'Clean 
Carfax 1 Owner! Firenze Red Metallic 2021 Land Rover Range Rover Velar P340 
R-Dynamic S 4WD! LOADED! 22 Wheels! Heads Up Display! Cold Climate Pack! 14-Way 
Seats! Adaptive Cruise Control! Tow Hitch! Interactive Driver Display! Meridian 
3D Surround Sound! 8-Speed Automatic 3.0L I6 TurbochargedRecent Arrival! 20/26 
City/Highway MPG'),
(NULL, NULL, 'Lamborghini', 'Aventador', 517770.99, 5000, 2020, FALSE, TRUE, 'MSRP: From $208,571
Horsepower: 610 to 630 hp
MPG: 13 city / 18 highway
Engine: 5.2 L V10
Dimensions: 178″ L x 76″ W x 46″ H
Torque: 413 to 442 lb-ft'),
(2,5, 'Chevrolet', 'Corvette', 40500.66, 336000, 1970, TRUE, FALSE, 'In 1969 GM 
was in the middle of a parts strike, which forced them to run the 1969 Corvette 
production late. This, in turn, meant the 1970 production run would be shortened
 up with the Corvettes hitting dealer showrooms February of 1970. In 1970 Chevrolet
  also snuck in a new, little-known engine option- the LT 1. This engine was designed
   to help with insurance costs and power-to-weight ratios for the people wanting to race. 
   With 370 gross horsepower at 6,000 RPM, it featured many hi-performance and heavy 
   duty components, including solid lifters, forged TRW aluminum pistons, 11:1 compression,
    four-bolt main cap block, steel crank, special hi-lift cam, high rise aluminum intake, 
    780 CFM Holley four-barrel carburetor, baffled oil pan, ram horn exhaust manifolds, 
    high volume oil pump, high volume fuel pump with no return line, larger radiator and shroud,
     2 1/2 inch exhaust, 6500 red line tachometer, and transistor ignition. The 1970 Corvette
      LT 1 shared the same hood and suspension as the big block Corvette.' ),
(5,1, 'Nissan', 'Juke', 5000, 150000, 2010, TRUE, FALSE, 'This is a clown car, would
accept monopoly money for it'),
(3, 4, 'Cadillac', 'Escalade', 129998.87, 16000, 2021, TRUE, TRUE, 'Escalade combines
 dynamic performance and poised handling. Look forward to a powerful yet nimble drive
  every time you sit behind the wheel. ' ),
(4,1, 'Audi', 'RS5', 75900, 2347, 2022, TRUE, TRUE, 'Break the mold.
Delivering the performance you seek with uncompromised styling, the Audi RS 5 
Coupe delivers an exhilarating performance.');

INSERT INTO parts(part_name, price, vendor, in_stock) VALUES
('Radiator', 999.99, 'Freightliner', FALSE),
('Tires', 1000.98, 'Good Year', TRUE),
('Spinner Rims', 2500, 'Dub Wheels', TRUE),
('Brakes', 89.99, 'Duralast', FALSE),
('Spark Plugs', 8.49, 'Bosch', TRUE),
('Alternator', 249.49, 'Duralast', TRUE),
('Starter', 79.99, 'Carquest', TRUE),
('Battery', 211.99, 'DieHard', TRUE),
('Shocks', 282.94, 'Bouncy Bed', TRUE),
('Lug Nut', 20.19, 'Dorman', FALSE);

INSERT INTO repair_ticket(vin, parts_id, customer_id, need_parts, price, issue) 
VALUES
(4, 3, 5, TRUE, 3219.99, 'Adding Spinner Rims'),
(1, 5, 1, TRUE, 1499.99, 'Range Rover lost power, needed spark plugs'),
(3, NULL, 3, FALSE, 49.99, 'Diagnostic Tests'),
(2, 8, NULL, TRUE, 00.00, 'Car from lot needed new battery'),
(4, 9, 5, TRUE, 532.99, 'Shocks worn all the way down, car sitting on tires');

INSERT INTO service_employee_ticket(ticket_id, service_employee_id) VALUES
(1,5),
(2,4),
(3,3),
(1,3),
(2,5),
(4,2),
(5,2),
(5,4);


INSERT INTO sales_invoice(vin, customer_id, sales_employee_id, price) VALUES
(1, 1, 3, 85000),
(3, 2, 5, 38000),
(4, 5, 1, 10500),
(5, 3, 4, 127500),
(6, 4, 1, 83500);