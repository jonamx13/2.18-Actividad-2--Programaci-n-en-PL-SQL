--11
--Incrementar el salario de los empleados de acuerdo al siguiente criterio
---2% al departamento 10
---3% al departamento 20
---4% al departamento 30

DECLARE
BEGIN
    UPDATE employees SET salary = salary * 1.02 WHERE department_id = 10;
    DBMS_OUTPUT.PUT_LINE('No. de registros procesados del Deptno 10: ' || SQL%ROWCOUNT);

    UPDATE employees SET salary = salary * 1.03 WHERE department_id = 20;
    DBMS_OUTPUT.PUT_LINE('No. de registros procesados del Deptno 20: ' || SQL%ROWCOUNT);

    UPDATE employees SET salary = salary * 1.04 WHERE department_id = 30;
    DBMS_OUTPUT.PUT_LINE('No. de registros procesados del Deptno 30: ' || SQL%ROWCOUNT);

    COMMIT;
END;