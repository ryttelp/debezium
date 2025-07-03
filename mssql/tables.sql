create database kidok;
GO
  
USE kidok;
EXEC sys.sp_cdc_enable_db;
GO
  
USE kidok;
CREATE TABLE kidok.dbo.users (
	user_id int IDENTITY(1,1) NOT NULL,
	username varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	email varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	password_hash varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	first_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	date_of_birth date NULL,
	created_at datetime2 DEFAULT getdate() NULL,
	updated_at datetime2 DEFAULT getdate() NULL,
	is_active bit DEFAULT 1 NULL,
	CONSTRAINT PK__users__B9BE370FB386B09A PRIMARY KEY (user_id),
	CONSTRAINT UQ__users__AB6E6164D3B427D4 UNIQUE (email),
	CONSTRAINT UQ__users__F3DBC57289682242 UNIQUE (username)
);
CREATE TABLE kidok.dbo.users_sink (
	user_id int NOT NULL,
	username varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	email varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	password_hash varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	first_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	last_name varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	date_of_birth date NULL,
	created_at datetime2 DEFAULT getdate() NULL,
	updated_at datetime2 DEFAULT getdate() NULL,
	is_active bit DEFAULT 1 NULL,
	CONSTRAINT PK__users__B9BE370FB386B09B PRIMARY KEY (user_id),
	CONSTRAINT UQ__users__AB6E6164D3B427D5 UNIQUE (email),
	CONSTRAINT UQ__users__F3DBC57289682243 UNIQUE (username)
);
GO
  
EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name   = N'users', 
    @role_name     = NULL;