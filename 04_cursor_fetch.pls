--4
--Uso de cursores con la instrucción fetch
DECLARE
    CURSOR cemp IS
        SELECT * FROM employees;
        
    reg_emp employees%ROWTYPE;
    c NUMBER := 0;
BEGIN
    OPEN cemp;
    LOOP
        FETCH cemp INTO reg_emp;
        EXIT WHEN cemp%NOTFOUND;
        c := c + 1;
        dbms_output.put_line(c || ' ' || reg_emp.employee_id || ' ' || reg_emp.first_name || ' ' || reg_emp.job_id);
    END LOOP;
    CLOSE cemp;
END;