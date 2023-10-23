create or replace package pkg_add_tariffs
IS
        procedure add_e_tariffs ( in_price_for_1KWH IN e_tariffs.price_for_1kwh%TYPE ,in_date_start IN e_tariffs.date_start%TYPE );
		
        procedure add_g_tariffs ( in_price_for_1m3 IN g_tariffs.price_for_1m3%TYPE ,in_date_start IN g_tariffs.date_start%TYPE );
		
        procedure add_w_tariffs (in_price_for_1m3 IN w_tariffs.price_for_1m3%TYPE, in_date_start IN w_tariffs.date_start%TYPE);
		
        ex_wrong_date   EXCEPTION;
        PRAGMA EXCEPTION_INIT (ex_wrong_date , -20001);
		
        ex_last_date    EXCEPTION;
        PRAGMA EXCEPTION_INIT (ex_last_date , -20002);
END pkg_add_tariffs;





create or replace package body pkg_add_tariffs
IS

        procedure add_e_tariffs ( in_price_for_1KwH IN e_tariffs.price_for_1kwh%TYPE ,in_date_start IN e_tariffs.date_start%TYPE ) is v_last_date e_tariffs.date_start%TYPE;
                BEGIN
                        select
                                max(date_start)
                        into
                                v_last_date
                        from
                                e_tariffs;
                        if
                                in_date_start < sysdate
                        THEN
                                RAISE ex_wrong_date;
                        else
                                if
                                        in_date_start < v_last_date
                                THEN
                                        RAISE ex_last_date;
                                END if;
                        end if;

                insert into
                                e_tariffs
                                        (
                                                price_for_1kWh,
                                                date_start
                                        )
                values
                                (
                                        in_price_for_1KWH,
                                        in_date_start
                                )
                ;

        EXCEPTION   	WHEN ex_wrong_date THEN DBMS_OUTPUT.PUT_LINE('The date cannot be earlier than the current date');
			WHEN ex_last_date THEN DBMS_OUTPUT.PUT_LINE('The date cannot be earlier than the last date');

    end add_e_tariffs;



    procedure add_g_tariffs ( in_price_for_1m3 IN g_tariffs.price_for_1m3%TYPE ,in_date_start IN g_tariffs.date_start%TYPE ) is v_last_date g_tariffs.date_start%TYPE;
                BEGIN
                        select
                                max(date_start)
                        into
                                v_last_date
                        from
                                g_tariffs;
                        if
                                in_date_start < sysdate
                        THEN
                                RAISE ex_wrong_date;
                        else
                                if
                                        in_date_start < v_last_date
                                THEN
                                        RAISE ex_last_date;
                                END if;
                        end if;

                insert into
                                g_tariffs
                                        (
                                                price_for_1m3,
                                                date_start
                                        )
                values
                                (
                                        in_price_for_1m3,
                                        in_date_start
                                )
                ;

        EXCEPTION   	WHEN ex_wrong_date THEN DBMS_OUTPUT.PUT_LINE('The date cannot be earlier than the current date');
			WHEN ex_last_date THEN DBMS_OUTPUT.PUT_LINE('The date cannot be earlier than the last date');           

    end add_g_tariffs;   


procedure add_w_tariffs ( in_price_for_1m3 IN w_tariffs.price_for_1m3%TYPE ,in_date_start IN w_tariffs.date_start%TYPE ) is v_last_date w_tariffs.date_start%TYPE;
                BEGIN
                        select
                                max(date_start)
                        into
                                v_last_date
                        from
                                w_tariffs;
                        if
                                in_date_start < sysdate
                        THEN
                                RAISE ex_wrong_date;
                        else
                                if
                                        in_date_start < v_last_date
                                THEN
                                        RAISE ex_last_date;
                                END if;
                        end if;

                insert into
                                w_tariffs
                                        (
                                                price_for_1m3,
                                                date_start
                                        )
                values
                                (
                                        in_price_for_1m3,
                                        in_date_start
                                )
                ;

        EXCEPTION   	WHEN ex_wrong_date THEN DBMS_OUTPUT.PUT_LINE('The date cannot be earlier than the current date');
			WHEN ex_last_date THEN DBMS_OUTPUT.PUT_LINE('The date cannot be earlier than the last date');           

    end add_w_tariffs;



end pkg_add_tariffs;