CREATE USER schedule WITH PASSWORD '${schedule_password}' NOSUPERUSER;
GRANT ALL PERMISSIONS ON KEYSPACE schedule TO schedule;