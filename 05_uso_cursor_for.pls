--5
--Uso de cursores con la instrucción for
DECLARE
    CURSOR cemp IS
        SELECT *
        FROM employees;

    c NUMBER := 0;
BEGIN
    FOR reg_emp IN cemp
    LOOP
        c := c + 1;
        dbms_output.put_line(c || ' ' || reg_emp.employee_id || ' ' || reg_emp.first_name || ' ' || reg_emp.job_id);
    END LOOP;
END;