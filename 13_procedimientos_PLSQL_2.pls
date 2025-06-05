--13
--Uso de procedimientos en PL/SQL para obtener el nombre del jefe de un empleado

DECLARE
    PROCEDURE pmgr(v_emp_id employees.employee_id%TYPE)
    IS
        CURSOR cmgr(cemp_id employees.employee_id%TYPE)
        IS
            SELECT a.first_name AS empleado_nombre, a.manager_id, b.first_name AS jefe_nombre
            FROM employees a
            JOIN employees b ON a.manager_id = b.employee_id
            WHERE a.employee_id = cemp_id;
    BEGIN
        FOR reg_emp IN cmgr(v_emp_id)
        LOOP
            DBMS_OUTPUT.PUT_LINE('El jefe de ' || v_emp_id || ' ' || reg_emp.empleado_nombre ||
                                 ' es ' || reg_emp.manager_id || ' ' || reg_emp.jefe_nombre);
        END LOOP;
    END;

BEGIN
    pmgr(101);
END;