CREATE TABLE  `projekt`.`users` (
 `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
 `username` VARCHAR( 30 ) NOT NULL ,
 `email` VARCHAR( 50 ) NOT NULL ,
 `password` CHAR( 128 ) NOT NULL ,
 `salt` CHAR( 128 ) NOT NULL,
 'admin' TINYINT(1) NOT NULL
) ENGINE = INNODB


CREATE TABLE  `projekt`.`login_attempts` (
 `user_id` INT( 11 ) NOT NULL ,
 `time` VARCHAR( 30 ) NOT NULL
) ENGINE = INNODB

INSERT INTO `projekt`.`users` VALUES(1, 'test_user', 'test@example.com',
'00807432eae173f652f2064bdca1b61b290b52d40e429a7d295d76a71084aa96c0233b82f1feac45529e0726559645acaed6f3ae58a286b9f075916ebf66cacc',
'f9aab579fc1b41ed0c44fe4ecdbfcdb4cb99b9023abb241a6db833288f4eea3c02f76e0d35204a8695077dcf81932aa59006423976224be0390395bae152d4ef');

CREATE TABLE `projekt`.`work_on` (
`work_on_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`user_id` INT NOT NULL FOREIGN KEY REFERENCES users(id) ,
`projekt_id` INT NOT NULL FOREIGN KEY REFERENCES projekt(projekt_id) ,
`hours` INTEGER NOT NULL ,
`date` INTEGER NOT NULL ,
`info` char( 255 )
) ENGONE = INNODB

CREATE TABLE `projekt`.`projekt` (
`projekt_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`projekt_name` VARCHAR( 30 ) NOT NULL ,
`start_date` INTEGER NOT NULL ,
`end_date` INTEGER ,
`info` CHAR( 255 ) 
) ENGINE = INNODB