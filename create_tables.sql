CREATE TABLE category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE expenditure (
    id INT AUTO_INCREMENT PRIMARY KEY,
    expenditure_date DATE NOT NULL,
    expenditure_amount INT NOT NULL,
    expenditure_category INT,
    expenditure_text TEXT,
    CONSTRAINT fk_exp_category FOREIGN KEY (expenditure_category) REFERENCES category(category_id)
);

CREATE TABLE exp_limit (
    id INT AUTO_INCREMENT PRIMARY KEY,
    month VARCHAR(7) NOT NULL,
    amount INT NOT NULL,
    category_id INT,
    CONSTRAINT fk_limit_category FOREIGN KEY (category_id) REFERENCES category(category_id)
);