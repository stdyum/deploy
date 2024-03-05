CREATE USER studyplaces WITH PASSWORD '${studyplaces_password}';

set search_path = "studyplaces";
GRANT ALL PRIVILEGES ON DATABASE studyplaces TO studyplaces;
GRANT ALL ON SCHEMA public TO studyplaces;