CREATE TABLE users (
    id INT(11) NOT NULL AUTO_INCREMENT,
    username VARCHAR(30) NOT NULL,
    pwd VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIME,
    PRIMARY KEY (id)
);

CREATE TABLE comments (
	id INT(11) NOT NULL AUTO_INCREMENT,
    username VARCHAR(30) NOT NULL,
    comment_text TEXT NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIME,
    users_id INT(11),
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users (id) ON DELETE SET NULL
);

INSERT INTO users (userrname, pwd, email) VALUES ('Temmie', 'Kitty01', 'meow@mrroow.mow');

INSERT INTO sometable (data_column1, data_column2, data_column3) VALUES (data_value1, data_value2, data_value3);

SELECT username, pwd FROM users WHERE id = '3';

DELETE FROM users WHERE id = 1;