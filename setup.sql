/*
Create the sample databases that are needed for the DLH class 
Introduction to SQL and Postgres


*/



--- DLH2 is an empty database for exercises
DROP DATABASE IF EXISTS dlh2 WITH FORCE;
CREATE DATABASE dlh2;

DROP DATABASE IF EXISTS dlh1 WITH FORCE;
CREATE DATABASE dlh1;
\c dlh1

DROP DATABASE IF EXISTS dlh3 WITH FORCE;
CREATE DATABASE dlh3;
\c dlh3

