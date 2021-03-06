/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

DROP TABLE IF EXISTS `person_nicknames`;

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `id` BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `first` TEXT NOT NULL,
  `last` TEXT NOT NULL,
  `bio` TEXT NOT NULL)
 ENGINE=InnoDB;

CREATE TABLE `person_nicknames` (
  `object_id` BIGINT UNSIGNED NOT NULL,
  `index` BIGINT UNSIGNED NOT NULL,
  `value` TEXT NOT NULL,
  CONSTRAINT `person_nicknames_object_id_fk`
    FOREIGN KEY (`object_id`)
    REFERENCES `person` (`id`)
    ON DELETE CASCADE)
 ENGINE=InnoDB;

CREATE INDEX `object_id_i`
  ON `person_nicknames` (`object_id`);

CREATE INDEX `index_i`
  ON `person_nicknames` (`index`);

