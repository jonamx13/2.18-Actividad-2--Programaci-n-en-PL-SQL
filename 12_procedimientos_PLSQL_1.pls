--12
--Uso de procedimientos en PL/SQL para mostrar los subordinados de un gerente

DECLARE
    PROCEDURE psub(v_mgr employees.manager_id%TYPE)
    IS
        CURSOR csub(cmgr employees.manager_id%TYPE)
        IS
            SELECT employee_id, first_name
            FROM employees
            WHERE manager_id = cmgr;

        v_ename employees.first_name%TYPE;
    BEGIN
        SELECT first_name
        INTO v_ename
        FROM employees
        WHERE employee_id = v_mgr;

        DBMS_OUTPUT.PUT_LINE('Los subordinados de ' || v_mgr || ' ' || v_ename || ' son:');

        FOR reg_emp IN csub(v_mgr)
        LOOP
            DBMS_OUTPUT.PUT_LINE(reg_emp.employee_id || ' ' || reg_emp.first_name);
        END LOOP;
    END;

BEGIN
    psub(100);
END;