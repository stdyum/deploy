CREATE USER auth WITH PASSWORD '${auth_password}';

\c auth;
GRANT ALL PRIVILEGES ON DATABASE auth TO auth;
GRANT ALL ON SCHEMA auth.public TO auth;