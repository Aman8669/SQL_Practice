select * from custumer;

-- change name to employee_name of the column
ALTER TABLE CUSTUMER
rename name to employee_name;

-- check age is greater than 18
ALTER TABLE custumer
ADD CONSTRAINT age CHECK (age>=18);

-- change constraints to the age column
ALTER TABLE custumer
ALTER COLUMN age TYPE SMALLINT;



