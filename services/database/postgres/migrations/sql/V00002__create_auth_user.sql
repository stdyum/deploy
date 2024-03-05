CREATE USER auth WITH PASSWORD '${auth_password}';

set search_path = "auth";
GRANT ALL PRIVILEGES ON DATABASE auth TO auth;
GRANT ALL ON SCHEMA public TO auth;