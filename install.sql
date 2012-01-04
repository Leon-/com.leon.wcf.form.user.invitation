ALTER TABLE wcf1_user ADD invitationCode INT(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE wcf1_user ADD INDEX (invitationCode);

DROP TABLE IF EXISTS wcf1_user_invitation;
CREATE TABLE wcf1_user_invitation (
	invitationID INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	time INT(10) UNSIGNED NOT NULL DEFAULT 0,
	senderID INT(10) UNSIGNED NOT NULL DEFAULT 0,
	email VARCHAR(255) NOT NULL DEFAULT '',
	code INT(10) UNSIGNED NOT NULL DEFAULT 0,
	isSealed TINYINT(1) NOT NULL DEFAULT 0,
	PRIMARY KEY (invitationID),
	INDEX (code)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
