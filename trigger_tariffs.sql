CREATE OR REPLACE TRIGGER bi_elec_prod BEFORE
    INSERT ON elec_prod
    FOR EACH ROW
DECLARE
    v_id_tariff e_tariffs.id_tariff%TYPE;
BEGIN
    SELECT
        id_tariff
    INTO v_id_tariff
    FROM
        e_tariffs
    WHERE
        :new.date_measurement >= date_start
    ORDER BY
        date_start
    FETCH FIRST 1 ROW ONLY;

    :new.id_tariff := v_id_tariff;

EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('No tariff has been specified for the date entered');
END bi_elec_prod;

=======================================================


create or replace TRIGGER bi_elec_social BEFORE
    INSERT ON elec_social
    FOR EACH ROW
DECLARE
    v_id_tariff e_tariffs.id_tariff%TYPE;
BEGIN
    SELECT
        id_tariff
    INTO v_id_tariff
    FROM
        e_tariffs
    WHERE
        :new.date_measurement >= date_start
    ORDER BY
        date_start
    FETCH FIRST 1 ROW ONLY;

    :new.id_tariff := v_id_tariff;

EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('No tariff has been specified for the date entered');
END bi_elec_social;


=======================================================


create or replace TRIGGER bi_gas_prod BEFORE
    INSERT ON gas_prod
    FOR EACH ROW
DECLARE
    v_id_tariff g_tariffs.id_tariff%TYPE;
BEGIN
    SELECT
        id_tariff
    INTO v_id_tariff
    FROM
        g_tariffs
    WHERE
        :new.date_measurement >= date_start
    ORDER BY
        date_start
    FETCH FIRST 1 ROW ONLY;

    :new.id_tariff := v_id_tariff;

EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('No tariff has been specified for the date entered');
END bi_gas_prod_elec_prod;



=======================================================

create or replace TRIGGER bi_gas_social BEFORE
    INSERT ON gas_social
    FOR EACH ROW
DECLARE
    v_id_tariff g_tariffs.id_tariff%TYPE;
BEGIN
    SELECT
        id_tariff
    INTO v_id_tariff
    FROM
        g_tariffs
    WHERE
        :new.date_measurement >= date_start
    ORDER BY
        date_start
    FETCH FIRST 1 ROW ONLY;

    :new.id_tariffs := v_id_tariff;

EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('No tariff has been specified for the date entered');
END bi_gas_social;



=======================================================


create or replace TRIGGER bi_water_prod BEFORE
    INSERT ON water_prod
    FOR EACH ROW
DECLARE
    v_id_tariff g_tariffs.id_tariff%TYPE;
BEGIN
    SELECT
        id_tariff
    INTO v_id_tariff
    FROM
        w_tariffs
    WHERE
        :new.date_measurement >= date_start
    ORDER BY
        date_start
    FETCH FIRST 1 ROW ONLY;

    :new.id_tariffs := v_id_tariff;

EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('No tariff has been specified for the date entered');
END bi_water_prod;




=======================================================


create or replace TRIGGER bi_water_social BEFORE
    INSERT ON water_social
    FOR EACH ROW
DECLARE
    v_id_tariff g_tariffs.id_tariff%TYPE;
BEGIN
    SELECT
        id_tariff
    INTO v_id_tariff
    FROM
        w_tariffs
    WHERE
        :new.date_measurement >= date_start
    ORDER BY
        date_start
    FETCH FIRST 1 ROW ONLY;

    :new.id_tariff := v_id_tariff;

EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('No tariff has been specified for the date entered');
END bi_water_social;




