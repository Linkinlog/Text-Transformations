/**
 * TextTransformer Defaults
 */

CREATE DATABASE IF NOT EXISTS TextTransformer;
CREATE DATABASE IF NOT EXISTS TextTransformer_test;

# Create the logger table 
CREATE TABLE IF NOT EXISTS TextTransformer.logger (
	id int(10) unsigned auto_increment,
	command_id int(10) NULL,
	details VARCHAR(255) NULL,
	created_at timestamp default NOW(),
	updated_at timestamp NULL,
	deleted_at timestamp NULL,
	primary key (id),
	index (id, command_id)
);

# Create the commands table
CREATE TABLE IF NOT EXISTS TextTransformer.commands (
	id int(10) unsigned auto_increment,
	alias VARCHAR(100) NULL,
	created_at timestamp default NOW(),
	updated_at timestamp NULL,
	deleted_at timestamp NULL,
	primary key (id),
	index (id)
);
