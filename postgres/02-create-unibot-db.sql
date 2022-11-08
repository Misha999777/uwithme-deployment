CREATE USER unibot_user;
ALTER USER unibot_user WITH PASSWORD 'password';
CREATE DATABASE unibot;
GRANT ALL PRIVILEGES ON DATABASE unibot TO unibot_user;