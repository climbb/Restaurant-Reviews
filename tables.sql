CREATE TABLE  restaurants (
  restaurant_id INT,
  name varchar(80) NOT NULL,
  PRIMARY KEY (restaurant_id)
) ENGINE = INNODB;

CREATE TABLE restaurants_categories (
  restaurant_id INT,
  category varchar(40) NOT NULL,
  PRIMARY KEY (restaurant_id, category),
  FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
) ENGINE = INNODB;

CREATE TABLE branches (
  restaurant_id INT,
  branch_no INT NOT NULL,
  location VARCHAR(256) NOT NULL,
  seats INT NOT NULL,
  PRIMARY KEY (restaurant_id, branch_no),
  FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
) ENGINE = INNODB;

CREATE TABLE customers (
  customer_id INT,
  name VARCHAR(80) NOT NULL,
  birthday DATE NOT NULL,
  PRIMARY KEY (customer_id)
) ENGINE = INNODB;

CREATE TABLE customers_referrers (
  customer_id INT ,
  referrer_customer_id INT NOT NULL,
  `date` DATE NOT NULL,
  PRIMARY KEY (customer_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (referrer_customer_id) REFERENCES customers(customer_id)
) ENGINE = INNODB;

CREATE TABLE visits (
  visit_id INT,
  customer_id INT NOT NULL,
  restaurant_id INT NOT NULL,
  branch_no INT NOT NULL,
  `date` DATE NOT NULL,
  comments TEXT,
  amount DECIMAL(10,2),
  score DECIMAL(2,1),
  PRIMARY KEY (visit_id),
  FOREIGN KEY (restaurant_id, branch_no) REFERENCES branches(restaurant_id, branch_no),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
) ENGINE = INNODB;

CREATE TABLE pearls (
  customer_id INT ,
  points INT NOT NULL,
  PRIMARY KEY (customer_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
) ENGINE = INNODB;

CREATE TABLE diamonds (
  customer_id INT,
  year DECIMAL(4,0) NOT NULL,
  shares INT NOT NULL,
  PRIMARY KEY (customer_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
) ENGINE = INNODB;

