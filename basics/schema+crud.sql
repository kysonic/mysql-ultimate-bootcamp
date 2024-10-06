CREATE TABLE cats (
  name VARCHAR(50),
  age INT
);

CREATE TABLE dogs (
  name VARCHAR(50),
  breed VARCHAR(50),
  age INT
);

# Show properties
SHOW COLUMNS FROM cats;
SHOW COLUMNS FROM dogs;
DESC cats;

# Insert 
INSERT INTO cats (name, age) 
VALUES ('Blue Steele', 5);

INSERT INTO cats (name, age) 
VALUES 
  ('Meatball', 5), 
  ('Turkey', 1), 
  ('Potato Face', 15);

# Select 
SELECT * FROM cats;

# NOT NULL
CREATE TABLE cats2 (
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

# Default 
CREATE TABLE cats3  (    
    name VARCHAR(20) DEFAULT 'no name provided',    
    age INT DEFAULT 99  
);

# PRIMARY KEY 
CREATE TABLE unique_cats (
	  cat_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
);

CREATE TABLE unique_cats2 (
	  cat_id INT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    PRIMARY KEY (cat_id)
);

CREATE TABLE unique_cats3 (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    PRIMARY KEY (cat_id)
);

# Aliases
SELECT cat_id AS id, name FROM cats;

# Update

SELECT * FROM cats WHERE name='Jackson'; 
 
UPDATE cats SET name='Jack' WHERE name='Jackson'; 

# DELETE 

DELETE FROM cats WHERE name='Egg';