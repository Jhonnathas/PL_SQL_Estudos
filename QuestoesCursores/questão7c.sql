DECLARE 
    CURSOR c1 IS 
        SELECT d.department_name, COUNT(e.department_id) as funcionarios
        FROM oehr_departments d, oehr_employees e
        WHERE d.department_id = e.department_id
        GROUP BY d.department_name
        HAVING COUNT(e.department_id) > 5;
BEGIN
    FOR rec_alocacao IN c1 LOOP
        DBMS_OUTPUT.PUT_LINE('ROWCOUNT'||' '||c1%ROWCOUNT);
        DBMS_OUTPUT.PUT_LINE(rec_alocacao.department_name || ' ' || rec_alocacao.funcionarios || ' ' || 'FUNCIONÁRIOS');
    END LOOP;
END;