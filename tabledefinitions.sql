CREATE TABLE users(
	user_id 		INT(8) AUTO_INCREMENT NOT NULL,
	user_name 		VARCHAR(20) NOT NULL UNIQUE,
	user_pass 		VARCHAR(30) NOT NULL,
	user_joinDate DATETIME NOT NULL
		CHECK (user_joinDate >= CURDATE()),
	user_postCount 	INTEGER NOT NULL DEFAULT 0,
	user_thumbUrl 	VARCHAR(200) DEFAULT NULL,
	user_level 		CHAR(1) NOT NULL DEFAULT 'U',
		CHECK (user_level IN ('U', 'A'),
	UNIQUE INDEX user_name_unique (user_name),
	PRIMARY KEY(user_id)
) ENGINE=INNODB;

CREATE TABLE categories
(
	category_id INTEGER AUTO_INCREMENT NOT NULL,
	category_name VARCHAR(50) NOT NULL UNIQUE,
	category_desc VARCHAR(300) NOT NULL,
	PRIMARY KEY (category_id),
	UNIQUE INDEX category_name_index (category_name)
) ENGINE=INNODB;

CREATE TABLE posts
(
	post_id			INT(8) NOT NULL AUTO_INCREMENT,
	post_title		VARCHAR(50) NOT NULL,
	post_body		VARCHAR(500) NOT NULL,
	post_imgURL		VARCHAR(200),
	post_author		INT(8) NOT NULL,
	post_category 	INTEGER NOT NULL,
	post_date		DATETIME NOT NULL,
		CHECK (post_date >= CUR_DATE()),
	PRIMARY KEY(post_id),
	FOREIGN KEY (post_author) REFERENCES users(user_id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
) ENGINE=INNODB;

CREATE TABLE replies
(
	replies_id		INT(8) NOT NULL AUTO_INCREMENT,
	replies_to		INT(8) NOT NULL
	replies_author  INT(8) NOT NULL,
	replies_title	VARCHAR(50) NOT NULL,
	replies_body	VARCHAR(500) NOT NULL,
	replies_imgUrl	VARCHAR(200),
	PRIMARY KEY(replies_id),
	FOREIGN KEY (replies_author) REFERENCES user(user_id)
		ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (replies_to) REFERENCES posts(post_id)
		ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB;
