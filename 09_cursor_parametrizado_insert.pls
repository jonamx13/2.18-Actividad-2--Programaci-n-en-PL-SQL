--9
--Uso de cursor parametrizado para insert
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
    CURSOR cemp(v_deptno employees.department_id%TYPE)
    IS
        SELECT employee_id, first_name, job_id, department_id
        FROM employees
        WHERE department_id = v_deptno;
BEGIN
    FOR reg_emp IN cemp(10)
    LOOP
        INSERT INTO emp10 VALUES (reg_emp.employee_id, reg_emp.first_name, reg_emp.job_id, reg_emp.department_id);
        DBMS_OUTPUT.PUT_LINE('Registro insertado... ' || reg_emp.employee_id || ' ' || reg_emp.first_name || ' ' || reg_emp.department_id);
    END LOOP;

    FOR reg_emp IN cemp(20)
    LOOP
        INSERT INTO emp20 VALUES (reg_emp.employee_id, reg_emp.first_name, reg_emp.job_id, reg_emp.department_id);
        DBMS_OUTPUT.PUT_LINE('Registro insertado... ' || reg_emp.employee_id || ' ' || reg_emp.first_name || ' ' || reg_emp.department_id);
    END LOOP;

    FOR reg_emp IN cemp(30)
    LOOP
        INSERT INTO emp30 VALUES (reg_emp.employee_id, reg_emp.first_name, reg_emp.job_id, reg_emp.department_id);
        dbms_output.put_line('Registro insertado... ' || reg_emp.employee_id || ' ' || reg_emp.first_name || ' ' || reg_emp.department_id);
    END LOOP;

    COMMIT;
END;