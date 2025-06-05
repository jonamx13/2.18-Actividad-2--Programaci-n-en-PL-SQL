--2
--Consulta con registros tipo ROWTYPE
DECLARE
    reg_emp employees%ROWTYPE;
BEGIN
    SELECT *
    INTO reg_emp
    FROM employees WHERE employee_id = 151;

    dbms_output.put_line(reg_emp.employee_id || ' ' || reg_emp.first_name || ' ' || reg_emp.job_id);
END;