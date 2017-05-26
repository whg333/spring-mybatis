DROP TABLE IF EXISTS contact;

CREATE TABLE contact(
	id INT(5) PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255),
	email VARCHAR(255),
	address VARCHAR(255),
	telephone VARCHAR(255)
);

INSERT INTO contact (name, email, address, telephone) VALUES ('whg', 'whg@dataguru.cn', 'whg_address', '12345');
INSERT INTO contact (name, email, address, telephone) VALUES ('geym', 'geym@dataguru.cn', 'geym_address', '67890');