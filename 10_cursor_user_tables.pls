--10
--Consulta con cursor sobre la vista user_tables para listar tablas y sus tablespaces

DECLARE
    CURSOR ctablas IS
        SELECT table_name, tablespace_name
        FROM user_tables;
BEGIN
    FOR reg_tablas IN ctablas LOOP
        DBMS_OUTPUT.PUT_LINE(reg_tablas.table_name || ' ' || reg_tablas.tablespace_name);
    END LOOP;
END;