create database user_system;

create extension pgcrypto;

create table users (
    user_id int generated always as identity,
    username character varying(30) not null,
    brith_day timestamptz not null,
    gender smallint not null check(gender in (1,2)),
    password character varying(130) not null
);


insert into users (username, brith_day, gender, password) values
('dostonbek', '2002-03-30', 1, crypt('1111', gen_salt('bf'))),
('anvar', '2002-08-29', 1, crypt('2222', gen_salt('bf'))),
('abdumalik', '2003-01-28', 1, crypt('3258', gen_salt('bf'))),
('jasurbek', '2000-09-26', 1, crypt('aa11', gen_salt('bf'))),
('islom', '2004-12-21', 1, crypt('aa22', gen_salt('bf'))),
('shoyusuf', '2006-12-02', 1, crypt('aa33', gen_salt('bf'))),
('sarvar', '2000-01-10', 1, crypt('4444', gen_salt('bf'))),
('rustam', '2002-08-17', 1, crypt('1234', gen_salt('bf'))),
('abdulloh', '1999-11-11', 1, crypt('4567', gen_salt('bf'))),
('dilshod', '2001-04-09', 1, crypt('0000', gen_salt('bf'))),
('shahzod', '2000-07-08', 1, crypt('9999', gen_salt('bf'))),
('sarvar', '2003-06-07', 1, crypt('9999', gen_salt('bf'))),
('abdujabbor', '2003-09-24', 1, crypt('qwerty', gen_salt('bf'))),
('mandev', '1992-05-17', 1, crypt('0007', gen_salt('bf'))),
('shukurbek', '1997-03-12', 1, crypt('7701', gen_salt('bf'))),
('jahongir', '2001-04-01', 1, crypt('7777', gen_salt('bf'))),
('13ek', '1994-11-13', 1, crypt('1331', gen_salt('bf'))),
('oybek', '1990-12-11', 1, crypt('6789', gen_salt('bf'))),
('IBRAGIM', '2003-07-14', 1, crypt('1314', gen_salt('bf')));