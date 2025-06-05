--3
--Consulta con joins
DECLARE
    v_nom_emp employees.first_name%TYPE;
    v_nom_jefe employees.first_name%TYPE;
BEGIN
    SELECT e.first_name, m.first_name
    INTO v_nom_emp, v_nom_jefe
    FROM employees e
    JOIN employees m ON e.manager_id = m.employee_id
    WHERE e.employee_id = 123;
    
    dbms_output.put_line(v_nom_jefe || ' es el jefe de ' || v_nom_emp);
END;