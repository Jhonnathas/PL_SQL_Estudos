DECLARE 
    v_salary NUMBER(8,2);
BEGIN
    SELECT salary
    INTO v_salary
    FROM oehr_employees
    WHERE employee_id = 101;
    dbms_output.put_line('Selected ['||SQL%ROWCOUNT||']');
    IF SQL%ISOPEN = TRUE THEN
        dbms_output.put_line('aberto');
    ELSE 
        dbms_output.put_line('fechado');
    END IF;
    IF SQL%FOUND = TRUE THEN
        dbms_output.put_line('encontrou');
    ELSE
        dbms_output.put_line('não encontrou');
    END IF;
END;