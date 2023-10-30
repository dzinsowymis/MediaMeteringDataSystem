create or replace PACKAGE BODY pkg_meter_reading IS

    PROCEDURE add_reading_e_prod IS

        v_random_e_prod             elec_prod.power_kwh%TYPE := dbms_random.value(0, 2000);
        v_current_elec_prod_reading elec_prod.meter_reading_kwh%TYPE;
    BEGIN
        BEGIN
            SELECT
                meter_reading_kwh
            INTO v_current_elec_prod_reading
            FROM
                elec_prod
            ORDER BY
                date_measurement DESC
            FETCH FIRST 1 ROW ONLY;

        EXCEPTION
            WHEN no_data_found THEN
                v_current_elec_prod_reading := 0;
        END;

        dbms_output.put_line(v_current_elec_prod_reading);
        INSERT INTO elec_prod (
            id_meter,
            date_measurement,
            meter_reading_kwh,
            power_kwh
        ) VALUES (
            11,
            sysdate,
            v_current_elec_prod_reading + v_random_e_prod / 12,
            v_random_e_prod
        );

    END add_reading_e_prod;

    PROCEDURE add_reading_e_social IS

        v_random_e_social             elec_social.power_kwh%TYPE := dbms_random.value(0, 2000);
        v_current_elec_social_reading elec_social.meter_reading_kwh%TYPE;
    BEGIN
        BEGIN
            SELECT
                meter_reading_kwh
            INTO v_current_elec_social_reading
            FROM
                elec_social
            ORDER BY
                date_measurement DESC
            FETCH FIRST 1 ROW ONLY;

        EXCEPTION
            WHEN no_data_found THEN
                v_current_elec_social_reading := 0;
        END;

        dbms_output.put_line(v_current_elec_social_reading);
        INSERT INTO elec_social (
            id_meter,
            date_measurement,
            meter_reading_kwh,
            power_kwh
        ) VALUES (
            131,
            sysdate,
            v_current_elec_social_reading + v_random_e_social / 12,
            v_random_e_social
        );



    END add_reading_e_social;


    PROCEDURE add_reading_g_prod is
        v_random_g_prod             gas_prod.meter_reading_m3%TYPE := dbms_random.value(0, 2000);
        v_current_gas_prod_reading  gas_prod.meter_reading_m3%TYPE;


    BEGIN
        BEGIN
            SELECT
                meter_reading_m3
            INTO v_current_gas_prod_reading
            FROM
                gas_prod
            ORDER BY
                date_measurement DESC
            FETCH FIRST 1 ROW ONLY;

        EXCEPTION
            WHEN no_data_found THEN
                v_current_gas_prod_reading := 0;
        END;

        dbms_output.put_line(v_current_gas_prod_reading);
        INSERT INTO gas_prod (
            id_meter,
            date_measurement,
            meter_reading_m3
        ) 
        VALUES (
            132,
            sysdate,
            v_current_gas_prod_reading+ v_random_g_prod
        );

    end add_reading_g_prod;

    PROCEDURE add_reading_g_social is
        v_random_g_social             gas_social.meter_reading_m3%TYPE := dbms_random.value(0, 2000);
        v_current_gas_social_reading  gas_social.meter_reading_m3%TYPE;


    BEGIN
        BEGIN
            SELECT
                meter_reading_m3
            INTO v_current_gas_social_reading
            FROM
                gas_social
            ORDER BY
                date_measurement DESC
            FETCH FIRST 1 ROW ONLY;

        EXCEPTION
            WHEN no_data_found THEN
                v_current_gas_social_reading := 0;
        END;

        dbms_output.put_line(v_current_gas_social_reading);
        INSERT INTO gas_social (
            id_meter,
            date_measurement,
            meter_reading_m3
        ) 
        VALUES (
            133,
            sysdate,
            v_current_gas_social_reading + v_random_g_social
        );

    end add_reading_g_social;



     PROCEDURE add_reading_w_prod is
        v_random_w_prod                 water_prod.meter_reading_m3%TYPE := dbms_random.value(0, 2000);
        v_current_water_prod_reading    water_prod.meter_reading_m3%TYPE;


    BEGIN
        BEGIN
            SELECT
                meter_reading_m3
            INTO v_current_water_prod_reading
            FROM
                water_prod
            ORDER BY
                date_measurement DESC
            FETCH FIRST 1 ROW ONLY;

        EXCEPTION
            WHEN no_data_found THEN
                v_current_water_prod_reading := 0;
        END;

        dbms_output.put_line(v_current_water_prod_reading);
        INSERT INTO water_prod (
            id_meter,
            date_measurement,
            meter_reading_m3
        ) 
        VALUES (
            134,
            sysdate,
            v_current_water_prod_reading+ v_random_w_prod
        );

    end add_reading_w_prod;

  PROCEDURE add_reading_w_social is
        v_random_w_social                 water_social.meter_reading_m3%TYPE := dbms_random.value(0, 2000);
        v_current_water_social_reading    water_social.meter_reading_m3%TYPE;


    BEGIN
        BEGIN
            SELECT
                meter_reading_m3
            INTO v_current_water_social_reading
            FROM
                water_social
            ORDER BY
                date_measurement DESC
            FETCH FIRST 1 ROW ONLY;

        EXCEPTION
            WHEN no_data_found THEN
                v_current_water_social_reading := 0;
        END;

        dbms_output.put_line(v_current_water_social_reading);
        INSERT INTO water_social (
            id_meter,
            date_measurement,
            meter_reading_m3
        ) 
        VALUES (
            135,
            sysdate,
            v_current_water_social_reading+ v_random_w_social
        );

    end add_reading_w_social;

END pkg_meter_reading;