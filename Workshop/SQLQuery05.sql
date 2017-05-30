-- 05. Make the column Name in Cities Unique
USE NORTHWND
ALTER TABLE Cities
ADD CONSTRAINT Uq_Name UNIQUE (Name)