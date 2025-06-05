--6
--Uso de cursores con parámetros
DECLARE
    CURSOR cemp(v_job employees.job_id%TYPE)
    IS
        SELECT *
        FROM employees
        WHERE job_id = v_job;
BEGIN
    FOR reg_emp IN cemp('IT_PROG')
    LOOP
        dbms_output.put_line(reg_emp.employee_id || ' ' || reg_emp.first_name || ' ' || reg_emp.job_id);
    END LOOP;
END;