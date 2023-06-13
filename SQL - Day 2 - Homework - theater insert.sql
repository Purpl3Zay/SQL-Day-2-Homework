create table customers(
    customer_id SERIAL primary key,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    contact_number VARCHAR(15),
    email_addressVARCHAR(100),
);

create table movies(
    movie_id SERIAL primary key,
    movie_name VARCHAR(100)
);

create table tickets(
    ticket_id SERIAL primary key,
    ticket_date DATE default CURRENT_DATE,
    customer_id INTEGER not null,
    movie_id INTEGER not null,
    foreign key(customer_id) references customers(customer_id),
    foreign key(movie_id) references movies(movie_id)
);

create table inventory(
    upc SERIAL primary key,
    product_amount INTEGER
);

create table concessions(
    item_id SERIAL primary_key,
    item_name VARCHAR(100),
    price NUMERIC(5,2),
    upc INTEGER not null,
    foreign key(upc) references inventory(upc)
);