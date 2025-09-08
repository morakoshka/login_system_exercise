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