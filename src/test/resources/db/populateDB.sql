DELETE FROM user_roles;
DELETE FROM meals;
DELETE FROM users;

ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password) VALUES
  ('User', 'user@yandex.ru', 'password'),
  ('Admin', 'admin@gmail.com', 'admin');

INSERT INTO user_roles (role, user_id) VALUES
  ('ROLE_USER', 100000),
  ('ROLE_ADMIN', 100001);

INSERT INTO meals (datetime, description, calories, userid) VALUES
  ('10.12.2009', 'sfdsf',1000, 100000),
  ('10.12.2009', 'aaaaaa',2000, 100000),
  ('10.12.2009', 'sfdsf',1000, 100001),
  ('10.12.2009', 'aaaaaa',2000, 100001);

