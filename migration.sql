USE adlister_db;

SET FOREIGN_KEY_CHECKS=0;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS ad_category;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE
);

CREATE TABLE categories (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

# Pre-set categories for users to choose from
INSERT INTO categories(name) VALUES
('Civil Rights'),
('Immigration'),
('Race & Ethnicity'),
('Ability'),
('Gender & Stereotypes');


# Tie categories table to ads (many to many relationship)
CREATE TABLE ad_category (
    ad_id INTEGER UNSIGNED NOT NULL,
    category_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ads(id),
    FOREIGN KEY (category_id) REFERENCES categories(id)
);