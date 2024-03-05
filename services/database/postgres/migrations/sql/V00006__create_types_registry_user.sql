CREATE USER types_registry WITH PASSWORD '${types_registry_password}';
GRANT ALL PRIVILEGES ON DATABASE types_registry TO types_registry;
GRANT ALL ON SCHEMA public TO types_registry;