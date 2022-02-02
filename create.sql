CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(13)
);


CREATE TABLE service_employee(
    service_employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    work_email VARCHAR(100),
    active BOOLEAN
);


CREATE TABLE sales_employee(
    sales_employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    work_email VARCHAR(100),
    active BOOLEAN
);

CREATE TABLE car(
    vin SERIAL PRIMARY KEY,
    customer_id INTEGER,
    sales_employee_id INTEGER,
    make VARCHAR(50),
    model VARCHAR(50),
    price DECIMAL(10,2), 
    miles INTEGER,
    year INTEGER,
    sold BOOLEAN,
    new BOOLEAN,
    car_desc TEXT,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
    FOREIGN KEY(sales_employee_id) REFERENCES sales_employee(sales_employee_id) ON DELETE CASCADE
);

CREATE TABLE parts(
    parts_id SERIAL PRIMARY KEY,
    part_name VARCHAR(50),
    price DECIMAL(10,2),
    vendor VARCHAR(50),
    in_stock BOOLEAN
);

CREATE TABLE repair_ticket(
    ticket_id SERIAL PRIMARY KEY,
    vin INTEGER NOT NULL,
    parts_id INTEGER,
    customer_id INTEGER,
    need_parts BOOLEAN,
    price DECIMAL(10,2),
    issue TEXT,
    ticket_date TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc' ,now()),
    FOREIGN KEY(vin) REFERENCES car(vin) ON DELETE CASCADE,
    FOREIGN KEY(parts_id) REFERENCES parts(parts_id) ON DELETE CASCADE,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE    
);



CREATE TABLE service_employee_ticket(
    ticket_id INTEGER NOT NULL,
    service_employee_id INTEGER NOT NULL,
    FOREIGN KEY(ticket_id) REFERENCES repair_ticket(ticket_id) ON DELETE CASCADE,
    FOREIGN KEY(service_employee_id) REFERENCES service_employee(service_employee_id) ON DELETE CASCADE
);


CREATE TABLE sales_invoice(
    invoice_id SERIAL PRIMARY KEY,
    vin INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    sales_employee_id INTEGER NOT NULL,
    price DECIMAL(10,2),
    invoice_date TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc' ,now())
);