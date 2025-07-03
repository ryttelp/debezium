INSERT INTO kidok.dbo.users (username, email, password_hash, first_name, last_name, date_of_birth, created_at, updated_at, is_active)
VALUES
('jdoe', 'jdoe@example.com', 'hashed_pwd_123', 'John', 'Doe', '1990-05-15', GETDATE(), GETDATE(), 1),
('asmith', 'asmith@example.com', 'hashed_pwd_456', 'Alice', 'Smith', '1985-09-30', GETDATE(), GETDATE(), 1),
('bwhite', 'bwhite@example.com', 'hashed_pwd_789', 'Bob', 'White', '1978-02-20', GETDATE(), GETDATE(), 0),
('kturner', 'kturner@example.com', 'hashed_pwd_abc', 'Karen', 'Turner', '1995-11-10', GETDATE(), GETDATE(), 1),
('mmiller', 'mmiller@example.com', 'hashed_pwd_def', 'Mike', 'Miller', NULL, GETDATE(), GETDATE(), 1),
('tgreen', 'tgreen@example.com', 'hashed_pwd_ghi', NULL, NULL, '2000-03-05', GETDATE(), GETDATE(), 1),
('rlee', 'rlee@example.com', 'hashed_pwd_jkl', 'Rachel', 'Lee', '1992-07-22', GETDATE(), GETDATE(), 0),
('fchan', 'fchan@example.com', 'hashed_pwd_mno', 'Felix', 'Chan', '1988-12-14', GETDATE(), GETDATE(), 1),
('slopez', 'slopez@example.com', 'hashed_pwd_pqr', 'Sara', 'Lopez', '1991-04-08', GETDATE(), GETDATE(), 1),
('jblack', 'jblack@example.com', 'hashed_pwd_stu', 'James', 'Black', NULL, GETDATE(), GETDATE(), 1);


INSERT INTO kidok.dbo.users (username, email, password_hash, first_name, last_name, date_of_birth, created_at, updated_at, is_active)
VALUES
('nwilson', 'nwilson@example.com', 'hashed_pwd_001', 'Nathan', 'Wilson', '1983-08-12', GETDATE(), GETDATE(), 1),
('lking', 'lking@example.com', 'hashed_pwd_002', 'Laura', 'King', '1996-01-03', GETDATE(), GETDATE(), 1),
('hroberts', 'hroberts@example.com', 'hashed_pwd_003', 'Henry', 'Roberts', NULL, GETDATE(), GETDATE(), 1),
('ychen', 'ychen@example.com', 'hashed_pwd_004', 'Yuki', 'Chen', '1999-06-17', GETDATE(), GETDATE(), 0),
('dwalker', 'dwalker@example.com', 'hashed_pwd_005', NULL, 'Walker', '1980-10-25', GETDATE(), GETDATE(), 1),
('kperez', 'kperez@example.com', 'hashed_pwd_006', 'Kara', NULL, '1993-02-11', GETDATE(), GETDATE(), 1),
('mgonzalez', 'mgonzalez@example.com', 'hashed_pwd_007', 'Miguel', 'Gonzalez', '1987-04-30', GETDATE(), GETDATE(), 1),
('vbrown', 'vbrown@example.com', 'hashed_pwd_008', 'Vanessa', 'Brown', '1994-12-01', GETDATE(), GETDATE(), 0),
('zanderson', 'zanderson@example.com', 'hashed_pwd_009', 'Zane', 'Anderson', NULL, GETDATE(), GETDATE(), 1),
('cphillips', 'cphillips@example.com', 'hashed_pwd_010', 'Cindy', 'Phillips', '2001-07-19', GETDATE(), GETDATE(), 1);

INSERT INTO kidok.dbo.users (username, email, password_hash, first_name, last_name, date_of_birth, created_at, updated_at, is_active)
VALUES
('ejackson', 'ejackson@example.com', 'hashed_pwd_011', 'Emma', 'Jackson', '1998-09-23', GETDATE(), GETDATE(), 1),
('tbailey', 'tbailey@example.com', 'hashed_pwd_012', 'Tom', 'Bailey', '1982-05-16', GETDATE(), GETDATE(), 1),
('cscott', 'cscott@example.com', 'hashed_pwd_013', 'Chloe', 'Scott', NULL, GETDATE(), GETDATE(), 1),
('dnguyen', 'dnguyen@example.com', 'hashed_pwd_014', 'Duy', 'Nguyen', '1990-11-02', GETDATE(), GETDATE(), 0),
('hwright', 'hwright@example.com', 'hashed_pwd_015', 'Hannah', 'Wright', '2002-03-14', GETDATE(), GETDATE(), 1),
('bmartin', 'bmartin@example.com', 'hashed_pwd_016', 'Ben', 'Martin', NULL, GETDATE(), GETDATE(), 1),
('rpatel', 'rpatel@example.com', 'hashed_pwd_017', 'Ravi', 'Patel', '1989-08-07', GETDATE(), GETDATE(), 1),
('agomez', 'agomez@example.com', 'hashed_pwd_018', NULL, 'Gomez', '1975-06-28', GETDATE(), GETDATE(), 0),
('jward', 'jward@example.com', 'hashed_pwd_019', 'Julia', 'Ward', '1997-10-12', GETDATE(), GETDATE(), 1),
('smurphy', 'smurphy@example.com', 'hashed_pwd_020', 'Sam', 'Murphy', '1984-12-03', GETDATE(), GETDATE(), 1);

INSERT INTO kidok.dbo.users (username, email, password_hash, first_name, last_name, date_of_birth, created_at, updated_at, is_active)
VALUES
('lramirez', 'lramirez@example.com', 'hashed_pwd_021', 'Luis', 'Ramirez', '1993-03-09', GETDATE(), GETDATE(), 1),
('ncollins', 'ncollins@example.com', 'hashed_pwd_022', 'Nina', 'Collins', '1986-07-27', GETDATE(), GETDATE(), 1),
('owells', 'owells@example.com', 'hashed_pwd_023', 'Oscar', 'Wells', NULL, GETDATE(), GETDATE(), 1),
('jkennedy', 'jkennedy@example.com', 'hashed_pwd_024', 'Jasmine', 'Kennedy', '2000-01-01', GETDATE(), GETDATE(), 0),
('tgriffin', 'tgriffin@example.com', 'hashed_pwd_025', 'Tony', NULL, '1995-05-19', GETDATE(), GETDATE(), 1),
('mbarnes', 'mbarnes@example.com', 'hashed_pwd_026', 'Maria', 'Barnes', '1981-11-15', GETDATE(), GETDATE(), 1),
('kbell', 'kbell@example.com', 'hashed_pwd_027', 'Kevin', 'Bell', NULL, GETDATE(), GETDATE(), 0),
('awood', 'awood@example.com', 'hashed_pwd_028', 'Angela', 'Wood', '1992-02-05', GETDATE(), GETDATE(), 1),
('jreed', 'jreed@example.com', 'hashed_pwd_029', NULL, 'Reed', '1979-09-18', GETDATE(), GETDATE(), 1),
('lsanders', 'lsanders@example.com', 'hashed_pwd_030', 'Lara', 'Sanders', '1988-06-30', GETDATE(), GETDATE(), 1);

INSERT INTO kidok.dbo.users (username, email, password_hash, first_name, last_name, date_of_birth, created_at, updated_at, is_active)
VALUES
('dcooper', 'dcooper@example.com', 'hashed_pwd_031', 'Daniel', 'Cooper', '1985-04-22', GETDATE(), GETDATE(), 1),
('tjenkins', 'tjenkins@example.com', 'hashed_pwd_032', 'Tina', 'Jenkins', NULL, GETDATE(), GETDATE(), 1),
('srodriguez', 'srodriguez@example.com', 'hashed_pwd_033', 'Sergio', 'Rodriguez', '1994-09-01', GETDATE(), GETDATE(), 0),
('kmitchell', 'kmitchell@example.com', 'hashed_pwd_034', 'Kylie', 'Mitchell', '1999-12-31', GETDATE(), GETDATE(), 1),
('ahughes', 'ahughes@example.com', 'hashed_pwd_035', 'Alex', 'Hughes', '1983-07-07', GETDATE(), GETDATE(), 1),
('rpowell', 'rpowell@example.com', 'hashed_pwd_036', NULL, NULL, NULL, GETDATE(), GETDATE(), 1),
('lbutler', 'lbutler@example.com', 'hashed_pwd_037', 'Liam', 'Butler', '1991-03-25', GETDATE(), GETDATE(), 1),
('emorgan', 'emorgan@example.com', 'hashed_pwd_038', 'Ella', 'Morgan', NULL, GETDATE(), GETDATE(), 0),
('bgriffith', 'bgriffith@example.com', 'hashed_pwd_039', 'Brian', 'Griffith', '1977-10-10', GETDATE(), GETDATE(), 1),
('nreyes', 'nreyes@example.com', 'hashed_pwd_040', 'Nora', 'Reyes', '2003-08-13', GETDATE(), GETDATE(), 1);