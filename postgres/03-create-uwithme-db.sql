CREATE USER uwithme_user;
ALTER USER uwithme_user WITH PASSWORD 'password';
CREATE DATABASE uwithme;
GRANT ALL PRIVILEGES ON DATABASE uwithme TO uwithme_user;