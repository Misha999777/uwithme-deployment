CREATE USER testsystem_user;
ALTER USER testsystem_user WITH PASSWORD 'password';
CREATE DATABASE testsystem;
GRANT ALL PRIVILEGES ON DATABASE testsystem TO testsystem_user;