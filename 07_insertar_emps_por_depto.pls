--7
--Clasificación de empleados en tablas separadas según su departamento

CREATE TABLE emp10 AS
    SELECT employee_id, first_name, job_id, department_id FROM employees WHERE 1=0;
TRUNCATE TABLE emp10;

CREATE TABLE emp20 AS
    SELECT employee_id, first_name, job_id, department_id FROM employees WHERE 1=0;
TRUNCATE TABLE emp20;

CREATE TABLE emp30 AS
    SELECT employee_id, first_name, job_id, department_id FROM employees WHERE 1=0;
TRUNCATE TABLE emp30;

DECLARE
    CURSOR cemp IS
        SELECT *
        FROM employees;
BEGIN
    FOR reg_emp IN cemp LOOP
        IF reg_emp.department_id = 10 THEN
            INSERT INTO emp10 VALUES(reg_emp.employee_id, reg_emp.first_name, reg_emp.job_id, reg_emp.department_id);
        ELSIF reg_emp.department_id = 20 THEN
            INSERT INTO emp20 VALUES(reg_emp.employee_id, reg_emp.first_name, reg_emp.job_id, reg_emp.department_id);
        ELSE
            INSERT INTO emp30 VALUES(reg_emp.employee_id, reg_emp.first_name, reg_emp.job_id, reg_emp.department_id);
        END IF;

        dbms_output.put_line('Registro insertado... ' || reg_emp.employee_id || ' ' || reg_emp.first_name
                || ' ' || reg_emp.job_id || ' ' || reg_emp.department_id);
    END LOOP;
    COMMIT;
END;