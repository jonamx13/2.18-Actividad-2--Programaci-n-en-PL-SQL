--1
-- Mostrar la información de un empleado con ID 100 (ID, nombre y puesto)
DECLARE
    v_empno EMPLOYEES.EMPLOYEE_ID%TYPE;
    v_ename EMPLOYEES.FIRST_NAME%TYPE;
    v_job   EMPLOYEES.JOB_ID%TYPE;
BEGIN
    SELECT EMPLOYEE_ID, FIRST_NAME, JOB_ID
    INTO v_empno, v_ename, v_job
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = 100;

    DBMS_OUTPUT.PUT_LINE(v_empno || ' ' || v_ename || ' ' || v_job);
END;