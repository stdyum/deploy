CREATE USER studyplaces WITH PASSWORD '${studyplaces_password}';

\c studyplaces;
GRANT ALL PRIVILEGES ON DATABASE studyplaces TO studyplaces;
GRANT ALL ON SCHEMA public TO studyplaces;