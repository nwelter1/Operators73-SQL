INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)VALUES(
	1,
	'Nate',
	'Welter',
	'555 W Ontario St Chicago, IL 60611',
	'4242-4242-4242-4242 623 05/20'
);

INSERT INTO brand(
	seller_id,
	brand_name,
	contact_num,
	address
)VALUES(
	1,
	'Coding Temple LLC',
	'773-555-4490',
	'222 E ontario St, Chicago, IL'
);

-- Inventory addition
INSERT INTO inventory(
	upc,
	product_count
)VALUES(
	1,
	50
);

-- Adding in a product
INSERT INTO product(
	product_id,
	prod_name,
	amount,
	seller_id,
	upc
)VALUES(
	1,
	'Python 101',
	50.00,
	1,
	1
);


-- Cart 
INSERT INTO cart(
	cart_id,
	customer_id
)VALUES(
	1,
	1
);
-- Order
INSERT INTO order_(
	sub_total,
	total_cost,
	upc,
	cart_id
)VALUES(
	75.00,
	100.00,
	1,
	1
);






