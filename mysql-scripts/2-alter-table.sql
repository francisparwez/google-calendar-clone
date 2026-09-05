USE calendar;

ALTER TABLE `appointments`
ADD `start_time` TIME NOT NULL AFTER `end_date`,
ADD `end_time` TIME NOT NULL AFTER `start_time`;