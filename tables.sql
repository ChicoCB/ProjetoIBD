DROP TABLE IF EXISTS sales_products;
DROP TABLE IF EXISTS product_prices;
DROP TABLE IF EXISTS sales_clients;
DROP TABLE IF EXISTS clients_adresses;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS sales_adresses;
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS adresses;

#Todas as tabelas em normalização 3FN
create table products (
	prod_id integer,
    prod_type varchar(50),
    prod_subtype varchar(50),
    prod_description varchar(255),
    stock_quantity integer,
	weight float, # grams
	package_size_width float, #Centimeters
    package_size_length float,
    package_size_height float,
    is_fragile bool,
    max_package_stack integer,
    image mediumblob default null,
    video longblob default null,
    manual longblob default null,
    external_link varchar(255) default null,
    
    primary key (prod_id)
);

create table clients (
	client_id integer,
    full_name varchar(255),
    first_name varchar(255),
    last_name varchar(255),
    age integer,
    date_of_birth date,
    cpf char(11) unique,
    cnpj char(14) unique default null,
    email varchar(255),
    phone varchar(20),
    credit_card_type varchar(50),
    credit_card_number varchar(50),
    credit_card_expiration varchar(50),
    credit_card_csc varchar(50), #Card security code
    
    primary key (client_id)
);

create table adresses (
	adress_id integer,
	country varchar(255),
    state varchar(255),
    city varchar(255),
    zip_code varchar(255),
    street varchar(255),
    building_number varchar(255),
    is_home_adress bool default false,
    
    primary key (adress_id)
);

create table sales (
	sale_id integer,
	payment_type varchar(20),
    purchase_date date,
    prefered_day_period enum('8am - 12am','12am - 5pm','5pm - 9pm','9pm - 12pm'),
    receipt mediumblob,
    delivery_deadline date,
    sale_status enum('Processing','Delivered','Canceled'),
    
    primary key (sale_id)
);

create table product_prices (
	prod_id integer,
    price varchar(255),
    from_date date,
    to_date date,
    
    primary key (prod_id,from_date),
    foreign key (prod_id) references products(prod_id) ON DELETE CASCADE
);

create table clients_adresses (
	client_id integer,
	adress_id integer,
    
    primary key (client_id,adress_id),
    foreign key (client_id) references clients(client_id) ON DELETE CASCADE,
    foreign key (adress_id) references adresses(adress_id) ON DELETE CASCADE
);

create table sales_adresses (
	sale_id integer,
    adress_id integer,
    
    primary key (sale_id,adress_id),
    foreign key (adress_id) references adresses(adress_id),
    foreign key (sale_id) references sales(sale_id)
);

create table sales_clients (
	sale_id integer,
    client_id integer,
    
    primary key (sale_id,client_id),
    foreign key (sale_id) references sales(sale_id) ON DELETE CASCADE,
    foreign key (client_id) references clients(client_id) ON DELETE CASCADE
);

create table sales_products (
	sale_id integer,
    prod_id integer,
    prod_quantity integer,
	discount decimal(5,2) default 0, #5 digitos, 2 casas antes da virgula
    
    primary key(sale_id,prod_id),
    foreign key (sale_id) references sales(sale_id)  ON DELETE CASCADE,
	foreign key (prod_id) references products(prod_id)  ON DELETE CASCADE
);