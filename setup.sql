/*
Create the sample databases that are needed for the DLH class 
Introduction to SQL and Postgres
Last updated 2026-01-12
*/

-- dlh1 is an empty database that will be used to set up the muyuser, myproduct, myorder tables
DROP DATABASE IF EXISTS dlh1 WITH (FORCE);
CREATE DATABASE dlh1;


--- DLH2 is an empty database for exercises
DROP DATABASE IF EXISTS dlh2 WITH (FORCE);
CREATE DATABASE dlh2;


DROP DATABASE IF EXISTS dlh3 WITH (FORCE);
CREATE DATABASE dlh3;

\c dlh3

\i 'dlh3_data_set.sql'

